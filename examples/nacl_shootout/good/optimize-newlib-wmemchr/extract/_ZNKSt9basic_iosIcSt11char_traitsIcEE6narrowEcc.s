  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE6narrowEcc
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE6narrowEcc, @function

#! file-offset 0xa5300
#! rip-offset  0x65300
#! capacity    224 bytes

# Text                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE6narrowEcc:  #        0x65300  0      OPC=<label>         
  pushq %r12                                       #  1     0x65300  2      OPC=pushq_r64_1     
  movl %edi, %edi                                  #  2     0x65302  2      OPC=movl_r32_r32    
  pushq %rbx                                       #  3     0x65304  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                  #  4     0x65305  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                  #  5     0x65307  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                  #  6     0x6530a  3      OPC=addq_r64_r64    
  movl %edi, %edi                                  #  7     0x6530d  2      OPC=movl_r32_r32    
  movl 0x7c(%r15,%rdi,1), %edi                     #  8     0x6530f  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                 #  9     0x65314  3      OPC=testq_r64_r64   
  je .L_653c0                                      #  10    0x65317  6      OPC=je_label_1      
  nop                                              #  11    0x6531d  1      OPC=nop             
  nop                                              #  12    0x6531e  1      OPC=nop             
  nop                                              #  13    0x6531f  1      OPC=nop             
  movzbl %sil, %eax                                #  14    0x65320  4      OPC=movzbl_r32_r8   
  leaq 0x110(%rdi,%rax,1), %r12                    #  15    0x65324  8      OPC=leaq_r64_m16    
  movl %r12d, %r12d                                #  16    0x6532c  3      OPC=movl_r32_r32    
  movzbl 0xd(%r15,%r12,1), %eax                    #  17    0x6532f  6      OPC=movzbl_r32_m8   
  testb %al, %al                                   #  18    0x65335  2      OPC=testb_r8_r8     
  je .L_65380                                      #  19    0x65337  2      OPC=je_label        
  nop                                              #  20    0x65339  1      OPC=nop             
  nop                                              #  21    0x6533a  1      OPC=nop             
  nop                                              #  22    0x6533b  1      OPC=nop             
  nop                                              #  23    0x6533c  1      OPC=nop             
  nop                                              #  24    0x6533d  1      OPC=nop             
  nop                                              #  25    0x6533e  1      OPC=nop             
  nop                                              #  26    0x6533f  1      OPC=nop             
.L_65340:                                          #        0x65340  0      OPC=<label>         
  movl %eax, %ebx                                  #  27    0x65340  2      OPC=movl_r32_r32    
  nop                                              #  28    0x65342  1      OPC=nop             
  nop                                              #  29    0x65343  1      OPC=nop             
  nop                                              #  30    0x65344  1      OPC=nop             
  nop                                              #  31    0x65345  1      OPC=nop             
  nop                                              #  32    0x65346  1      OPC=nop             
  nop                                              #  33    0x65347  1      OPC=nop             
  nop                                              #  34    0x65348  1      OPC=nop             
  nop                                              #  35    0x65349  1      OPC=nop             
  nop                                              #  36    0x6534a  1      OPC=nop             
  nop                                              #  37    0x6534b  1      OPC=nop             
  nop                                              #  38    0x6534c  1      OPC=nop             
  nop                                              #  39    0x6534d  1      OPC=nop             
  nop                                              #  40    0x6534e  1      OPC=nop             
  nop                                              #  41    0x6534f  1      OPC=nop             
  nop                                              #  42    0x65350  1      OPC=nop             
  nop                                              #  43    0x65351  1      OPC=nop             
  nop                                              #  44    0x65352  1      OPC=nop             
  nop                                              #  45    0x65353  1      OPC=nop             
  nop                                              #  46    0x65354  1      OPC=nop             
  nop                                              #  47    0x65355  1      OPC=nop             
  nop                                              #  48    0x65356  1      OPC=nop             
  nop                                              #  49    0x65357  1      OPC=nop             
  nop                                              #  50    0x65358  1      OPC=nop             
  nop                                              #  51    0x65359  1      OPC=nop             
  nop                                              #  52    0x6535a  1      OPC=nop             
  nop                                              #  53    0x6535b  1      OPC=nop             
  nop                                              #  54    0x6535c  1      OPC=nop             
  nop                                              #  55    0x6535d  1      OPC=nop             
  nop                                              #  56    0x6535e  1      OPC=nop             
  nop                                              #  57    0x6535f  1      OPC=nop             
.L_65360:                                          #        0x65360  0      OPC=<label>         
  addl $0x8, %esp                                  #  58    0x65360  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                  #  59    0x65363  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                  #  60    0x65366  2      OPC=movl_r32_r32    
  popq %rbx                                        #  61    0x65368  1      OPC=popq_r64_1      
  popq %r12                                        #  62    0x65369  2      OPC=popq_r64_1      
  popq %r11                                        #  63    0x6536b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                          #  64    0x6536d  7      OPC=andl_r32_imm32  
  nop                                              #  65    0x65374  1      OPC=nop             
  nop                                              #  66    0x65375  1      OPC=nop             
  nop                                              #  67    0x65376  1      OPC=nop             
  nop                                              #  68    0x65377  1      OPC=nop             
  addq %r15, %r11                                  #  69    0x65378  3      OPC=addq_r64_r64    
  jmpq %r11                                        #  70    0x6537b  3      OPC=jmpq_r64        
  nop                                              #  71    0x6537e  1      OPC=nop             
  nop                                              #  72    0x6537f  1      OPC=nop             
  nop                                              #  73    0x65380  1      OPC=nop             
  nop                                              #  74    0x65381  1      OPC=nop             
  nop                                              #  75    0x65382  1      OPC=nop             
  nop                                              #  76    0x65383  1      OPC=nop             
  nop                                              #  77    0x65384  1      OPC=nop             
  nop                                              #  78    0x65385  1      OPC=nop             
  nop                                              #  79    0x65386  1      OPC=nop             
.L_65380:                                          #        0x65387  0      OPC=<label>         
  movl %edi, %edi                                  #  80    0x65387  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                         #  81    0x65389  4      OPC=movl_r32_m32    
  movsbl %dl, %edx                                 #  82    0x6538d  3      OPC=movsbl_r32_r8   
  movsbl %sil, %esi                                #  83    0x65390  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                  #  84    0x65394  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                     #  85    0x65396  5      OPC=movl_r32_m32    
  nop                                              #  86    0x6539b  1      OPC=nop             
  nop                                              #  87    0x6539c  1      OPC=nop             
  nop                                              #  88    0x6539d  1      OPC=nop             
  nop                                              #  89    0x6539e  1      OPC=nop             
  andl $0xffffffe0, %eax                           #  90    0x6539f  6      OPC=andl_r32_imm32  
  nop                                              #  91    0x653a5  1      OPC=nop             
  nop                                              #  92    0x653a6  1      OPC=nop             
  nop                                              #  93    0x653a7  1      OPC=nop             
  addq %r15, %rax                                  #  94    0x653a8  3      OPC=addq_r64_r64    
  callq %rax                                       #  95    0x653ab  2      OPC=callq_r64       
  cmpb %al, %bl                                    #  96    0x653ad  2      OPC=cmpb_r8_r8      
  je .L_65360                                      #  97    0x653af  2      OPC=je_label        
  movl %r12d, %r12d                                #  98    0x653b1  3      OPC=movl_r32_r32    
  movb %al, 0xd(%r15,%r12,1)                       #  99    0x653b4  5      OPC=movb_m8_r8      
  jmpq .L_65340                                    #  100   0x653b9  2      OPC=jmpq_label      
  nop                                              #  101   0x653bb  1      OPC=nop             
  nop                                              #  102   0x653bc  1      OPC=nop             
  nop                                              #  103   0x653bd  1      OPC=nop             
  nop                                              #  104   0x653be  1      OPC=nop             
  nop                                              #  105   0x653bf  1      OPC=nop             
  nop                                              #  106   0x653c0  1      OPC=nop             
  nop                                              #  107   0x653c1  1      OPC=nop             
  nop                                              #  108   0x653c2  1      OPC=nop             
  nop                                              #  109   0x653c3  1      OPC=nop             
  nop                                              #  110   0x653c4  1      OPC=nop             
  nop                                              #  111   0x653c5  1      OPC=nop             
  nop                                              #  112   0x653c6  1      OPC=nop             
  nop                                              #  113   0x653c7  1      OPC=nop             
  nop                                              #  114   0x653c8  1      OPC=nop             
  nop                                              #  115   0x653c9  1      OPC=nop             
  nop                                              #  116   0x653ca  1      OPC=nop             
  nop                                              #  117   0x653cb  1      OPC=nop             
  nop                                              #  118   0x653cc  1      OPC=nop             
.L_653c0:                                          #        0x653cd  0      OPC=<label>         
  nop                                              #  119   0x653cd  1      OPC=nop             
  nop                                              #  120   0x653ce  1      OPC=nop             
  nop                                              #  121   0x653cf  1      OPC=nop             
  nop                                              #  122   0x653d0  1      OPC=nop             
  nop                                              #  123   0x653d1  1      OPC=nop             
  nop                                              #  124   0x653d2  1      OPC=nop             
  nop                                              #  125   0x653d3  1      OPC=nop             
  nop                                              #  126   0x653d4  1      OPC=nop             
  nop                                              #  127   0x653d5  1      OPC=nop             
  nop                                              #  128   0x653d6  1      OPC=nop             
  nop                                              #  129   0x653d7  1      OPC=nop             
  nop                                              #  130   0x653d8  1      OPC=nop             
  nop                                              #  131   0x653d9  1      OPC=nop             
  nop                                              #  132   0x653da  1      OPC=nop             
  nop                                              #  133   0x653db  1      OPC=nop             
  nop                                              #  134   0x653dc  1      OPC=nop             
  nop                                              #  135   0x653dd  1      OPC=nop             
  nop                                              #  136   0x653de  1      OPC=nop             
  nop                                              #  137   0x653df  1      OPC=nop             
  nop                                              #  138   0x653e0  1      OPC=nop             
  nop                                              #  139   0x653e1  1      OPC=nop             
  nop                                              #  140   0x653e2  1      OPC=nop             
  nop                                              #  141   0x653e3  1      OPC=nop             
  nop                                              #  142   0x653e4  1      OPC=nop             
  nop                                              #  143   0x653e5  1      OPC=nop             
  nop                                              #  144   0x653e6  1      OPC=nop             
  nop                                              #  145   0x653e7  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                   #  146   0x653e8  5      OPC=callq_label     
                                                                                                
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE6narrowEcc, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE6narrowEcc
