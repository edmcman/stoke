  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE13_M_set_bufferEi
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE13_M_set_bufferEi, @function

#! file-offset 0x12a600
#! rip-offset  0xea600
#! capacity    256 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE13_M_set_bufferEi:  #        0xea600  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xea600  2      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  2     0xea602  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rdi,1), %edx                                #  3     0xea604  5      OPC=movl_r32_m32    
  testb $0x8, %dl                                             #  4     0xea609  3      OPC=testb_r8_imm8   
  je .L_ea680                                                 #  5     0xea60c  2      OPC=je_label        
  testl %esi, %esi                                            #  6     0xea60e  2      OPC=testl_r32_r32   
  jle .L_ea680                                                #  7     0xea610  2      OPC=jle_label       
  movl %edi, %edi                                             #  8     0xea612  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %eax                                #  9     0xea614  5      OPC=movl_r32_m32    
  andl $0x10, %edx                                            #  10    0xea619  3      OPC=andl_r32_imm8   
  leal (%rax,%rsi,4), %ecx                                    #  11    0xea61c  3      OPC=leal_r32_m16    
  nop                                                         #  12    0xea61f  1      OPC=nop             
  movl %edi, %edi                                             #  13    0xea620  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                 #  14    0xea622  5      OPC=movl_m32_r32    
  movl %edi, %edi                                             #  15    0xea627  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                 #  16    0xea629  5      OPC=movl_m32_r32    
  movl %edi, %edi                                             #  17    0xea62e  2      OPC=movl_r32_r32    
  movl %ecx, 0xc(%r15,%rdi,1)                                 #  18    0xea630  5      OPC=movl_m32_r32    
  jne .L_ea6c0                                                #  19    0xea635  6      OPC=jne_label_1     
  nop                                                         #  20    0xea63b  1      OPC=nop             
  nop                                                         #  21    0xea63c  1      OPC=nop             
  nop                                                         #  22    0xea63d  1      OPC=nop             
  nop                                                         #  23    0xea63e  1      OPC=nop             
  nop                                                         #  24    0xea63f  1      OPC=nop             
.L_ea640:                                                     #        0xea640  0      OPC=<label>         
  movl %edi, %edi                                             #  25    0xea640  2      OPC=movl_r32_r32    
  movl $0x0, 0x14(%r15,%rdi,1)                                #  26    0xea642  9      OPC=movl_m32_imm32  
  movl %edi, %edi                                             #  27    0xea64b  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rdi,1)                                #  28    0xea64d  9      OPC=movl_m32_imm32  
  nop                                                         #  29    0xea656  1      OPC=nop             
  nop                                                         #  30    0xea657  1      OPC=nop             
  nop                                                         #  31    0xea658  1      OPC=nop             
  nop                                                         #  32    0xea659  1      OPC=nop             
  nop                                                         #  33    0xea65a  1      OPC=nop             
  nop                                                         #  34    0xea65b  1      OPC=nop             
  nop                                                         #  35    0xea65c  1      OPC=nop             
  nop                                                         #  36    0xea65d  1      OPC=nop             
  nop                                                         #  37    0xea65e  1      OPC=nop             
  nop                                                         #  38    0xea65f  1      OPC=nop             
  movl %edi, %edi                                             #  39    0xea660  2      OPC=movl_r32_r32    
  movl $0x0, 0x18(%r15,%rdi,1)                                #  40    0xea662  9      OPC=movl_m32_imm32  
  popq %r11                                                   #  41    0xea66b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                     #  42    0xea66d  7      OPC=andl_r32_imm32  
  nop                                                         #  43    0xea674  1      OPC=nop             
  nop                                                         #  44    0xea675  1      OPC=nop             
  nop                                                         #  45    0xea676  1      OPC=nop             
  nop                                                         #  46    0xea677  1      OPC=nop             
  addq %r15, %r11                                             #  47    0xea678  3      OPC=addq_r64_r64    
  jmpq %r11                                                   #  48    0xea67b  3      OPC=jmpq_r64        
  nop                                                         #  49    0xea67e  1      OPC=nop             
  nop                                                         #  50    0xea67f  1      OPC=nop             
  nop                                                         #  51    0xea680  1      OPC=nop             
  nop                                                         #  52    0xea681  1      OPC=nop             
  nop                                                         #  53    0xea682  1      OPC=nop             
  nop                                                         #  54    0xea683  1      OPC=nop             
  nop                                                         #  55    0xea684  1      OPC=nop             
  nop                                                         #  56    0xea685  1      OPC=nop             
  nop                                                         #  57    0xea686  1      OPC=nop             
.L_ea680:                                                     #        0xea687  0      OPC=<label>         
  movl %edi, %edi                                             #  58    0xea687  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %eax                                #  59    0xea689  5      OPC=movl_r32_m32    
  andl $0x10, %edx                                            #  60    0xea68e  3      OPC=andl_r32_imm8   
  movl %edi, %edi                                             #  61    0xea691  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                 #  62    0xea693  5      OPC=movl_m32_r32    
  movl %edi, %edi                                             #  63    0xea698  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                 #  64    0xea69a  5      OPC=movl_m32_r32    
  movl %edi, %edi                                             #  65    0xea69f  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rdi,1)                                 #  66    0xea6a1  5      OPC=movl_m32_r32    
  nop                                                         #  67    0xea6a6  1      OPC=nop             
  je .L_ea640                                                 #  68    0xea6a7  2      OPC=je_label        
  nop                                                         #  69    0xea6a9  1      OPC=nop             
  nop                                                         #  70    0xea6aa  1      OPC=nop             
  nop                                                         #  71    0xea6ab  1      OPC=nop             
  nop                                                         #  72    0xea6ac  1      OPC=nop             
  nop                                                         #  73    0xea6ad  1      OPC=nop             
  nop                                                         #  74    0xea6ae  1      OPC=nop             
  nop                                                         #  75    0xea6af  1      OPC=nop             
  nop                                                         #  76    0xea6b0  1      OPC=nop             
  nop                                                         #  77    0xea6b1  1      OPC=nop             
  nop                                                         #  78    0xea6b2  1      OPC=nop             
  nop                                                         #  79    0xea6b3  1      OPC=nop             
  nop                                                         #  80    0xea6b4  1      OPC=nop             
  nop                                                         #  81    0xea6b5  1      OPC=nop             
  nop                                                         #  82    0xea6b6  1      OPC=nop             
  nop                                                         #  83    0xea6b7  1      OPC=nop             
  nop                                                         #  84    0xea6b8  1      OPC=nop             
  nop                                                         #  85    0xea6b9  1      OPC=nop             
  nop                                                         #  86    0xea6ba  1      OPC=nop             
  nop                                                         #  87    0xea6bb  1      OPC=nop             
  nop                                                         #  88    0xea6bc  1      OPC=nop             
  nop                                                         #  89    0xea6bd  1      OPC=nop             
  nop                                                         #  90    0xea6be  1      OPC=nop             
  nop                                                         #  91    0xea6bf  1      OPC=nop             
  nop                                                         #  92    0xea6c0  1      OPC=nop             
  nop                                                         #  93    0xea6c1  1      OPC=nop             
  nop                                                         #  94    0xea6c2  1      OPC=nop             
  nop                                                         #  95    0xea6c3  1      OPC=nop             
  nop                                                         #  96    0xea6c4  1      OPC=nop             
  nop                                                         #  97    0xea6c5  1      OPC=nop             
  nop                                                         #  98    0xea6c6  1      OPC=nop             
.L_ea6c0:                                                     #        0xea6c7  0      OPC=<label>         
  testl %esi, %esi                                            #  99    0xea6c7  2      OPC=testl_r32_r32   
  jne .L_ea640                                                #  100   0xea6c9  6      OPC=jne_label_1     
  movl %edi, %edi                                             #  101   0xea6cf  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rdi,1), %edx                                #  102   0xea6d1  5      OPC=movl_r32_m32    
  cmpl $0x1, %edx                                             #  103   0xea6d6  3      OPC=cmpl_r32_imm8   
  jbe .L_ea640                                                #  104   0xea6d9  6      OPC=jbe_label_1     
  movl %edi, %edi                                             #  105   0xea6df  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rdi,1)                                #  106   0xea6e1  5      OPC=movl_m32_r32    
  nop                                                         #  107   0xea6e6  1      OPC=nop             
  movl %edi, %edi                                             #  108   0xea6e7  2      OPC=movl_r32_r32    
  movl %eax, 0x10(%r15,%rdi,1)                                #  109   0xea6e9  5      OPC=movl_m32_r32    
  leal -0x4(%rax,%rdx,4), %eax                                #  110   0xea6ee  4      OPC=leal_r32_m16    
  movl %edi, %edi                                             #  111   0xea6f2  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rdi,1)                                #  112   0xea6f4  5      OPC=movl_m32_r32    
  popq %r11                                                   #  113   0xea6f9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                     #  114   0xea6fb  7      OPC=andl_r32_imm32  
  nop                                                         #  115   0xea702  1      OPC=nop             
  nop                                                         #  116   0xea703  1      OPC=nop             
  nop                                                         #  117   0xea704  1      OPC=nop             
  nop                                                         #  118   0xea705  1      OPC=nop             
  addq %r15, %r11                                             #  119   0xea706  3      OPC=addq_r64_r64    
  jmpq %r11                                                   #  120   0xea709  3      OPC=jmpq_r64        
  nop                                                         #  121   0xea70c  1      OPC=nop             
  nop                                                         #  122   0xea70d  1      OPC=nop             
                                                                                                           
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE13_M_set_bufferEi, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE13_M_set_bufferEi
