  .text
  .globl _ZNSsC2ERKSs
  .type _ZNSsC2ERKSs, @function

#! file-offset 0xed960
#! rip-offset  0xad960
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSs:                         #        0xad960  0      OPC=<label>         
  pushq %rbx                           #  1     0xad960  1      OPC=pushq_r64_1     
  movl %esi, %esi                      #  2     0xad961  2      OPC=movl_r32_r32    
  movl %edi, %ebx                      #  3     0xad963  2      OPC=movl_r32_r32    
  subl $0x10, %esp                     #  4     0xad965  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                      #  5     0xad968  3      OPC=addq_r64_r64    
  movl %esi, %esi                      #  6     0xad96b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi             #  7     0xad96d  4      OPC=movl_r32_m32    
  subl $0xc, %edi                      #  8     0xad971  3      OPC=subl_r32_imm8   
  movl %edi, %edi                      #  9     0xad974  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax          #  10    0xad976  5      OPC=movl_r32_m32    
  testl %eax, %eax                     #  11    0xad97b  2      OPC=testl_r32_r32   
  nop                                  #  12    0xad97d  1      OPC=nop             
  nop                                  #  13    0xad97e  1      OPC=nop             
  nop                                  #  14    0xad97f  1      OPC=nop             
  js .L_ad9c0                          #  15    0xad980  2      OPC=js_label        
  cmpl $0x10073580, %edi               #  16    0xad982  6      OPC=cmpl_r32_imm32  
  jne .L_ada00                         #  17    0xad988  2      OPC=jne_label       
  nop                                  #  18    0xad98a  1      OPC=nop             
  nop                                  #  19    0xad98b  1      OPC=nop             
  nop                                  #  20    0xad98c  1      OPC=nop             
  nop                                  #  21    0xad98d  1      OPC=nop             
  nop                                  #  22    0xad98e  1      OPC=nop             
  nop                                  #  23    0xad98f  1      OPC=nop             
  nop                                  #  24    0xad990  1      OPC=nop             
  nop                                  #  25    0xad991  1      OPC=nop             
  nop                                  #  26    0xad992  1      OPC=nop             
  nop                                  #  27    0xad993  1      OPC=nop             
  nop                                  #  28    0xad994  1      OPC=nop             
  nop                                  #  29    0xad995  1      OPC=nop             
  nop                                  #  30    0xad996  1      OPC=nop             
  nop                                  #  31    0xad997  1      OPC=nop             
  nop                                  #  32    0xad998  1      OPC=nop             
  nop                                  #  33    0xad999  1      OPC=nop             
  nop                                  #  34    0xad99a  1      OPC=nop             
  nop                                  #  35    0xad99b  1      OPC=nop             
  nop                                  #  36    0xad99c  1      OPC=nop             
  nop                                  #  37    0xad99d  1      OPC=nop             
  nop                                  #  38    0xad99e  1      OPC=nop             
  nop                                  #  39    0xad99f  1      OPC=nop             
.L_ad9a0:                              #        0xad9a0  0      OPC=<label>         
  addl $0xc, %edi                      #  40    0xad9a0  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx                      #  41    0xad9a3  2      OPC=movl_r32_r32    
  movl %edi, (%r15,%rbx,1)             #  42    0xad9a5  4      OPC=movl_m32_r32    
  addl $0x10, %esp                     #  43    0xad9a9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                      #  44    0xad9ac  3      OPC=addq_r64_r64    
  popq %rbx                            #  45    0xad9af  1      OPC=popq_r64_1      
  popq %r11                            #  46    0xad9b0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d              #  47    0xad9b2  7      OPC=andl_r32_imm32  
  nop                                  #  48    0xad9b9  1      OPC=nop             
  nop                                  #  49    0xad9ba  1      OPC=nop             
  nop                                  #  50    0xad9bb  1      OPC=nop             
  nop                                  #  51    0xad9bc  1      OPC=nop             
  addq %r15, %r11                      #  52    0xad9bd  3      OPC=addq_r64_r64    
  jmpq %r11                            #  53    0xad9c0  3      OPC=jmpq_r64        
  nop                                  #  54    0xad9c3  1      OPC=nop             
  nop                                  #  55    0xad9c4  1      OPC=nop             
  nop                                  #  56    0xad9c5  1      OPC=nop             
  nop                                  #  57    0xad9c6  1      OPC=nop             
.L_ad9c0:                              #        0xad9c7  0      OPC=<label>         
  leal 0xf(%rsp), %esi                 #  58    0xad9c7  4      OPC=leal_r32_m16    
  xorl %edx, %edx                      #  59    0xad9cb  2      OPC=xorl_r32_r32    
  nop                                  #  60    0xad9cd  1      OPC=nop             
  nop                                  #  61    0xad9ce  1      OPC=nop             
  nop                                  #  62    0xad9cf  1      OPC=nop             
  nop                                  #  63    0xad9d0  1      OPC=nop             
  nop                                  #  64    0xad9d1  1      OPC=nop             
  nop                                  #  65    0xad9d2  1      OPC=nop             
  nop                                  #  66    0xad9d3  1      OPC=nop             
  nop                                  #  67    0xad9d4  1      OPC=nop             
  nop                                  #  68    0xad9d5  1      OPC=nop             
  nop                                  #  69    0xad9d6  1      OPC=nop             
  nop                                  #  70    0xad9d7  1      OPC=nop             
  nop                                  #  71    0xad9d8  1      OPC=nop             
  nop                                  #  72    0xad9d9  1      OPC=nop             
  nop                                  #  73    0xad9da  1      OPC=nop             
  nop                                  #  74    0xad9db  1      OPC=nop             
  nop                                  #  75    0xad9dc  1      OPC=nop             
  nop                                  #  76    0xad9dd  1      OPC=nop             
  nop                                  #  77    0xad9de  1      OPC=nop             
  nop                                  #  78    0xad9df  1      OPC=nop             
  nop                                  #  79    0xad9e0  1      OPC=nop             
  nop                                  #  80    0xad9e1  1      OPC=nop             
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  81    0xad9e2  5      OPC=callq_label     
  movl %eax, %edi                      #  82    0xad9e7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                      #  83    0xad9e9  2      OPC=movl_r32_r32    
  movl %edi, (%r15,%rbx,1)             #  84    0xad9eb  4      OPC=movl_m32_r32    
  addl $0x10, %esp                     #  85    0xad9ef  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                      #  86    0xad9f2  3      OPC=addq_r64_r64    
  popq %rbx                            #  87    0xad9f5  1      OPC=popq_r64_1      
  popq %r11                            #  88    0xad9f6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d              #  89    0xad9f8  7      OPC=andl_r32_imm32  
  nop                                  #  90    0xad9ff  1      OPC=nop             
  nop                                  #  91    0xada00  1      OPC=nop             
  nop                                  #  92    0xada01  1      OPC=nop             
  nop                                  #  93    0xada02  1      OPC=nop             
  addq %r15, %r11                      #  94    0xada03  3      OPC=addq_r64_r64    
  jmpq %r11                            #  95    0xada06  3      OPC=jmpq_r64        
  nop                                  #  96    0xada09  1      OPC=nop             
  nop                                  #  97    0xada0a  1      OPC=nop             
  nop                                  #  98    0xada0b  1      OPC=nop             
  nop                                  #  99    0xada0c  1      OPC=nop             
  nop                                  #  100   0xada0d  1      OPC=nop             
.L_ada00:                              #        0xada0e  0      OPC=<label>         
  addl $0x1, %eax                      #  101   0xada0e  3      OPC=addl_r32_imm8   
  movl %edi, %edi                      #  102   0xada11  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)          #  103   0xada13  5      OPC=movl_m32_r32    
  jmpq .L_ad9a0                        #  104   0xada18  2      OPC=jmpq_label      
  nop                                  #  105   0xada1a  1      OPC=nop             
  nop                                  #  106   0xada1b  1      OPC=nop             
  nop                                  #  107   0xada1c  1      OPC=nop             
  nop                                  #  108   0xada1d  1      OPC=nop             
  nop                                  #  109   0xada1e  1      OPC=nop             
  nop                                  #  110   0xada1f  1      OPC=nop             
  nop                                  #  111   0xada20  1      OPC=nop             
  nop                                  #  112   0xada21  1      OPC=nop             
  nop                                  #  113   0xada22  1      OPC=nop             
  nop                                  #  114   0xada23  1      OPC=nop             
  nop                                  #  115   0xada24  1      OPC=nop             
  nop                                  #  116   0xada25  1      OPC=nop             
  nop                                  #  117   0xada26  1      OPC=nop             
  nop                                  #  118   0xada27  1      OPC=nop             
  nop                                  #  119   0xada28  1      OPC=nop             
  nop                                  #  120   0xada29  1      OPC=nop             
  nop                                  #  121   0xada2a  1      OPC=nop             
  nop                                  #  122   0xada2b  1      OPC=nop             
  nop                                  #  123   0xada2c  1      OPC=nop             
  nop                                  #  124   0xada2d  1      OPC=nop             
  movl %eax, %edi                      #  125   0xada2e  2      OPC=movl_r32_r32    
  nop                                  #  126   0xada30  1      OPC=nop             
  nop                                  #  127   0xada31  1      OPC=nop             
  nop                                  #  128   0xada32  1      OPC=nop             
  nop                                  #  129   0xada33  1      OPC=nop             
  nop                                  #  130   0xada34  1      OPC=nop             
  nop                                  #  131   0xada35  1      OPC=nop             
  nop                                  #  132   0xada36  1      OPC=nop             
  nop                                  #  133   0xada37  1      OPC=nop             
  nop                                  #  134   0xada38  1      OPC=nop             
  nop                                  #  135   0xada39  1      OPC=nop             
  nop                                  #  136   0xada3a  1      OPC=nop             
  nop                                  #  137   0xada3b  1      OPC=nop             
  nop                                  #  138   0xada3c  1      OPC=nop             
  nop                                  #  139   0xada3d  1      OPC=nop             
  nop                                  #  140   0xada3e  1      OPC=nop             
  nop                                  #  141   0xada3f  1      OPC=nop             
  nop                                  #  142   0xada40  1      OPC=nop             
  nop                                  #  143   0xada41  1      OPC=nop             
  nop                                  #  144   0xada42  1      OPC=nop             
  nop                                  #  145   0xada43  1      OPC=nop             
  nop                                  #  146   0xada44  1      OPC=nop             
  nop                                  #  147   0xada45  1      OPC=nop             
  nop                                  #  148   0xada46  1      OPC=nop             
  nop                                  #  149   0xada47  1      OPC=nop             
  nop                                  #  150   0xada48  1      OPC=nop             
  callq ._Unwind_Resume                #  151   0xada49  5      OPC=callq_label     
                                                                                    
.size _ZNSsC2ERKSs, .-_ZNSsC2ERKSs
