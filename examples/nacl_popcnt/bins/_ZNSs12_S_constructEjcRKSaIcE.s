  .text
  .globl _ZNSs12_S_constructEjcRKSaIcE
  .type _ZNSs12_S_constructEjcRKSaIcE, @function

#! file-offset 0x47b00
#! rip-offset  0x47b00
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs12_S_constructEjcRKSaIcE:          #        0x47b00  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x47b00  5      
  movq %r12, -0x18(%rsp)                 #  2     0x47b05  5      
  movl $0x10031dac, %r12d                #  3     0x47b0a  6      
  movq %r13, -0x10(%rsp)                 #  4     0x47b10  5      
  movq %r14, -0x8(%rsp)                  #  5     0x47b15  5      
  subl $0x38, %esp                       #  6     0x47b1a  3      
  addq %r15, %rsp                        #  7     0x47b1d  3      
  testl %edi, %edi                       #  8     0x47b20  2      
  movl %edi, %ebx                        #  9     0x47b22  2      
  movl %esi, %r13d                       #  10    0x47b24  3      
  movl %edx, %edx                        #  11    0x47b27  2      
  movl %r12d, %r12d                      #  12    0x47b29  3      
  je .L_47b80                            #  13    0x47b2c  6      
  xorl %esi, %esi                        #  14    0x47b32  2      
  movb %r13b, 0x8(%rsp)                  #  15    0x47b34  5      
  nop                                    #  16    0x47b39  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  17    0x47b3a  5      
  cmpl $0x1, %ebx                        #  18    0x47b3f  3      
  movl %eax, %r14d                       #  19    0x47b42  3      
  movzbl 0x8(%rsp), %ecx                 #  20    0x47b45  5      
  leal 0xc(%r14), %r12d                  #  21    0x47b4a  4      
  je .L_47bc0                            #  22    0x47b4e  6      
  movsbl %cl, %esi                       #  23    0x47b54  3      
  movl %ebx, %edx                        #  24    0x47b57  2      
  movl %r12d, %edi                       #  25    0x47b59  3      
  xchgw %ax, %ax                         #  26    0x47b5c  3      
  callq .memset                          #  27    0x47b5f  5      
.L_47b60:                                #        0x47b64  0      
  movl %r14d, %r14d                      #  28    0x47b64  3      
  movl %ebx, (%r15,%r14,1)               #  29    0x47b67  4      
  addl %r12d, %ebx                       #  30    0x47b6b  3      
  movl %r14d, %r14d                      #  31    0x47b6e  3      
  movl $0x0, 0x8(%r15,%r14,1)            #  32    0x47b71  9      
  movl %ebx, %ebx                        #  33    0x47b7a  2      
  movb $0x0, (%r15,%rbx,1)               #  34    0x47b7c  5      
  nop                                    #  35    0x47b81  1      
.L_47b80:                                #        0x47b82  0      
  movl %r12d, %eax                       #  36    0x47b82  3      
  movq 0x18(%rsp), %rbx                  #  37    0x47b85  5      
  movq 0x20(%rsp), %r12                  #  38    0x47b8a  5      
  movq 0x28(%rsp), %r13                  #  39    0x47b8f  5      
  movq 0x30(%rsp), %r14                  #  40    0x47b94  5      
  addl $0x38, %esp                       #  41    0x47b99  3      
  addq %r15, %rsp                        #  42    0x47b9c  3      
  popq %r11                              #  43    0x47b9f  3      
  nop                                    #  44    0x47ba2  1      
  andl $0xffffffe0, %r11d                #  45    0x47ba3  7      
  addq %r15, %r11                        #  46    0x47baa  3      
  jmpq %r11                              #  47    0x47bad  3      
  nop                                    #  48    0x47bb0  1      
  nop                                    #  49    0x47bb1  1      
.L_47bc0:                                #        0x47bb2  0      
  movl %r12d, %r12d                      #  50    0x47bb2  3      
  movb %r13b, (%r15,%r12,1)              #  51    0x47bb5  4      
  jmpq .L_47b60                          #  52    0x47bb9  5      
  nop                                    #  53    0x47bbe  1      
  nop                                    #  54    0x47bbf  1      
  nop                                    #  55    0x47bc0  1      
  nop                                    #  56    0x47bc1  1      
  nop                                    #  57    0x47bc2  1      
  nop                                    #  58    0x47bc3  1      
  nop                                    #  59    0x47bc4  1      
  nop                                    #  60    0x47bc5  1      
  nop                                    #  61    0x47bc6  1      
  nop                                    #  62    0x47bc7  1      
  nop                                    #  63    0x47bc8  1      
  nop                                    #  64    0x47bc9  1      
  nop                                    #  65    0x47bca  1      
  nop                                    #  66    0x47bcb  1      
  nop                                    #  67    0x47bcc  1      
  nop                                    #  68    0x47bcd  1      
  nop                                    #  69    0x47bce  1      
  nop                                    #  70    0x47bcf  1      
  nop                                    #  71    0x47bd0  1      
  nop                                    #  72    0x47bd1  1      
  nop                                    #  73    0x47bd2  1      
  nop                                    #  74    0x47bd3  1      
  nop                                    #  75    0x47bd4  1      
                                                                  
.size _ZNSs12_S_constructEjcRKSaIcE, .-_ZNSs12_S_constructEjcRKSaIcE
