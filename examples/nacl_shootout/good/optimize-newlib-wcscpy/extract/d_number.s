  .text
  .globl d_number
  .type d_number, @function

#! file-offset 0x13dee0
#! rip-offset  0xfdee0
#! capacity    224 bytes

# Text                           #  Line  RIP      Bytes  Opcode               
.d_number:                       #        0xfdee0  0      OPC=<label>          
  movl %edi, %edi                #  1     0xfdee0  2      OPC=movl_r32_r32     
  xorl %r8d, %r8d                #  2     0xfdee2  3      OPC=xorl_r32_r32     
  movl %edi, %edi                #  3     0xfdee5  2      OPC=movl_r32_r32     
  movl 0xc(%r15,%rdi,1), %eax    #  4     0xfdee7  5      OPC=movl_r32_m32     
  movl %eax, %eax                #  5     0xfdeec  2      OPC=movl_r32_r32     
  movzbl (%r15,%rax,1), %ecx     #  6     0xfdeee  5      OPC=movzbl_r32_m8    
  cmpb $0x6e, %cl                #  7     0xfdef3  3      OPC=cmpb_r8_imm8     
  je .L_fdf80                    #  8     0xfdef6  6      OPC=je_label_1       
  nop                            #  9     0xfdefc  1      OPC=nop              
  nop                            #  10    0xfdefd  1      OPC=nop              
  nop                            #  11    0xfdefe  1      OPC=nop              
  nop                            #  12    0xfdeff  1      OPC=nop              
.L_fdf00:                        #        0xfdf00  0      OPC=<label>          
  leal -0x30(%rcx), %eax         #  13    0xfdf00  3      OPC=leal_r32_m16     
  cmpb $0x9, %al                 #  14    0xfdf03  2      OPC=cmpb_al_imm8     
  ja .L_fdfa0                    #  15    0xfdf05  6      OPC=ja_label_1       
  movl %edi, %edi                #  16    0xfdf0b  2      OPC=movl_r32_r32     
  movl 0xc(%r15,%rdi,1), %edx    #  17    0xfdf0d  5      OPC=movl_r32_m32     
  xorl %eax, %eax                #  18    0xfdf12  2      OPC=xorl_r32_r32     
  nop                            #  19    0xfdf14  1      OPC=nop              
  nop                            #  20    0xfdf15  1      OPC=nop              
  nop                            #  21    0xfdf16  1      OPC=nop              
  nop                            #  22    0xfdf17  1      OPC=nop              
  nop                            #  23    0xfdf18  1      OPC=nop              
  nop                            #  24    0xfdf19  1      OPC=nop              
  nop                            #  25    0xfdf1a  1      OPC=nop              
  nop                            #  26    0xfdf1b  1      OPC=nop              
  nop                            #  27    0xfdf1c  1      OPC=nop              
  nop                            #  28    0xfdf1d  1      OPC=nop              
  nop                            #  29    0xfdf1e  1      OPC=nop              
  nop                            #  30    0xfdf1f  1      OPC=nop              
.L_fdf20:                        #        0xfdf20  0      OPC=<label>          
  leal (%rax,%rax,4), %eax       #  31    0xfdf20  3      OPC=leal_r32_m16     
  addl $0x1, %edx                #  32    0xfdf23  3      OPC=addl_r32_imm8    
  movsbl %cl, %ecx               #  33    0xfdf26  3      OPC=movsbl_r32_r8    
  movl %edi, %edi                #  34    0xfdf29  2      OPC=movl_r32_r32     
  movl %edx, 0xc(%r15,%rdi,1)    #  35    0xfdf2b  5      OPC=movl_m32_r32     
  leal -0x30(%rcx,%rax,2), %eax  #  36    0xfdf30  4      OPC=leal_r32_m16     
  movl %edx, %edx                #  37    0xfdf34  2      OPC=movl_r32_r32     
  movzbl (%r15,%rdx,1), %ecx     #  38    0xfdf36  5      OPC=movzbl_r32_m8    
  leal -0x30(%rcx), %esi         #  39    0xfdf3b  3      OPC=leal_r32_m16     
  xchgw %ax, %ax                 #  40    0xfdf3e  2      OPC=xchgw_ax_r16     
  cmpb $0x9, %sil                #  41    0xfdf40  4      OPC=cmpb_r8_imm8     
  jbe .L_fdf20                   #  42    0xfdf44  2      OPC=jbe_label        
  nop                            #  43    0xfdf46  1      OPC=nop              
  nop                            #  44    0xfdf47  1      OPC=nop              
  nop                            #  45    0xfdf48  1      OPC=nop              
  nop                            #  46    0xfdf49  1      OPC=nop              
  nop                            #  47    0xfdf4a  1      OPC=nop              
  nop                            #  48    0xfdf4b  1      OPC=nop              
  nop                            #  49    0xfdf4c  1      OPC=nop              
  nop                            #  50    0xfdf4d  1      OPC=nop              
  nop                            #  51    0xfdf4e  1      OPC=nop              
  nop                            #  52    0xfdf4f  1      OPC=nop              
  nop                            #  53    0xfdf50  1      OPC=nop              
  nop                            #  54    0xfdf51  1      OPC=nop              
  nop                            #  55    0xfdf52  1      OPC=nop              
  nop                            #  56    0xfdf53  1      OPC=nop              
  nop                            #  57    0xfdf54  1      OPC=nop              
  nop                            #  58    0xfdf55  1      OPC=nop              
  nop                            #  59    0xfdf56  1      OPC=nop              
  nop                            #  60    0xfdf57  1      OPC=nop              
  nop                            #  61    0xfdf58  1      OPC=nop              
  nop                            #  62    0xfdf59  1      OPC=nop              
  nop                            #  63    0xfdf5a  1      OPC=nop              
  nop                            #  64    0xfdf5b  1      OPC=nop              
  nop                            #  65    0xfdf5c  1      OPC=nop              
  nop                            #  66    0xfdf5d  1      OPC=nop              
  nop                            #  67    0xfdf5e  1      OPC=nop              
  nop                            #  68    0xfdf5f  1      OPC=nop              
.L_fdf60:                        #        0xfdf60  0      OPC=<label>          
  popq %r11                      #  69    0xfdf60  2      OPC=popq_r64_1       
  movl %eax, %edx                #  70    0xfdf62  2      OPC=movl_r32_r32     
  negl %edx                      #  71    0xfdf64  2      OPC=negl_r32         
  testl %r8d, %r8d               #  72    0xfdf66  3      OPC=testl_r32_r32    
  cmovnel %edx, %eax             #  73    0xfdf69  3      OPC=cmovnel_r32_r32  
  andl $0xffffffe0, %r11d        #  74    0xfdf6c  7      OPC=andl_r32_imm32   
  nop                            #  75    0xfdf73  1      OPC=nop              
  nop                            #  76    0xfdf74  1      OPC=nop              
  nop                            #  77    0xfdf75  1      OPC=nop              
  nop                            #  78    0xfdf76  1      OPC=nop              
  addq %r15, %r11                #  79    0xfdf77  3      OPC=addq_r64_r64     
  jmpq %r11                      #  80    0xfdf7a  3      OPC=jmpq_r64         
  nop                            #  81    0xfdf7d  1      OPC=nop              
  nop                            #  82    0xfdf7e  1      OPC=nop              
  nop                            #  83    0xfdf7f  1      OPC=nop              
  nop                            #  84    0xfdf80  1      OPC=nop              
  nop                            #  85    0xfdf81  1      OPC=nop              
  nop                            #  86    0xfdf82  1      OPC=nop              
  nop                            #  87    0xfdf83  1      OPC=nop              
  nop                            #  88    0xfdf84  1      OPC=nop              
  nop                            #  89    0xfdf85  1      OPC=nop              
  nop                            #  90    0xfdf86  1      OPC=nop              
.L_fdf80:                        #        0xfdf87  0      OPC=<label>          
  addl $0x1, %eax                #  91    0xfdf87  3      OPC=addl_r32_imm8    
  movb $0x1, %r8b                #  92    0xfdf8a  3      OPC=movb_r8_imm8     
  movl %edi, %edi                #  93    0xfdf8d  2      OPC=movl_r32_r32     
  movl %eax, 0xc(%r15,%rdi,1)    #  94    0xfdf8f  5      OPC=movl_m32_r32     
  movl %eax, %eax                #  95    0xfdf94  2      OPC=movl_r32_r32     
  movzbl (%r15,%rax,1), %ecx     #  96    0xfdf96  5      OPC=movzbl_r32_m8    
  jmpq .L_fdf00                  #  97    0xfdf9b  5      OPC=jmpq_label_1     
  nop                            #  98    0xfdfa0  1      OPC=nop              
  nop                            #  99    0xfdfa1  1      OPC=nop              
  nop                            #  100   0xfdfa2  1      OPC=nop              
  nop                            #  101   0xfdfa3  1      OPC=nop              
  nop                            #  102   0xfdfa4  1      OPC=nop              
  nop                            #  103   0xfdfa5  1      OPC=nop              
  nop                            #  104   0xfdfa6  1      OPC=nop              
.L_fdfa0:                        #        0xfdfa7  0      OPC=<label>          
  xorl %eax, %eax                #  105   0xfdfa7  2      OPC=xorl_r32_r32     
  jmpq .L_fdf60                  #  106   0xfdfa9  2      OPC=jmpq_label       
  nop                            #  107   0xfdfab  1      OPC=nop              
  nop                            #  108   0xfdfac  1      OPC=nop              
  nop                            #  109   0xfdfad  1      OPC=nop              
  nop                            #  110   0xfdfae  1      OPC=nop              
  nop                            #  111   0xfdfaf  1      OPC=nop              
  nop                            #  112   0xfdfb0  1      OPC=nop              
  nop                            #  113   0xfdfb1  1      OPC=nop              
  nop                            #  114   0xfdfb2  1      OPC=nop              
  nop                            #  115   0xfdfb3  1      OPC=nop              
  nop                            #  116   0xfdfb4  1      OPC=nop              
  nop                            #  117   0xfdfb5  1      OPC=nop              
  nop                            #  118   0xfdfb6  1      OPC=nop              
  nop                            #  119   0xfdfb7  1      OPC=nop              
  nop                            #  120   0xfdfb8  1      OPC=nop              
  nop                            #  121   0xfdfb9  1      OPC=nop              
  nop                            #  122   0xfdfba  1      OPC=nop              
  nop                            #  123   0xfdfbb  1      OPC=nop              
  nop                            #  124   0xfdfbc  1      OPC=nop              
  nop                            #  125   0xfdfbd  1      OPC=nop              
  nop                            #  126   0xfdfbe  1      OPC=nop              
  nop                            #  127   0xfdfbf  1      OPC=nop              
  nop                            #  128   0xfdfc0  1      OPC=nop              
  nop                            #  129   0xfdfc1  1      OPC=nop              
  nop                            #  130   0xfdfc2  1      OPC=nop              
  nop                            #  131   0xfdfc3  1      OPC=nop              
  nop                            #  132   0xfdfc4  1      OPC=nop              
  nop                            #  133   0xfdfc5  1      OPC=nop              
  nop                            #  134   0xfdfc6  1      OPC=nop              
                                                                               
.size d_number, .-d_number
