  .text
  .globl _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E
  .type _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E, @function

#! file-offset 0xdf340
#! rip-offset  0x9f340
#! capacity    256 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E:  #        0x9f340  0      OPC=<label>         
  movq %r12, -0x10(%rsp)                                                   #  1     0x9f340  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                         #  2     0x9f345  3      OPC=movl_r32_r32    
  movq %r13, -0x8(%rsp)                                                    #  3     0x9f348  5      OPC=movq_m64_r64    
  movq %rbx, -0x18(%rsp)                                                   #  4     0x9f34d  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                         #  5     0x9f352  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  6     0x9f355  3      OPC=addq_r64_r64    
  movl %r12d, %r12d                                                        #  7     0x9f358  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                                                 #  8     0x9f35b  4      OPC=movl_r32_m32    
  nop                                                                      #  9     0x9f35f  1      OPC=nop             
  movl %esi, %r13d                                                         #  10    0x9f360  3      OPC=movl_r32_r32    
  subl $0xc, %eax                                                          #  11    0x9f363  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                          #  12    0x9f366  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ebx                                                 #  13    0x9f368  4      OPC=movl_r32_m32    
  addl %r12d, %ebx                                                         #  14    0x9f36c  3      OPC=addl_r32_r32    
  movl %ebx, %ebx                                                          #  15    0x9f36f  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x78(%r15,%rbx,1)                                             #  16    0x9f371  6      OPC=cmpb_m8_imm8    
  je .L_9f3c0                                                              #  17    0x9f377  2      OPC=je_label        
  nop                                                                      #  18    0x9f379  1      OPC=nop             
  nop                                                                      #  19    0x9f37a  1      OPC=nop             
  nop                                                                      #  20    0x9f37b  1      OPC=nop             
  nop                                                                      #  21    0x9f37c  1      OPC=nop             
  nop                                                                      #  22    0x9f37d  1      OPC=nop             
  nop                                                                      #  23    0x9f37e  1      OPC=nop             
  nop                                                                      #  24    0x9f37f  1      OPC=nop             
.L_9f380:                                                                  #        0x9f380  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  25    0x9f380  2      OPC=movl_r32_r32    
  movl %r13d, 0x74(%r15,%rbx,1)                                            #  26    0x9f382  5      OPC=movl_m32_r32    
  movl %r12d, %eax                                                         #  27    0x9f387  3      OPC=movl_r32_r32    
  movq (%rsp), %rbx                                                        #  28    0x9f38a  4      OPC=movq_r64_m64    
  movq 0x8(%rsp), %r12                                                     #  29    0x9f38e  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13                                                    #  30    0x9f393  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                         #  31    0x9f398  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  32    0x9f39b  3      OPC=addq_r64_r64    
  popq %r11                                                                #  33    0x9f39e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  34    0x9f3a0  7      OPC=andl_r32_imm32  
  nop                                                                      #  35    0x9f3a7  1      OPC=nop             
  nop                                                                      #  36    0x9f3a8  1      OPC=nop             
  nop                                                                      #  37    0x9f3a9  1      OPC=nop             
  nop                                                                      #  38    0x9f3aa  1      OPC=nop             
  addq %r15, %r11                                                          #  39    0x9f3ab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  40    0x9f3ae  3      OPC=jmpq_r64        
  nop                                                                      #  41    0x9f3b1  1      OPC=nop             
  nop                                                                      #  42    0x9f3b2  1      OPC=nop             
  nop                                                                      #  43    0x9f3b3  1      OPC=nop             
  nop                                                                      #  44    0x9f3b4  1      OPC=nop             
  nop                                                                      #  45    0x9f3b5  1      OPC=nop             
  nop                                                                      #  46    0x9f3b6  1      OPC=nop             
  nop                                                                      #  47    0x9f3b7  1      OPC=nop             
  nop                                                                      #  48    0x9f3b8  1      OPC=nop             
  nop                                                                      #  49    0x9f3b9  1      OPC=nop             
  nop                                                                      #  50    0x9f3ba  1      OPC=nop             
  nop                                                                      #  51    0x9f3bb  1      OPC=nop             
  nop                                                                      #  52    0x9f3bc  1      OPC=nop             
  nop                                                                      #  53    0x9f3bd  1      OPC=nop             
  nop                                                                      #  54    0x9f3be  1      OPC=nop             
  nop                                                                      #  55    0x9f3bf  1      OPC=nop             
  nop                                                                      #  56    0x9f3c0  1      OPC=nop             
  nop                                                                      #  57    0x9f3c1  1      OPC=nop             
  nop                                                                      #  58    0x9f3c2  1      OPC=nop             
  nop                                                                      #  59    0x9f3c3  1      OPC=nop             
  nop                                                                      #  60    0x9f3c4  1      OPC=nop             
  nop                                                                      #  61    0x9f3c5  1      OPC=nop             
  nop                                                                      #  62    0x9f3c6  1      OPC=nop             
.L_9f3c0:                                                                  #        0x9f3c7  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  63    0x9f3c7  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rbx,1), %edi                                             #  64    0x9f3c9  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  65    0x9f3d1  3      OPC=testq_r64_r64   
  je .L_9f420                                                              #  66    0x9f3d4  2      OPC=je_label        
  movl %edi, %edi                                                          #  67    0x9f3d6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                 #  68    0x9f3d8  4      OPC=movl_r32_m32    
  movl $0x20, %esi                                                         #  69    0x9f3dc  5      OPC=movl_r32_imm32  
  nop                                                                      #  70    0x9f3e1  1      OPC=nop             
  nop                                                                      #  71    0x9f3e2  1      OPC=nop             
  nop                                                                      #  72    0x9f3e3  1      OPC=nop             
  nop                                                                      #  73    0x9f3e4  1      OPC=nop             
  nop                                                                      #  74    0x9f3e5  1      OPC=nop             
  nop                                                                      #  75    0x9f3e6  1      OPC=nop             
  movl %eax, %eax                                                          #  76    0x9f3e7  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                             #  77    0x9f3e9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                           #  78    0x9f3ee  2      OPC=xchgw_ax_r16    
  nop                                                                      #  79    0x9f3f0  1      OPC=nop             
  nop                                                                      #  80    0x9f3f1  1      OPC=nop             
  nop                                                                      #  81    0x9f3f2  1      OPC=nop             
  nop                                                                      #  82    0x9f3f3  1      OPC=nop             
  nop                                                                      #  83    0x9f3f4  1      OPC=nop             
  nop                                                                      #  84    0x9f3f5  1      OPC=nop             
  nop                                                                      #  85    0x9f3f6  1      OPC=nop             
  nop                                                                      #  86    0x9f3f7  1      OPC=nop             
  nop                                                                      #  87    0x9f3f8  1      OPC=nop             
  nop                                                                      #  88    0x9f3f9  1      OPC=nop             
  nop                                                                      #  89    0x9f3fa  1      OPC=nop             
  nop                                                                      #  90    0x9f3fb  1      OPC=nop             
  nop                                                                      #  91    0x9f3fc  1      OPC=nop             
  nop                                                                      #  92    0x9f3fd  1      OPC=nop             
  nop                                                                      #  93    0x9f3fe  1      OPC=nop             
  andl $0xffffffe0, %eax                                                   #  94    0x9f3ff  6      OPC=andl_r32_imm32  
  nop                                                                      #  95    0x9f405  1      OPC=nop             
  nop                                                                      #  96    0x9f406  1      OPC=nop             
  nop                                                                      #  97    0x9f407  1      OPC=nop             
  addq %r15, %rax                                                          #  98    0x9f408  3      OPC=addq_r64_r64    
  callq %rax                                                               #  99    0x9f40b  2      OPC=callq_r64       
  movl %ebx, %ebx                                                          #  100   0x9f40d  2      OPC=movl_r32_r32    
  movb $0x1, 0x78(%r15,%rbx,1)                                             #  101   0x9f40f  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                          #  102   0x9f415  2      OPC=movl_r32_r32    
  movl %eax, 0x74(%r15,%rbx,1)                                             #  103   0x9f417  5      OPC=movl_m32_r32    
  jmpq .L_9f380                                                            #  104   0x9f41c  5      OPC=jmpq_label_1    
  nop                                                                      #  105   0x9f421  1      OPC=nop             
  nop                                                                      #  106   0x9f422  1      OPC=nop             
  nop                                                                      #  107   0x9f423  1      OPC=nop             
  nop                                                                      #  108   0x9f424  1      OPC=nop             
  nop                                                                      #  109   0x9f425  1      OPC=nop             
  nop                                                                      #  110   0x9f426  1      OPC=nop             
  nop                                                                      #  111   0x9f427  1      OPC=nop             
  nop                                                                      #  112   0x9f428  1      OPC=nop             
  nop                                                                      #  113   0x9f429  1      OPC=nop             
  nop                                                                      #  114   0x9f42a  1      OPC=nop             
  nop                                                                      #  115   0x9f42b  1      OPC=nop             
  nop                                                                      #  116   0x9f42c  1      OPC=nop             
.L_9f420:                                                                  #        0x9f42d  0      OPC=<label>         
  nop                                                                      #  117   0x9f42d  1      OPC=nop             
  nop                                                                      #  118   0x9f42e  1      OPC=nop             
  nop                                                                      #  119   0x9f42f  1      OPC=nop             
  nop                                                                      #  120   0x9f430  1      OPC=nop             
  nop                                                                      #  121   0x9f431  1      OPC=nop             
  nop                                                                      #  122   0x9f432  1      OPC=nop             
  nop                                                                      #  123   0x9f433  1      OPC=nop             
  nop                                                                      #  124   0x9f434  1      OPC=nop             
  nop                                                                      #  125   0x9f435  1      OPC=nop             
  nop                                                                      #  126   0x9f436  1      OPC=nop             
  nop                                                                      #  127   0x9f437  1      OPC=nop             
  nop                                                                      #  128   0x9f438  1      OPC=nop             
  nop                                                                      #  129   0x9f439  1      OPC=nop             
  nop                                                                      #  130   0x9f43a  1      OPC=nop             
  nop                                                                      #  131   0x9f43b  1      OPC=nop             
  nop                                                                      #  132   0x9f43c  1      OPC=nop             
  nop                                                                      #  133   0x9f43d  1      OPC=nop             
  nop                                                                      #  134   0x9f43e  1      OPC=nop             
  nop                                                                      #  135   0x9f43f  1      OPC=nop             
  nop                                                                      #  136   0x9f440  1      OPC=nop             
  nop                                                                      #  137   0x9f441  1      OPC=nop             
  nop                                                                      #  138   0x9f442  1      OPC=nop             
  nop                                                                      #  139   0x9f443  1      OPC=nop             
  nop                                                                      #  140   0x9f444  1      OPC=nop             
  nop                                                                      #  141   0x9f445  1      OPC=nop             
  nop                                                                      #  142   0x9f446  1      OPC=nop             
  nop                                                                      #  143   0x9f447  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                                           #  144   0x9f448  5      OPC=callq_label     
                                                                                                                        
.size _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E, .-_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E
