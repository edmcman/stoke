  .text
  .globl byte_copy
  .type byte_copy, @function

#! file-offset 0x69f6a
#! rip-offset  0x69f6a
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
.byte_copy:                         #        0x69f6a  0      
  movl %edx, %ecx                   #  1     0x69f6a  2      
  movl %esi, %esi                   #  2     0x69f6c  2      
  leaq (%r15,%rsi,1), %rsi          #  3     0x69f6e  4      
  movl %edi, %edi                   #  4     0x69f72  2      
  leaq (%r15,%rdi,1), %rdi          #  5     0x69f74  4      
  rep movsb %ds:(%rsi), %es:(%rdi)  #  6     0x69f78  3      
  popq %r11                         #  7     0x69f7b  3      
  nop                               #  8     0x69f7e  1      
  andl $0xffffffe0, %r11d           #  9     0x69f7f  7      
  addq %r15, %r11                   #  10    0x69f86  3      
  jmpq %r11                         #  11    0x69f89  3      
                                                             
.size byte_copy, .-byte_copy
