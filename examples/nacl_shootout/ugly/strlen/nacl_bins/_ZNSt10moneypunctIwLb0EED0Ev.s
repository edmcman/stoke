  .text
  .globl _ZNSt10moneypunctIwLb0EED0Ev
  .type _ZNSt10moneypunctIwLb0EED0Ev, @function

#! file-offset 0x11b200
#! rip-offset  0xdb200
#! capacity    192 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt10moneypunctIwLb0EED0Ev:     #        0xdb200  0      OPC=0     
  pushq %rbx                       #  1     0xdb200  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xdb201  2      OPC=1157  
  subl $0x10, %esp                 #  3     0xdb203  3      OPC=2384  
  addq %r15, %rsp                  #  4     0xdb206  3      OPC=72    
  movl %ebx, %ebx                  #  5     0xdb209  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb20b  5      OPC=1156  
  movl %ebx, %ebx                  #  7     0xdb210  2      OPC=1157  
  movl $0x1003c0c8, (%r15,%rbx,1)  #  8     0xdb212  8      OPC=1135  
  testq %rdi, %rdi                 #  9     0xdb21a  3      OPC=2438  
  nop                              #  10    0xdb21d  1      OPC=1343  
  nop                              #  11    0xdb21e  1      OPC=1343  
  nop                              #  12    0xdb21f  1      OPC=1343  
  je .L_db240                      #  13    0xdb220  6      OPC=893   
  nop                              #  14    0xdb226  1      OPC=1343  
  nop                              #  15    0xdb227  1      OPC=1343  
  movl %edi, %edi                  #  16    0xdb228  2      OPC=1157  
  movl (%r15,%rdi,1), %eax         #  17    0xdb22a  4      OPC=1156  
  movl %eax, %eax                  #  18    0xdb22e  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax      #  19    0xdb230  5      OPC=1156  
  nop                              #  20    0xdb235  1      OPC=1343  
  nop                              #  21    0xdb236  1      OPC=1343  
  nop                              #  22    0xdb237  1      OPC=1343  
  nop                              #  23    0xdb238  1      OPC=1343  
  nop                              #  24    0xdb239  1      OPC=1343  
  nop                              #  25    0xdb23a  1      OPC=1343  
  nop                              #  26    0xdb23b  1      OPC=1343  
  nop                              #  27    0xdb23c  1      OPC=1343  
  nop                              #  28    0xdb23d  1      OPC=1343  
  andl $0xffffffe0, %eax           #  29    0xdb23e  6      OPC=131   
  nop                              #  30    0xdb244  1      OPC=1343  
  nop                              #  31    0xdb245  1      OPC=1343  
  nop                              #  32    0xdb246  1      OPC=1343  
  addq %r15, %rax                  #  33    0xdb247  3      OPC=72    
  callq %rax                       #  34    0xdb24a  2      OPC=258   
.L_db240:                          #        0xdb24c  0      OPC=0     
  movl %ebx, %edi                  #  35    0xdb24c  2      OPC=1157  
  nop                              #  36    0xdb24e  1      OPC=1343  
  nop                              #  37    0xdb24f  1      OPC=1343  
  nop                              #  38    0xdb250  1      OPC=1343  
  nop                              #  39    0xdb251  1      OPC=1343  
  nop                              #  40    0xdb252  1      OPC=1343  
  nop                              #  41    0xdb253  1      OPC=1343  
  nop                              #  42    0xdb254  1      OPC=1343  
  nop                              #  43    0xdb255  1      OPC=1343  
  nop                              #  44    0xdb256  1      OPC=1343  
  nop                              #  45    0xdb257  1      OPC=1343  
  nop                              #  46    0xdb258  1      OPC=1343  
  nop                              #  47    0xdb259  1      OPC=1343  
  nop                              #  48    0xdb25a  1      OPC=1343  
  nop                              #  49    0xdb25b  1      OPC=1343  
  nop                              #  50    0xdb25c  1      OPC=1343  
  nop                              #  51    0xdb25d  1      OPC=1343  
  nop                              #  52    0xdb25e  1      OPC=1343  
  nop                              #  53    0xdb25f  1      OPC=1343  
  nop                              #  54    0xdb260  1      OPC=1343  
  nop                              #  55    0xdb261  1      OPC=1343  
  nop                              #  56    0xdb262  1      OPC=1343  
  nop                              #  57    0xdb263  1      OPC=1343  
  nop                              #  58    0xdb264  1      OPC=1343  
  nop                              #  59    0xdb265  1      OPC=1343  
  nop                              #  60    0xdb266  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev    #  61    0xdb267  5      OPC=260   
  movl %ebx, %edi                  #  62    0xdb26c  2      OPC=1157  
  addl $0x10, %esp                 #  63    0xdb26e  3      OPC=65    
  addq %r15, %rsp                  #  64    0xdb271  3      OPC=72    
  popq %rbx                        #  65    0xdb274  1      OPC=1694  
  jmpq ._ZdlPv                     #  66    0xdb275  5      OPC=930   
  nop                              #  67    0xdb27a  1      OPC=1343  
  nop                              #  68    0xdb27b  1      OPC=1343  
  nop                              #  69    0xdb27c  1      OPC=1343  
  nop                              #  70    0xdb27d  1      OPC=1343  
  nop                              #  71    0xdb27e  1      OPC=1343  
  nop                              #  72    0xdb27f  1      OPC=1343  
  nop                              #  73    0xdb280  1      OPC=1343  
  nop                              #  74    0xdb281  1      OPC=1343  
  nop                              #  75    0xdb282  1      OPC=1343  
  nop                              #  76    0xdb283  1      OPC=1343  
  nop                              #  77    0xdb284  1      OPC=1343  
  nop                              #  78    0xdb285  1      OPC=1343  
  nop                              #  79    0xdb286  1      OPC=1343  
  nop                              #  80    0xdb287  1      OPC=1343  
  nop                              #  81    0xdb288  1      OPC=1343  
  nop                              #  82    0xdb289  1      OPC=1343  
  nop                              #  83    0xdb28a  1      OPC=1343  
  nop                              #  84    0xdb28b  1      OPC=1343  
  movl %ebx, %edi                  #  85    0xdb28c  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  86    0xdb28e  4      OPC=1136  
  nop                              #  87    0xdb292  1      OPC=1343  
  nop                              #  88    0xdb293  1      OPC=1343  
  nop                              #  89    0xdb294  1      OPC=1343  
  nop                              #  90    0xdb295  1      OPC=1343  
  nop                              #  91    0xdb296  1      OPC=1343  
  nop                              #  92    0xdb297  1      OPC=1343  
  nop                              #  93    0xdb298  1      OPC=1343  
  nop                              #  94    0xdb299  1      OPC=1343  
  nop                              #  95    0xdb29a  1      OPC=1343  
  nop                              #  96    0xdb29b  1      OPC=1343  
  nop                              #  97    0xdb29c  1      OPC=1343  
  nop                              #  98    0xdb29d  1      OPC=1343  
  nop                              #  99    0xdb29e  1      OPC=1343  
  nop                              #  100   0xdb29f  1      OPC=1343  
  nop                              #  101   0xdb2a0  1      OPC=1343  
  nop                              #  102   0xdb2a1  1      OPC=1343  
  nop                              #  103   0xdb2a2  1      OPC=1343  
  nop                              #  104   0xdb2a3  1      OPC=1343  
  nop                              #  105   0xdb2a4  1      OPC=1343  
  nop                              #  106   0xdb2a5  1      OPC=1343  
  nop                              #  107   0xdb2a6  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev    #  108   0xdb2a7  5      OPC=260   
  movl 0x8(%rsp), %eax             #  109   0xdb2ac  4      OPC=1156  
  movl %eax, %edi                  #  110   0xdb2b0  2      OPC=1157  
  nop                              #  111   0xdb2b2  1      OPC=1343  
  nop                              #  112   0xdb2b3  1      OPC=1343  
  nop                              #  113   0xdb2b4  1      OPC=1343  
  nop                              #  114   0xdb2b5  1      OPC=1343  
  nop                              #  115   0xdb2b6  1      OPC=1343  
  nop                              #  116   0xdb2b7  1      OPC=1343  
  nop                              #  117   0xdb2b8  1      OPC=1343  
  nop                              #  118   0xdb2b9  1      OPC=1343  
  nop                              #  119   0xdb2ba  1      OPC=1343  
  nop                              #  120   0xdb2bb  1      OPC=1343  
  nop                              #  121   0xdb2bc  1      OPC=1343  
  nop                              #  122   0xdb2bd  1      OPC=1343  
  nop                              #  123   0xdb2be  1      OPC=1343  
  nop                              #  124   0xdb2bf  1      OPC=1343  
  nop                              #  125   0xdb2c0  1      OPC=1343  
  nop                              #  126   0xdb2c1  1      OPC=1343  
  nop                              #  127   0xdb2c2  1      OPC=1343  
  nop                              #  128   0xdb2c3  1      OPC=1343  
  nop                              #  129   0xdb2c4  1      OPC=1343  
  nop                              #  130   0xdb2c5  1      OPC=1343  
  nop                              #  131   0xdb2c6  1      OPC=1343  
  callq ._Unwind_Resume            #  132   0xdb2c7  5      OPC=260   
                                                                      
.size _ZNSt10moneypunctIwLb0EED0Ev, .-_ZNSt10moneypunctIwLb0EED0Ev
