  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE6xsgetnEPwi
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE6xsgetnEPwi, @function

#! file-offset 0xdc360
#! rip-offset  0x9c360
#! capacity    256 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE6xsgetnEPwi:  #        0x9c360  0      OPC=<label>         
  pushq %r14                                                         #  1     0x9c360  2      OPC=pushq_r64_1     
  movl %esi, %esi                                                    #  2     0x9c362  2      OPC=movl_r32_r32    
  movl %edx, %r14d                                                   #  3     0x9c364  3      OPC=movl_r32_r32    
  pushq %r13                                                         #  4     0x9c367  2      OPC=pushq_r64_1     
  movl %edi, %r13d                                                   #  5     0x9c369  3      OPC=movl_r32_r32    
  pushq %r12                                                         #  6     0x9c36c  2      OPC=pushq_r64_1     
  pushq %rbx                                                         #  7     0x9c36e  1      OPC=pushq_r64_1     
  subl $0x18, %esp                                                   #  8     0x9c36f  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  9     0x9c372  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                   #  10    0x9c375  2      OPC=testl_r32_r32   
  movq %rsi, 0x8(%rsp)                                               #  11    0x9c377  5      OPC=movq_m64_r64    
  nop                                                                #  12    0x9c37c  1      OPC=nop             
  nop                                                                #  13    0x9c37d  1      OPC=nop             
  nop                                                                #  14    0x9c37e  1      OPC=nop             
  nop                                                                #  15    0x9c37f  1      OPC=nop             
  je .L_9c400                                                        #  16    0x9c380  2      OPC=je_label        
  movl 0x8(%rsp), %r12d                                              #  17    0x9c382  5      OPC=movl_r32_m32    
  xorl %ebx, %ebx                                                    #  18    0x9c387  2      OPC=xorl_r32_r32    
  jmpq .L_9c3c0                                                      #  19    0x9c389  2      OPC=jmpq_label      
  nop                                                                #  20    0x9c38b  1      OPC=nop             
  nop                                                                #  21    0x9c38c  1      OPC=nop             
  nop                                                                #  22    0x9c38d  1      OPC=nop             
  nop                                                                #  23    0x9c38e  1      OPC=nop             
  nop                                                                #  24    0x9c38f  1      OPC=nop             
  nop                                                                #  25    0x9c390  1      OPC=nop             
  nop                                                                #  26    0x9c391  1      OPC=nop             
  nop                                                                #  27    0x9c392  1      OPC=nop             
  nop                                                                #  28    0x9c393  1      OPC=nop             
  nop                                                                #  29    0x9c394  1      OPC=nop             
  nop                                                                #  30    0x9c395  1      OPC=nop             
  nop                                                                #  31    0x9c396  1      OPC=nop             
  nop                                                                #  32    0x9c397  1      OPC=nop             
  nop                                                                #  33    0x9c398  1      OPC=nop             
  nop                                                                #  34    0x9c399  1      OPC=nop             
  nop                                                                #  35    0x9c39a  1      OPC=nop             
  nop                                                                #  36    0x9c39b  1      OPC=nop             
  nop                                                                #  37    0x9c39c  1      OPC=nop             
  nop                                                                #  38    0x9c39d  1      OPC=nop             
  nop                                                                #  39    0x9c39e  1      OPC=nop             
  nop                                                                #  40    0x9c39f  1      OPC=nop             
.L_9c3a0:                                                            #        0x9c3a0  0      OPC=<label>         
  addl $0x1, %ebx                                                    #  41    0x9c3a0  3      OPC=addl_r32_imm8   
  movl %r12d, %edx                                                   #  42    0x9c3a3  3      OPC=movl_r32_r32    
  addl $0x4, %r12d                                                   #  43    0x9c3a6  4      OPC=addl_r32_imm8   
  cmpl %ebx, %r14d                                                   #  44    0x9c3aa  3      OPC=cmpl_r32_r32    
  movl %edx, %edx                                                    #  45    0x9c3ad  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                           #  46    0x9c3af  4      OPC=movl_m32_r32    
  je .L_9c420                                                        #  47    0x9c3b3  2      OPC=je_label        
  nop                                                                #  48    0x9c3b5  1      OPC=nop             
  nop                                                                #  49    0x9c3b6  1      OPC=nop             
  nop                                                                #  50    0x9c3b7  1      OPC=nop             
  nop                                                                #  51    0x9c3b8  1      OPC=nop             
  nop                                                                #  52    0x9c3b9  1      OPC=nop             
  nop                                                                #  53    0x9c3ba  1      OPC=nop             
  nop                                                                #  54    0x9c3bb  1      OPC=nop             
  nop                                                                #  55    0x9c3bc  1      OPC=nop             
  nop                                                                #  56    0x9c3bd  1      OPC=nop             
  nop                                                                #  57    0x9c3be  1      OPC=nop             
  nop                                                                #  58    0x9c3bf  1      OPC=nop             
.L_9c3c0:                                                            #        0x9c3c0  0      OPC=<label>         
  movl %r13d, %r13d                                                  #  59    0x9c3c0  3      OPC=movl_r32_r32    
  movl 0x20(%r15,%r13,1), %edi                                       #  60    0x9c3c3  5      OPC=movl_r32_m32    
  nop                                                                #  61    0x9c3c8  1      OPC=nop             
  nop                                                                #  62    0x9c3c9  1      OPC=nop             
  nop                                                                #  63    0x9c3ca  1      OPC=nop             
  nop                                                                #  64    0x9c3cb  1      OPC=nop             
  nop                                                                #  65    0x9c3cc  1      OPC=nop             
  nop                                                                #  66    0x9c3cd  1      OPC=nop             
  nop                                                                #  67    0x9c3ce  1      OPC=nop             
  nop                                                                #  68    0x9c3cf  1      OPC=nop             
  nop                                                                #  69    0x9c3d0  1      OPC=nop             
  nop                                                                #  70    0x9c3d1  1      OPC=nop             
  nop                                                                #  71    0x9c3d2  1      OPC=nop             
  nop                                                                #  72    0x9c3d3  1      OPC=nop             
  nop                                                                #  73    0x9c3d4  1      OPC=nop             
  nop                                                                #  74    0x9c3d5  1      OPC=nop             
  nop                                                                #  75    0x9c3d6  1      OPC=nop             
  nop                                                                #  76    0x9c3d7  1      OPC=nop             
  nop                                                                #  77    0x9c3d8  1      OPC=nop             
  nop                                                                #  78    0x9c3d9  1      OPC=nop             
  nop                                                                #  79    0x9c3da  1      OPC=nop             
  callq .getwc                                                       #  80    0x9c3db  5      OPC=callq_label     
  cmpl $0xffffffff, %eax                                             #  81    0x9c3e0  6      OPC=cmpl_r32_imm32  
  nop                                                                #  82    0x9c3e6  1      OPC=nop             
  nop                                                                #  83    0x9c3e7  1      OPC=nop             
  nop                                                                #  84    0x9c3e8  1      OPC=nop             
  jne .L_9c3a0                                                       #  85    0x9c3e9  2      OPC=jne_label       
  testl %ebx, %ebx                                                   #  86    0x9c3eb  2      OPC=testl_r32_r32   
  jne .L_9c420                                                       #  87    0x9c3ed  2      OPC=jne_label       
  nop                                                                #  88    0x9c3ef  1      OPC=nop             
  nop                                                                #  89    0x9c3f0  1      OPC=nop             
  nop                                                                #  90    0x9c3f1  1      OPC=nop             
  nop                                                                #  91    0x9c3f2  1      OPC=nop             
  nop                                                                #  92    0x9c3f3  1      OPC=nop             
  nop                                                                #  93    0x9c3f4  1      OPC=nop             
  nop                                                                #  94    0x9c3f5  1      OPC=nop             
  nop                                                                #  95    0x9c3f6  1      OPC=nop             
  nop                                                                #  96    0x9c3f7  1      OPC=nop             
  nop                                                                #  97    0x9c3f8  1      OPC=nop             
  nop                                                                #  98    0x9c3f9  1      OPC=nop             
  nop                                                                #  99    0x9c3fa  1      OPC=nop             
  nop                                                                #  100   0x9c3fb  1      OPC=nop             
  nop                                                                #  101   0x9c3fc  1      OPC=nop             
  nop                                                                #  102   0x9c3fd  1      OPC=nop             
  nop                                                                #  103   0x9c3fe  1      OPC=nop             
  nop                                                                #  104   0x9c3ff  1      OPC=nop             
  nop                                                                #  105   0x9c400  1      OPC=nop             
  nop                                                                #  106   0x9c401  1      OPC=nop             
  nop                                                                #  107   0x9c402  1      OPC=nop             
  nop                                                                #  108   0x9c403  1      OPC=nop             
  nop                                                                #  109   0x9c404  1      OPC=nop             
  nop                                                                #  110   0x9c405  1      OPC=nop             
.L_9c400:                                                            #        0x9c406  0      OPC=<label>         
  movl %r13d, %r13d                                                  #  111   0x9c406  3      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%r13,1)                                #  112   0x9c409  9      OPC=movl_m32_imm32  
  xorl %ebx, %ebx                                                    #  113   0x9c412  2      OPC=xorl_r32_r32    
  jmpq .L_9c440                                                      #  114   0x9c414  2      OPC=jmpq_label      
  nop                                                                #  115   0x9c416  1      OPC=nop             
  nop                                                                #  116   0x9c417  1      OPC=nop             
  nop                                                                #  117   0x9c418  1      OPC=nop             
  nop                                                                #  118   0x9c419  1      OPC=nop             
  nop                                                                #  119   0x9c41a  1      OPC=nop             
  nop                                                                #  120   0x9c41b  1      OPC=nop             
  nop                                                                #  121   0x9c41c  1      OPC=nop             
  nop                                                                #  122   0x9c41d  1      OPC=nop             
  nop                                                                #  123   0x9c41e  1      OPC=nop             
  nop                                                                #  124   0x9c41f  1      OPC=nop             
  nop                                                                #  125   0x9c420  1      OPC=nop             
  nop                                                                #  126   0x9c421  1      OPC=nop             
  nop                                                                #  127   0x9c422  1      OPC=nop             
  nop                                                                #  128   0x9c423  1      OPC=nop             
  nop                                                                #  129   0x9c424  1      OPC=nop             
  nop                                                                #  130   0x9c425  1      OPC=nop             
.L_9c420:                                                            #        0x9c426  0      OPC=<label>         
  movl 0x8(%rsp), %edx                                               #  131   0x9c426  4      OPC=movl_r32_m32    
  leal -0x4(%rdx,%rbx,4), %eax                                       #  132   0x9c42a  4      OPC=leal_r32_m16    
  movl %eax, %eax                                                    #  133   0x9c42e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                           #  134   0x9c430  4      OPC=movl_r32_m32    
  movl %r13d, %r13d                                                  #  135   0x9c434  3      OPC=movl_r32_r32    
  movl %eax, 0x24(%r15,%r13,1)                                       #  136   0x9c437  5      OPC=movl_m32_r32    
  nop                                                                #  137   0x9c43c  1      OPC=nop             
  nop                                                                #  138   0x9c43d  1      OPC=nop             
  nop                                                                #  139   0x9c43e  1      OPC=nop             
  nop                                                                #  140   0x9c43f  1      OPC=nop             
  nop                                                                #  141   0x9c440  1      OPC=nop             
  nop                                                                #  142   0x9c441  1      OPC=nop             
  nop                                                                #  143   0x9c442  1      OPC=nop             
  nop                                                                #  144   0x9c443  1      OPC=nop             
  nop                                                                #  145   0x9c444  1      OPC=nop             
  nop                                                                #  146   0x9c445  1      OPC=nop             
.L_9c440:                                                            #        0x9c446  0      OPC=<label>         
  addl $0x18, %esp                                                   #  147   0x9c446  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  148   0x9c449  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                    #  149   0x9c44c  2      OPC=movl_r32_r32    
  popq %rbx                                                          #  150   0x9c44e  1      OPC=popq_r64_1      
  popq %r12                                                          #  151   0x9c44f  2      OPC=popq_r64_1      
  popq %r13                                                          #  152   0x9c451  2      OPC=popq_r64_1      
  popq %r14                                                          #  153   0x9c453  2      OPC=popq_r64_1      
  popq %r11                                                          #  154   0x9c455  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  155   0x9c457  7      OPC=andl_r32_imm32  
  nop                                                                #  156   0x9c45e  1      OPC=nop             
  nop                                                                #  157   0x9c45f  1      OPC=nop             
  nop                                                                #  158   0x9c460  1      OPC=nop             
  nop                                                                #  159   0x9c461  1      OPC=nop             
  addq %r15, %r11                                                    #  160   0x9c462  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  161   0x9c465  3      OPC=jmpq_r64        
  nop                                                                #  162   0x9c468  1      OPC=nop             
  nop                                                                #  163   0x9c469  1      OPC=nop             
  nop                                                                #  164   0x9c46a  1      OPC=nop             
  nop                                                                #  165   0x9c46b  1      OPC=nop             
  nop                                                                #  166   0x9c46c  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE6xsgetnEPwi, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE6xsgetnEPwi
