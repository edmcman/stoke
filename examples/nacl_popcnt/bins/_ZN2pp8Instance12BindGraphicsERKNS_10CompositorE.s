  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE, @function

#! file-offset 0x22d00
#! rip-offset  0x22d00
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10CompositorE:  #        0x22d00  0      
  pushq %r12                                        #  1     0x22d00  3      
  movl %edi, %r12d                                  #  2     0x22d03  3      
  pushq %rbx                                        #  3     0x22d06  2      
  movl %esi, %ebx                                   #  4     0x22d08  2      
  subl $0x8, %esp                                   #  5     0x22d0a  3      
  addq %r15, %rsp                                   #  6     0x22d0d  3      
  cmpb $0x0, 0x1000df31(%rip)                       #  7     0x22d10  7      
  je .L_22d60                                       #  8     0x22d17  6      
  nop                                               #  9     0x22d1d  1      
.L_22d20:                                           #        0x22d1e  0      
  movl 0x1000df2c(%rip), %edx                       #  10    0x22d1e  6      
  xorl %eax, %eax                                   #  11    0x22d24  2      
  testq %rdx, %rdx                                  #  12    0x22d26  3      
  jne .L_22e00                                      #  13    0x22d29  6      
  nop                                               #  14    0x22d2f  1      
.L_22d40:                                           #        0x22d30  0      
  addl $0x8, %esp                                   #  15    0x22d30  3      
  addq %r15, %rsp                                   #  16    0x22d33  3      
  popq %rbx                                         #  17    0x22d36  2      
  popq %r12                                         #  18    0x22d38  3      
  popq %r11                                         #  19    0x22d3b  3      
  andl $0xffffffe0, %r11d                           #  20    0x22d3e  7      
  addq %r15, %r11                                   #  21    0x22d45  3      
  jmpq %r11                                         #  22    0x22d48  3      
  nop                                               #  23    0x22d4b  1      
.L_22d60:                                           #        0x22d4c  0      
  movl $0x10030c48, %edi                            #  24    0x22d4c  5      
  nop                                               #  25    0x22d51  1      
  nop                                               #  26    0x22d52  1      
  callq .__cxa_guard_acquire                        #  27    0x22d53  5      
  testl %eax, %eax                                  #  28    0x22d58  2      
  je .L_22d20                                       #  29    0x22d5a  6      
  nop                                               #  30    0x22d60  1      
  nop                                               #  31    0x22d61  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x22d62  5      
  movl %eax, %edi                                   #  33    0x22d67  2      
  movl $0x100202ed, %esi                            #  34    0x22d69  5      
  nop                                               #  35    0x22d6e  1      
  nop                                               #  36    0x22d6f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x22d70  5      
  movl $0x10030c48, %edi                            #  38    0x22d75  5      
  movl %eax, 0x1000ded0(%rip)                       #  39    0x22d7a  6      
  nop                                               #  40    0x22d80  1      
  nop                                               #  41    0x22d81  1      
  callq .__cxa_guard_release                        #  42    0x22d82  5      
  movl 0x1000dec3(%rip), %edx                       #  43    0x22d87  6      
  xorl %eax, %eax                                   #  44    0x22d8d  2      
  testq %rdx, %rdx                                  #  45    0x22d8f  3      
  je .L_22d40                                       #  46    0x22d92  6      
  nop                                               #  47    0x22d98  1      
.L_22e00:                                           #        0x22d99  0      
  cmpb $0x0, 0x1000dea8(%rip)                       #  48    0x22d99  7      
  je .L_22e60                                       #  49    0x22da0  6      
  nop                                               #  50    0x22da6  1      
  nop                                               #  51    0x22da7  1      
.L_22e20:                                           #        0x22da8  0      
  movl %edx, %edx                                   #  52    0x22da8  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x22daa  4      
  movl %ebx, %ebx                                   #  54    0x22dae  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x22db0  5      
  movl %r12d, %r12d                                 #  56    0x22db5  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x22db8  5      
  nop                                               #  58    0x22dbd  1      
  andl $0xffffffe0, %eax                            #  59    0x22dbe  5      
  addq %r15, %rax                                   #  60    0x22dc3  3      
  callq %rax                                        #  61    0x22dc6  2      
  testl %eax, %eax                                  #  62    0x22dc8  2      
  setne %al                                         #  63    0x22dca  3      
  addl $0x8, %esp                                   #  64    0x22dcd  3      
  addq %r15, %rsp                                   #  65    0x22dd0  3      
  popq %rbx                                         #  66    0x22dd3  2      
  popq %r12                                         #  67    0x22dd5  3      
  popq %r11                                         #  68    0x22dd8  3      
  andl $0xffffffe0, %r11d                           #  69    0x22ddb  7      
  addq %r15, %r11                                   #  70    0x22de2  3      
  jmpq %r11                                         #  71    0x22de5  3      
  nop                                               #  72    0x22de8  1      
.L_22e60:                                           #        0x22de9  0      
  movl $0x10030c48, %edi                            #  73    0x22de9  5      
  nop                                               #  74    0x22dee  1      
  nop                                               #  75    0x22def  1      
  callq .__cxa_guard_acquire                        #  76    0x22df0  5      
  testl %eax, %eax                                  #  77    0x22df5  2      
  jne .L_22ec0                                      #  78    0x22df7  6      
  nop                                               #  79    0x22dfd  1      
  nop                                               #  80    0x22dfe  1      
.L_22ea0:                                           #        0x22dff  0      
  movl 0x1000de4b(%rip), %edx                       #  81    0x22dff  6      
  jmpq .L_22e20                                     #  82    0x22e05  5      
  nop                                               #  83    0x22e0a  1      
  nop                                               #  84    0x22e0b  1      
.L_22ec0:                                           #        0x22e0c  0      
  nop                                               #  85    0x22e0c  1      
  nop                                               #  86    0x22e0d  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x22e0e  5      
  movl %eax, %edi                                   #  88    0x22e13  2      
  movl $0x100202ed, %esi                            #  89    0x22e15  5      
  nop                                               #  90    0x22e1a  1      
  nop                                               #  91    0x22e1b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x22e1c  5      
  movl $0x10030c48, %edi                            #  93    0x22e21  5      
  movl %eax, 0x1000de24(%rip)                       #  94    0x22e26  6      
  nop                                               #  95    0x22e2c  1      
  nop                                               #  96    0x22e2d  1      
  callq .__cxa_guard_release                        #  97    0x22e2e  5      
  jmpq .L_22ea0                                     #  98    0x22e33  5      
  nop                                               #  99    0x22e38  1      
  nop                                               #  100   0x22e39  1      
.L_22f40:                                           #        0x22e3a  0      
  movl %eax, %ebx                                   #  101   0x22e3a  2      
  movl $0x10030c48, %edi                            #  102   0x22e3c  5      
  nop                                               #  103   0x22e41  1      
  nop                                               #  104   0x22e42  1      
  callq .__cxa_guard_abort                          #  105   0x22e43  5      
  movl %ebx, %edi                                   #  106   0x22e48  2      
  nop                                               #  107   0x22e4a  1      
  nop                                               #  108   0x22e4b  1      
  callq ._Unwind_Resume                             #  109   0x22e4c  5      
  jmpq .L_22f40                                     #  110   0x22e51  5      
  nop                                               #  111   0x22e56  1      
  nop                                               #  112   0x22e57  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE, .-_ZN2pp8Instance12BindGraphicsERKNS_10CompositorE
