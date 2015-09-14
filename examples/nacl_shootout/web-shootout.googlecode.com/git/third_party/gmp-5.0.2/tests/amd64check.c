// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/* AMD64 calling conventions checking.

Copyright 2000, 2001, 2004, 2007 Free Software Foundation, Inc.

This file is part of the GNU MP Library.

The GNU MP Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at your
option) any later version.

The GNU MP Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the GNU MP Library.  If not, see http://www.gnu.org/licenses/.  */

#include <stdio.h>
#include "gmp.h"
#include "gmp-impl.h"
#include "tests.h"


/* Vector if constants and register values.  We use one vector to allow access
   via a base pointer, very beneficial for the PIC-enabled amd64call.asm.  */
mp_limb_t calling_conventions_values[23] =
{
  CNST_LIMB(0x1234567887654321),	/* want_rbx */
  CNST_LIMB(0x89ABCDEFFEDCBA98),	/* want_rbp */
  CNST_LIMB(0xDEADBEEFBADECAFE),	/* want_r12 */
  CNST_LIMB(0xFFEEDDCCBBAA9988),	/* want_r13 */
  CNST_LIMB(0x0011223344556677),	/* want_r14 */
  CNST_LIMB(0x1234432156788765),	/* want_r15 */

  CNST_LIMB(0xFEEDABBACAAFBEED),	/* JUNK_RAX */
  CNST_LIMB(0xAB78DE89FF5125BB),	/* JUNK_R10 */
  CNST_LIMB(0x1238901890189031)		/* JUNK_R11 */

  /* rest of array used for dynamic values.  */
};

/* Index starts for various regions in above vector.  */
#define WANT	0
#define JUNK	6
#define SAVE	9
#define RETADDR	15
#define VAL	16
#define RFLAGS	22

/* values to check */
struct {
  int  control;
  int  status;
  int  tag;
  int  other[4];
} calling_conventions_fenv;


char *regname[6] = {"rbx", "rbp", "r12", "r13", "r14", "r15"};

#define DIR_BIT(rflags)   (((rflags) & (1<<10)) != 0)


/* Return 1 if ok, 0 if not */

int
calling_conventions_check (void)
{
  const char  *header = "Violated calling conventions:\n";
  int  ret = 1;
  int i;

#define CHECK(callreg, regstr, value)			\
  if (callreg != value)					\
    {							\
      printf ("%s   %s	got 0x%016lX want 0x%016lX\n",	\
	      header, regstr, callreg, value);		\
      header = "";					\
      ret = 0;						\
    }

  for (i = 0; i < 6; i++)
    {
      CHECK (calling_conventions_values[VAL+i], regname[i], calling_conventions_values[WANT+i]);
    }

  if (DIR_BIT (calling_conventions_values[RFLAGS]) != 0)
    {
      printf ("%s   rflags dir bit  got %d want 0\n",
	      header, DIR_BIT (calling_conventions_values[RFLAGS]));
      header = "";
      ret = 0;
    }

  if ((calling_conventions_fenv.tag & 0xFFFF) != 0xFFFF)
    {
      printf ("%s   fpu tags  got 0x%X want 0xFFFF\n",
	      header, calling_conventions_fenv.tag & 0xFFFF);
      header = "";
      ret = 0;
    }

  return ret;
}