  .text
  .globl _ZNKSt14error_category10equivalentERKSt10error_codei
  .type _ZNKSt14error_category10equivalentERKSt10error_codei, @function

#! file-offset 0x129cc0
#! rip-offset  0xe9cc0
#! capacity    64 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category10equivalentERKSt10error_codei:  #        0xe9cc0  0      OPC=<label>         
  movl %esi, %esi                                       #  1     0xe9cc0  2      OPC=movl_r32_r32    
  xorl %eax, %eax                                       #  2     0xe9cc2  2      OPC=xorl_r32_r32    
  movl %esi, %esi                                       #  3     0xe9cc4  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %edi                           #  4     0xe9cc6  5      OPC=cmpl_r32_m32    
  je .L_e9ce0                                           #  5     0xe9ccb  2      OPC=je_label        
  popq %r11                                             #  6     0xe9ccd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  7     0xe9ccf  7      OPC=andl_r32_imm32  
  nop                                                   #  8     0xe9cd6  1      OPC=nop             
  nop                                                   #  9     0xe9cd7  1      OPC=nop             
  nop                                                   #  10    0xe9cd8  1      OPC=nop             
  nop                                                   #  11    0xe9cd9  1      OPC=nop             
  addq %r15, %r11                                       #  12    0xe9cda  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  13    0xe9cdd  3      OPC=jmpq_r64        
  nop                                                   #  14    0xe9ce0  1      OPC=nop             
  nop                                                   #  15    0xe9ce1  1      OPC=nop             
  nop                                                   #  16    0xe9ce2  1      OPC=nop             
  nop                                                   #  17    0xe9ce3  1      OPC=nop             
  nop                                                   #  18    0xe9ce4  1      OPC=nop             
  nop                                                   #  19    0xe9ce5  1      OPC=nop             
  nop                                                   #  20    0xe9ce6  1      OPC=nop             
.L_e9ce0:                                               #        0xe9ce7  0      OPC=<label>         
  movl %esi, %esi                                       #  21    0xe9ce7  2      OPC=movl_r32_r32    
  cmpl (%r15,%rsi,1), %edx                              #  22    0xe9ce9  4      OPC=cmpl_r32_m32    
  sete %al                                              #  23    0xe9ced  3      OPC=sete_r8         
  popq %r11                                             #  24    0xe9cf0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  25    0xe9cf2  7      OPC=andl_r32_imm32  
  nop                                                   #  26    0xe9cf9  1      OPC=nop             
  nop                                                   #  27    0xe9cfa  1      OPC=nop             
  nop                                                   #  28    0xe9cfb  1      OPC=nop             
  nop                                                   #  29    0xe9cfc  1      OPC=nop             
  addq %r15, %r11                                       #  30    0xe9cfd  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  31    0xe9d00  3      OPC=jmpq_r64        
  nop                                                   #  32    0xe9d03  1      OPC=nop             
  nop                                                   #  33    0xe9d04  1      OPC=nop             
  nop                                                   #  34    0xe9d05  1      OPC=nop             
  nop                                                   #  35    0xe9d06  1      OPC=nop             
  nop                                                   #  36    0xe9d07  1      OPC=nop             
  nop                                                   #  37    0xe9d08  1      OPC=nop             
  nop                                                   #  38    0xe9d09  1      OPC=nop             
  nop                                                   #  39    0xe9d0a  1      OPC=nop             
  nop                                                   #  40    0xe9d0b  1      OPC=nop             
  nop                                                   #  41    0xe9d0c  1      OPC=nop             
  nop                                                   #  42    0xe9d0d  1      OPC=nop             
                                                                                                     
.size _ZNKSt14error_category10equivalentERKSt10error_codei, .-_ZNKSt14error_category10equivalentERKSt10error_codei
