  .text
  .globl __cxa_current_exception_type
  .type __cxa_current_exception_type, @function

#! file-offset 0x1472c0
#! rip-offset  0x1072c0
#! capacity    160 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__cxa_current_exception_type:   #        0x1072c0  0      OPC=<label>         
  subl $0x8, %esp                #  1     0x1072c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  2     0x1072c3  3      OPC=addq_r64_r64    
  nop                            #  3     0x1072c6  1      OPC=nop             
  nop                            #  4     0x1072c7  1      OPC=nop             
  nop                            #  5     0x1072c8  1      OPC=nop             
  nop                            #  6     0x1072c9  1      OPC=nop             
  nop                            #  7     0x1072ca  1      OPC=nop             
  nop                            #  8     0x1072cb  1      OPC=nop             
  nop                            #  9     0x1072cc  1      OPC=nop             
  nop                            #  10    0x1072cd  1      OPC=nop             
  nop                            #  11    0x1072ce  1      OPC=nop             
  nop                            #  12    0x1072cf  1      OPC=nop             
  nop                            #  13    0x1072d0  1      OPC=nop             
  nop                            #  14    0x1072d1  1      OPC=nop             
  nop                            #  15    0x1072d2  1      OPC=nop             
  nop                            #  16    0x1072d3  1      OPC=nop             
  nop                            #  17    0x1072d4  1      OPC=nop             
  nop                            #  18    0x1072d5  1      OPC=nop             
  nop                            #  19    0x1072d6  1      OPC=nop             
  nop                            #  20    0x1072d7  1      OPC=nop             
  nop                            #  21    0x1072d8  1      OPC=nop             
  nop                            #  22    0x1072d9  1      OPC=nop             
  nop                            #  23    0x1072da  1      OPC=nop             
  callq .__cxa_get_globals       #  24    0x1072db  5      OPC=callq_label     
  movl %eax, %eax                #  25    0x1072e0  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  26    0x1072e2  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx       #  27    0x1072e4  4      OPC=movl_r32_m32    
  xorl %eax, %eax                #  28    0x1072e8  2      OPC=xorl_r32_r32    
  testq %rdx, %rdx               #  29    0x1072ea  3      OPC=testq_r64_r64   
  je .L_107320                   #  30    0x1072ed  2      OPC=je_label        
  movl %edx, %edx                #  31    0x1072ef  2      OPC=movl_r32_r32    
  testb $0x1, 0x30(%r15,%rdx,1)  #  32    0x1072f1  6      OPC=testb_m8_imm8   
  jne .L_107340                  #  33    0x1072f7  2      OPC=jne_label       
  nop                            #  34    0x1072f9  1      OPC=nop             
  nop                            #  35    0x1072fa  1      OPC=nop             
  nop                            #  36    0x1072fb  1      OPC=nop             
  nop                            #  37    0x1072fc  1      OPC=nop             
  nop                            #  38    0x1072fd  1      OPC=nop             
  nop                            #  39    0x1072fe  1      OPC=nop             
  nop                            #  40    0x1072ff  1      OPC=nop             
.L_107300:                       #        0x107300  0      OPC=<label>         
  movl %edx, %edx                #  41    0x107300  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax       #  42    0x107302  4      OPC=movl_r32_m32    
  nop                            #  43    0x107306  1      OPC=nop             
  nop                            #  44    0x107307  1      OPC=nop             
  nop                            #  45    0x107308  1      OPC=nop             
  nop                            #  46    0x107309  1      OPC=nop             
  nop                            #  47    0x10730a  1      OPC=nop             
  nop                            #  48    0x10730b  1      OPC=nop             
  nop                            #  49    0x10730c  1      OPC=nop             
  nop                            #  50    0x10730d  1      OPC=nop             
  nop                            #  51    0x10730e  1      OPC=nop             
  nop                            #  52    0x10730f  1      OPC=nop             
  nop                            #  53    0x107310  1      OPC=nop             
  nop                            #  54    0x107311  1      OPC=nop             
  nop                            #  55    0x107312  1      OPC=nop             
  nop                            #  56    0x107313  1      OPC=nop             
  nop                            #  57    0x107314  1      OPC=nop             
  nop                            #  58    0x107315  1      OPC=nop             
  nop                            #  59    0x107316  1      OPC=nop             
  nop                            #  60    0x107317  1      OPC=nop             
  nop                            #  61    0x107318  1      OPC=nop             
  nop                            #  62    0x107319  1      OPC=nop             
  nop                            #  63    0x10731a  1      OPC=nop             
  nop                            #  64    0x10731b  1      OPC=nop             
  nop                            #  65    0x10731c  1      OPC=nop             
  nop                            #  66    0x10731d  1      OPC=nop             
  nop                            #  67    0x10731e  1      OPC=nop             
  nop                            #  68    0x10731f  1      OPC=nop             
.L_107320:                       #        0x107320  0      OPC=<label>         
  addl $0x8, %esp                #  69    0x107320  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  70    0x107323  3      OPC=addq_r64_r64    
  popq %r11                      #  71    0x107326  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  72    0x107328  7      OPC=andl_r32_imm32  
  nop                            #  73    0x10732f  1      OPC=nop             
  nop                            #  74    0x107330  1      OPC=nop             
  nop                            #  75    0x107331  1      OPC=nop             
  nop                            #  76    0x107332  1      OPC=nop             
  addq %r15, %r11                #  77    0x107333  3      OPC=addq_r64_r64    
  jmpq %r11                      #  78    0x107336  3      OPC=jmpq_r64        
  nop                            #  79    0x107339  1      OPC=nop             
  nop                            #  80    0x10733a  1      OPC=nop             
  nop                            #  81    0x10733b  1      OPC=nop             
  nop                            #  82    0x10733c  1      OPC=nop             
  nop                            #  83    0x10733d  1      OPC=nop             
  nop                            #  84    0x10733e  1      OPC=nop             
  nop                            #  85    0x10733f  1      OPC=nop             
  nop                            #  86    0x107340  1      OPC=nop             
  nop                            #  87    0x107341  1      OPC=nop             
  nop                            #  88    0x107342  1      OPC=nop             
  nop                            #  89    0x107343  1      OPC=nop             
  nop                            #  90    0x107344  1      OPC=nop             
  nop                            #  91    0x107345  1      OPC=nop             
  nop                            #  92    0x107346  1      OPC=nop             
.L_107340:                       #        0x107347  0      OPC=<label>         
  movl %edx, %edx                #  93    0x107347  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx       #  94    0x107349  4      OPC=movl_r32_m32    
  subl $0x50, %edx               #  95    0x10734d  3      OPC=subl_r32_imm8   
  jmpq .L_107300                 #  96    0x107350  2      OPC=jmpq_label      
  nop                            #  97    0x107352  1      OPC=nop             
  nop                            #  98    0x107353  1      OPC=nop             
  nop                            #  99    0x107354  1      OPC=nop             
  nop                            #  100   0x107355  1      OPC=nop             
  nop                            #  101   0x107356  1      OPC=nop             
  nop                            #  102   0x107357  1      OPC=nop             
  nop                            #  103   0x107358  1      OPC=nop             
  nop                            #  104   0x107359  1      OPC=nop             
  nop                            #  105   0x10735a  1      OPC=nop             
  nop                            #  106   0x10735b  1      OPC=nop             
  nop                            #  107   0x10735c  1      OPC=nop             
  nop                            #  108   0x10735d  1      OPC=nop             
  nop                            #  109   0x10735e  1      OPC=nop             
  nop                            #  110   0x10735f  1      OPC=nop             
  nop                            #  111   0x107360  1      OPC=nop             
  nop                            #  112   0x107361  1      OPC=nop             
  nop                            #  113   0x107362  1      OPC=nop             
  nop                            #  114   0x107363  1      OPC=nop             
  nop                            #  115   0x107364  1      OPC=nop             
  nop                            #  116   0x107365  1      OPC=nop             
  nop                            #  117   0x107366  1      OPC=nop             
                                                                               
.size __cxa_current_exception_type, .-__cxa_current_exception_type
