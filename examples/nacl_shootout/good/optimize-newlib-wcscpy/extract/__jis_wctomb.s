  .text
  .globl __jis_wctomb
  .type __jis_wctomb, @function

#! file-offset 0x1838c0
#! rip-offset  0x1438c0
#! capacity    320 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.__jis_wctomb:                #        0x1438c0  0      OPC=<label>           
  movl %esi, %esi             #  1     0x1438c0  2      OPC=movl_r32_r32      
  movl %edi, %edi             #  2     0x1438c2  2      OPC=movl_r32_r32      
  movl %r8d, %r8d             #  3     0x1438c4  3      OPC=movl_r32_r32      
  testq %rsi, %rsi            #  4     0x1438c7  3      OPC=testq_r64_r64     
  movl $0x1, %eax             #  5     0x1438ca  5      OPC=movl_r32_imm32    
  je .L_1439c0                #  6     0x1438cf  6      OPC=je_label_1        
  movl %edx, %ecx             #  7     0x1438d5  2      OPC=movl_r32_r32      
  shrl $0x8, %edx             #  8     0x1438d7  3      OPC=shrl_r32_imm8     
  testb %dl, %dl              #  9     0x1438da  2      OPC=testb_r8_r8       
  nop                         #  10    0x1438dc  1      OPC=nop               
  nop                         #  11    0x1438dd  1      OPC=nop               
  nop                         #  12    0x1438de  1      OPC=nop               
  nop                         #  13    0x1438df  1      OPC=nop               
  je .L_143960                #  14    0x1438e0  2      OPC=je_label          
  leal -0x21(%rdx), %eax      #  15    0x1438e2  3      OPC=leal_r32_m16      
  cmpb $0x5d, %al             #  16    0x1438e5  2      OPC=cmpb_al_imm8      
  ja .L_1439e0                #  17    0x1438e7  6      OPC=ja_label_1        
  leal -0x21(%rcx), %eax      #  18    0x1438ed  3      OPC=leal_r32_m16      
  cmpb $0x5d, %al             #  19    0x1438f0  2      OPC=cmpb_al_imm8      
  ja .L_1439e0                #  20    0x1438f2  6      OPC=ja_label_1        
  movl %r8d, %r8d             #  21    0x1438f8  3      OPC=movl_r32_r32      
  movl (%r15,%r8,1), %edi     #  22    0x1438fb  4      OPC=movl_r32_m32      
  nop                         #  23    0x1438ff  1      OPC=nop               
  movl $0x2, %eax             #  24    0x143900  5      OPC=movl_r32_imm32    
  testl %edi, %edi            #  25    0x143905  2      OPC=testl_r32_r32     
  jne .L_143940               #  26    0x143907  2      OPC=jne_label         
  movl %r8d, %r8d             #  27    0x143909  3      OPC=movl_r32_r32      
  movl $0x1, (%r15,%r8,1)     #  28    0x14390c  8      OPC=movl_m32_imm32    
  movl %esi, %esi             #  29    0x143914  2      OPC=movl_r32_r32      
  movb $0x1b, (%r15,%rsi,1)   #  30    0x143916  5      OPC=movb_m8_imm8      
  addl $0x1, %esi             #  31    0x14391b  3      OPC=addl_r32_imm8     
  xchgw %ax, %ax              #  32    0x14391e  2      OPC=xchgw_ax_r16      
  movl %esi, %esi             #  33    0x143920  2      OPC=movl_r32_r32      
  movb $0x24, (%r15,%rsi,1)   #  34    0x143922  5      OPC=movb_m8_imm8      
  addl $0x1, %esi             #  35    0x143927  3      OPC=addl_r32_imm8     
  movb $0x5, %al              #  36    0x14392a  2      OPC=movb_r8_imm8      
  movl %esi, %esi             #  37    0x14392c  2      OPC=movl_r32_r32      
  movb $0x42, (%r15,%rsi,1)   #  38    0x14392e  5      OPC=movb_m8_imm8      
  addl $0x1, %esi             #  39    0x143933  3      OPC=addl_r32_imm8     
  nop                         #  40    0x143936  1      OPC=nop               
  nop                         #  41    0x143937  1      OPC=nop               
  nop                         #  42    0x143938  1      OPC=nop               
  nop                         #  43    0x143939  1      OPC=nop               
  nop                         #  44    0x14393a  1      OPC=nop               
  nop                         #  45    0x14393b  1      OPC=nop               
  nop                         #  46    0x14393c  1      OPC=nop               
  nop                         #  47    0x14393d  1      OPC=nop               
  nop                         #  48    0x14393e  1      OPC=nop               
  nop                         #  49    0x14393f  1      OPC=nop               
.L_143940:                    #        0x143940  0      OPC=<label>           
  movl %esi, %esi             #  50    0x143940  2      OPC=movl_r32_r32      
  movb %dl, (%r15,%rsi,1)     #  51    0x143942  4      OPC=movb_m8_r8        
  movl %esi, %esi             #  52    0x143946  2      OPC=movl_r32_r32      
  movb %cl, 0x1(%r15,%rsi,1)  #  53    0x143948  5      OPC=movb_m8_r8        
  popq %r11                   #  54    0x14394d  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  55    0x14394f  7      OPC=andl_r32_imm32    
  nop                         #  56    0x143956  1      OPC=nop               
  nop                         #  57    0x143957  1      OPC=nop               
  nop                         #  58    0x143958  1      OPC=nop               
  nop                         #  59    0x143959  1      OPC=nop               
  addq %r15, %r11             #  60    0x14395a  3      OPC=addq_r64_r64      
  jmpq %r11                   #  61    0x14395d  3      OPC=jmpq_r64          
  nop                         #  62    0x143960  1      OPC=nop               
  nop                         #  63    0x143961  1      OPC=nop               
  nop                         #  64    0x143962  1      OPC=nop               
  nop                         #  65    0x143963  1      OPC=nop               
  nop                         #  66    0x143964  1      OPC=nop               
  nop                         #  67    0x143965  1      OPC=nop               
  nop                         #  68    0x143966  1      OPC=nop               
.L_143960:                    #        0x143967  0      OPC=<label>           
  movl %r8d, %r8d             #  69    0x143967  3      OPC=movl_r32_r32      
  movl (%r15,%r8,1), %edx     #  70    0x14396a  4      OPC=movl_r32_m32      
  movl $0x1, %eax             #  71    0x14396e  5      OPC=movl_r32_imm32    
  testl %edx, %edx            #  72    0x143973  2      OPC=testl_r32_r32     
  je .L_1439a0                #  73    0x143975  2      OPC=je_label          
  movl %r8d, %r8d             #  74    0x143977  3      OPC=movl_r32_r32      
  movl $0x0, (%r15,%r8,1)     #  75    0x14397a  8      OPC=movl_m32_imm32    
  nop                         #  76    0x143982  1      OPC=nop               
  nop                         #  77    0x143983  1      OPC=nop               
  nop                         #  78    0x143984  1      OPC=nop               
  nop                         #  79    0x143985  1      OPC=nop               
  nop                         #  80    0x143986  1      OPC=nop               
  movl %esi, %esi             #  81    0x143987  2      OPC=movl_r32_r32      
  movb $0x1b, (%r15,%rsi,1)   #  82    0x143989  5      OPC=movb_m8_imm8      
  addl $0x1, %esi             #  83    0x14398e  3      OPC=addl_r32_imm8     
  movl %esi, %esi             #  84    0x143991  2      OPC=movl_r32_r32      
  movb $0x28, (%r15,%rsi,1)   #  85    0x143993  5      OPC=movb_m8_imm8      
  addl $0x1, %esi             #  86    0x143998  3      OPC=addl_r32_imm8     
  movb $0x4, %al              #  87    0x14399b  2      OPC=movb_r8_imm8      
  movl %esi, %esi             #  88    0x14399d  2      OPC=movl_r32_r32      
  movb $0x42, (%r15,%rsi,1)   #  89    0x14399f  5      OPC=movb_m8_imm8      
  addl $0x1, %esi             #  90    0x1439a4  3      OPC=addl_r32_imm8     
.L_1439a0:                    #        0x1439a7  0      OPC=<label>           
  movl %esi, %esi             #  91    0x1439a7  2      OPC=movl_r32_r32      
  movb %cl, (%r15,%rsi,1)     #  92    0x1439a9  4      OPC=movb_m8_r8        
  nop                         #  93    0x1439ad  1      OPC=nop               
  nop                         #  94    0x1439ae  1      OPC=nop               
  nop                         #  95    0x1439af  1      OPC=nop               
  nop                         #  96    0x1439b0  1      OPC=nop               
  nop                         #  97    0x1439b1  1      OPC=nop               
  nop                         #  98    0x1439b2  1      OPC=nop               
  nop                         #  99    0x1439b3  1      OPC=nop               
  nop                         #  100   0x1439b4  1      OPC=nop               
  nop                         #  101   0x1439b5  1      OPC=nop               
  nop                         #  102   0x1439b6  1      OPC=nop               
  nop                         #  103   0x1439b7  1      OPC=nop               
  nop                         #  104   0x1439b8  1      OPC=nop               
  nop                         #  105   0x1439b9  1      OPC=nop               
  nop                         #  106   0x1439ba  1      OPC=nop               
  nop                         #  107   0x1439bb  1      OPC=nop               
  nop                         #  108   0x1439bc  1      OPC=nop               
  nop                         #  109   0x1439bd  1      OPC=nop               
  nop                         #  110   0x1439be  1      OPC=nop               
  nop                         #  111   0x1439bf  1      OPC=nop               
  nop                         #  112   0x1439c0  1      OPC=nop               
  nop                         #  113   0x1439c1  1      OPC=nop               
  nop                         #  114   0x1439c2  1      OPC=nop               
  nop                         #  115   0x1439c3  1      OPC=nop               
  nop                         #  116   0x1439c4  1      OPC=nop               
  nop                         #  117   0x1439c5  1      OPC=nop               
  nop                         #  118   0x1439c6  1      OPC=nop               
.L_1439c0:                    #        0x1439c7  0      OPC=<label>           
  popq %r11                   #  119   0x1439c7  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  120   0x1439c9  7      OPC=andl_r32_imm32    
  nop                         #  121   0x1439d0  1      OPC=nop               
  nop                         #  122   0x1439d1  1      OPC=nop               
  nop                         #  123   0x1439d2  1      OPC=nop               
  nop                         #  124   0x1439d3  1      OPC=nop               
  addq %r15, %r11             #  125   0x1439d4  3      OPC=addq_r64_r64      
  jmpq %r11                   #  126   0x1439d7  3      OPC=jmpq_r64          
  nop                         #  127   0x1439da  1      OPC=nop               
  nop                         #  128   0x1439db  1      OPC=nop               
  nop                         #  129   0x1439dc  1      OPC=nop               
  nop                         #  130   0x1439dd  1      OPC=nop               
  nop                         #  131   0x1439de  1      OPC=nop               
  nop                         #  132   0x1439df  1      OPC=nop               
  nop                         #  133   0x1439e0  1      OPC=nop               
  nop                         #  134   0x1439e1  1      OPC=nop               
  nop                         #  135   0x1439e2  1      OPC=nop               
  nop                         #  136   0x1439e3  1      OPC=nop               
  nop                         #  137   0x1439e4  1      OPC=nop               
  nop                         #  138   0x1439e5  1      OPC=nop               
  nop                         #  139   0x1439e6  1      OPC=nop               
  nop                         #  140   0x1439e7  1      OPC=nop               
  nop                         #  141   0x1439e8  1      OPC=nop               
  nop                         #  142   0x1439e9  1      OPC=nop               
  nop                         #  143   0x1439ea  1      OPC=nop               
  nop                         #  144   0x1439eb  1      OPC=nop               
  nop                         #  145   0x1439ec  1      OPC=nop               
  nop                         #  146   0x1439ed  1      OPC=nop               
.L_1439e0:                    #        0x1439ee  0      OPC=<label>           
  movl %edi, %edi             #  147   0x1439ee  2      OPC=movl_r32_r32      
  movl $0x54, (%r15,%rdi,1)   #  148   0x1439f0  8      OPC=movl_m32_imm32    
  movl $0xffffffff, %eax      #  149   0x1439f8  6      OPC=movl_r32_imm32_1  
  popq %r11                   #  150   0x1439fe  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  151   0x143a00  7      OPC=andl_r32_imm32    
  nop                         #  152   0x143a07  1      OPC=nop               
  nop                         #  153   0x143a08  1      OPC=nop               
  nop                         #  154   0x143a09  1      OPC=nop               
  nop                         #  155   0x143a0a  1      OPC=nop               
  addq %r15, %r11             #  156   0x143a0b  3      OPC=addq_r64_r64      
  jmpq %r11                   #  157   0x143a0e  3      OPC=jmpq_r64          
  nop                         #  158   0x143a11  1      OPC=nop               
  nop                         #  159   0x143a12  1      OPC=nop               
  nop                         #  160   0x143a13  1      OPC=nop               
  nop                         #  161   0x143a14  1      OPC=nop               
  nop                         #  162   0x143a15  1      OPC=nop               
                                                                              
.size __jis_wctomb, .-__jis_wctomb
