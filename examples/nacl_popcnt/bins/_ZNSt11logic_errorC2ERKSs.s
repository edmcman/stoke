  .text
  .globl _ZNSt11logic_errorC2ERKSs
  .type _ZNSt11logic_errorC2ERKSs, @function

#! file-offset 0x4e7a0
#! rip-offset  0x4e7a0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt11logic_errorC2ERKSs:        #        0x4e7a0  0      
  pushq %rbx                       #  1     0x4e7a0  2      
  movl %edi, %ebx                  #  2     0x4e7a2  2      
  movl %esi, %esi                  #  3     0x4e7a4  2      
  leal 0x4(%rbx), %edi             #  4     0x4e7a6  3      
  subl $0x10, %esp                 #  5     0x4e7a9  3      
  addq %r15, %rsp                  #  6     0x4e7ac  3      
  movl %ebx, %ebx                  #  7     0x4e7af  2      
  movl $0x100211b8, (%r15,%rbx,1)  #  8     0x4e7b1  8      
  nop                              #  9     0x4e7b9  1      
  callq ._ZNSsC1ERKSs              #  10    0x4e7ba  5      
  addl $0x10, %esp                 #  11    0x4e7bf  3      
  addq %r15, %rsp                  #  12    0x4e7c2  3      
  popq %rbx                        #  13    0x4e7c5  2      
  popq %r11                        #  14    0x4e7c7  3      
  andl $0xffffffe0, %r11d          #  15    0x4e7ca  7      
  addq %r15, %r11                  #  16    0x4e7d1  3      
  jmpq %r11                        #  17    0x4e7d4  3      
  nop                              #  18    0x4e7d7  1      
  movl %ebx, %edi                  #  19    0x4e7d8  2      
  movl %eax, 0x8(%rsp)             #  20    0x4e7da  4      
  nop                              #  21    0x4e7de  1      
  nop                              #  22    0x4e7df  1      
  callq ._ZNSt9exceptionD2Ev       #  23    0x4e7e0  5      
  movl 0x8(%rsp), %eax             #  24    0x4e7e5  4      
  movl %eax, %edi                  #  25    0x4e7e9  2      
  nop                              #  26    0x4e7eb  1      
  nop                              #  27    0x4e7ec  1      
  callq ._Unwind_Resume            #  28    0x4e7ed  5      
                                                            
.size _ZNSt11logic_errorC2ERKSs, .-_ZNSt11logic_errorC2ERKSs
