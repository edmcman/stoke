  .text
  .globl __gmpn_invertappr
  .type __gmpn_invertappr, @function

#! file-offset 0x92480
#! rip-offset  0x52480
#! capacity    416 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
.__gmpn_invertappr:                 #        0x52480  0      OPC=0     
  pushq %rbp                        #  1     0x52480  1      OPC=1861  
  movl %ecx, %ecx                   #  2     0x52481  2      OPC=1157  
  movq %rsp, %rbp                   #  3     0x52483  3      OPC=1162  
  pushq %r12                        #  4     0x52486  2      OPC=1861  
  movl %esi, %r12d                  #  5     0x52488  3      OPC=1157  
  pushq %rbx                        #  6     0x5248b  1      OPC=1861  
  movl %edi, %ebx                   #  7     0x5248c  2      OPC=1157  
  subl $0x20, %esp                  #  8     0x5248e  3      OPC=2384  
  addq %r15, %rsp                   #  9     0x52491  3      OPC=72    
  testq %rcx, %rcx                  #  10    0x52494  3      OPC=2438  
  movl $0x0, -0x14(%rbp)            #  11    0x52497  7      OPC=1135  
  xchgw %ax, %ax                    #  12    0x5249e  2      OPC=3700  
  je .L_52560                       #  13    0x524a0  6      OPC=893   
  nop                               #  14    0x524a6  1      OPC=1343  
  nop                               #  15    0x524a7  1      OPC=1343  
  nop                               #  16    0x524a8  1      OPC=1343  
  nop                               #  17    0x524a9  1      OPC=1343  
  nop                               #  18    0x524aa  1      OPC=1343  
  nop                               #  19    0x524ab  1      OPC=1343  
  nop                               #  20    0x524ac  1      OPC=1343  
  nop                               #  21    0x524ad  1      OPC=1343  
  nop                               #  22    0x524ae  1      OPC=1343  
  nop                               #  23    0x524af  1      OPC=1343  
  nop                               #  24    0x524b0  1      OPC=1343  
  nop                               #  25    0x524b1  1      OPC=1343  
  nop                               #  26    0x524b2  1      OPC=1343  
  nop                               #  27    0x524b3  1      OPC=1343  
  nop                               #  28    0x524b4  1      OPC=1343  
  nop                               #  29    0x524b5  1      OPC=1343  
  nop                               #  30    0x524b6  1      OPC=1343  
  nop                               #  31    0x524b7  1      OPC=1343  
  nop                               #  32    0x524b8  1      OPC=1343  
  nop                               #  33    0x524b9  1      OPC=1343  
  nop                               #  34    0x524ba  1      OPC=1343  
  nop                               #  35    0x524bb  1      OPC=1343  
  nop                               #  36    0x524bc  1      OPC=1343  
  nop                               #  37    0x524bd  1      OPC=1343  
  nop                               #  38    0x524be  1      OPC=1343  
  nop                               #  39    0x524bf  1      OPC=1343  
.L_524c0:                           #        0x524c0  0      OPC=0     
  cmpl $0xc7, %edx                  #  40    0x524c0  6      OPC=469   
  jg .L_52520                       #  41    0x524c6  6      OPC=901   
  nop                               #  42    0x524cc  1      OPC=1343  
  nop                               #  43    0x524cd  1      OPC=1343  
  movl %r12d, %esi                  #  44    0x524ce  3      OPC=1157  
  movl %ebx, %edi                   #  45    0x524d1  2      OPC=1157  
  nop                               #  46    0x524d3  1      OPC=1343  
  nop                               #  47    0x524d4  1      OPC=1343  
  nop                               #  48    0x524d5  1      OPC=1343  
  nop                               #  49    0x524d6  1      OPC=1343  
  nop                               #  50    0x524d7  1      OPC=1343  
  nop                               #  51    0x524d8  1      OPC=1343  
  nop                               #  52    0x524d9  1      OPC=1343  
  nop                               #  53    0x524da  1      OPC=1343  
  nop                               #  54    0x524db  1      OPC=1343  
  nop                               #  55    0x524dc  1      OPC=1343  
  nop                               #  56    0x524dd  1      OPC=1343  
  nop                               #  57    0x524de  1      OPC=1343  
  nop                               #  58    0x524df  1      OPC=1343  
  nop                               #  59    0x524e0  1      OPC=1343  
  callq .mpn_bc_invertappr          #  60    0x524e1  5      OPC=260   
.L_524e0:                           #        0x524e6  0      OPC=0     
  movl -0x14(%rbp), %edi            #  61    0x524e6  3      OPC=1156  
  testq %rdi, %rdi                  #  62    0x524e9  3      OPC=2438  
  jne .L_525a0                      #  63    0x524ec  6      OPC=963   
  nop                               #  64    0x524f2  1      OPC=1343  
  nop                               #  65    0x524f3  1      OPC=1343  
  nop                               #  66    0x524f4  1      OPC=1343  
  nop                               #  67    0x524f5  1      OPC=1343  
  nop                               #  68    0x524f6  1      OPC=1343  
  nop                               #  69    0x524f7  1      OPC=1343  
  nop                               #  70    0x524f8  1      OPC=1343  
  nop                               #  71    0x524f9  1      OPC=1343  
  nop                               #  72    0x524fa  1      OPC=1343  
  nop                               #  73    0x524fb  1      OPC=1343  
  nop                               #  74    0x524fc  1      OPC=1343  
  nop                               #  75    0x524fd  1      OPC=1343  
  nop                               #  76    0x524fe  1      OPC=1343  
  nop                               #  77    0x524ff  1      OPC=1343  
  nop                               #  78    0x52500  1      OPC=1343  
  nop                               #  79    0x52501  1      OPC=1343  
  nop                               #  80    0x52502  1      OPC=1343  
  nop                               #  81    0x52503  1      OPC=1343  
  nop                               #  82    0x52504  1      OPC=1343  
  nop                               #  83    0x52505  1      OPC=1343  
.L_52500:                           #        0x52506  0      OPC=0     
  leal -0x10(%rbp), %esp            #  84    0x52506  3      OPC=1066  
  addq %r15, %rsp                   #  85    0x52509  3      OPC=72    
  popq %rbx                         #  86    0x5250c  1      OPC=1694  
  popq %r12                         #  87    0x5250d  2      OPC=1694  
  popq %r11                         #  88    0x5250f  2      OPC=1694  
  movl %r11d, %ebp                  #  89    0x52511  3      OPC=1157  
  addq %r15, %rbp                   #  90    0x52514  3      OPC=72    
  popq %r11                         #  91    0x52517  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  92    0x52519  7      OPC=131   
  nop                               #  93    0x52520  1      OPC=1343  
  nop                               #  94    0x52521  1      OPC=1343  
  nop                               #  95    0x52522  1      OPC=1343  
  nop                               #  96    0x52523  1      OPC=1343  
  addq %r15, %r11                   #  97    0x52524  3      OPC=72    
  jmpq %r11                         #  98    0x52527  3      OPC=928   
  nop                               #  99    0x5252a  1      OPC=1343  
  nop                               #  100   0x5252b  1      OPC=1343  
  nop                               #  101   0x5252c  1      OPC=1343  
.L_52520:                           #        0x5252d  0      OPC=0     
  movl %r12d, %esi                  #  102   0x5252d  3      OPC=1157  
  movl %ebx, %edi                   #  103   0x52530  2      OPC=1157  
  nop                               #  104   0x52532  1      OPC=1343  
  nop                               #  105   0x52533  1      OPC=1343  
  nop                               #  106   0x52534  1      OPC=1343  
  nop                               #  107   0x52535  1      OPC=1343  
  nop                               #  108   0x52536  1      OPC=1343  
  nop                               #  109   0x52537  1      OPC=1343  
  nop                               #  110   0x52538  1      OPC=1343  
  nop                               #  111   0x52539  1      OPC=1343  
  nop                               #  112   0x5253a  1      OPC=1343  
  nop                               #  113   0x5253b  1      OPC=1343  
  nop                               #  114   0x5253c  1      OPC=1343  
  nop                               #  115   0x5253d  1      OPC=1343  
  nop                               #  116   0x5253e  1      OPC=1343  
  nop                               #  117   0x5253f  1      OPC=1343  
  nop                               #  118   0x52540  1      OPC=1343  
  nop                               #  119   0x52541  1      OPC=1343  
  nop                               #  120   0x52542  1      OPC=1343  
  nop                               #  121   0x52543  1      OPC=1343  
  nop                               #  122   0x52544  1      OPC=1343  
  nop                               #  123   0x52545  1      OPC=1343  
  nop                               #  124   0x52546  1      OPC=1343  
  nop                               #  125   0x52547  1      OPC=1343  
  callq .__gmpn_ni_invertappr       #  126   0x52548  5      OPC=260   
  jmpq .L_524e0                     #  127   0x5254d  5      OPC=930   
  nop                               #  128   0x52552  1      OPC=1343  
  nop                               #  129   0x52553  1      OPC=1343  
  nop                               #  130   0x52554  1      OPC=1343  
  nop                               #  131   0x52555  1      OPC=1343  
  nop                               #  132   0x52556  1      OPC=1343  
  nop                               #  133   0x52557  1      OPC=1343  
  nop                               #  134   0x52558  1      OPC=1343  
  nop                               #  135   0x52559  1      OPC=1343  
  nop                               #  136   0x5255a  1      OPC=1343  
  nop                               #  137   0x5255b  1      OPC=1343  
  nop                               #  138   0x5255c  1      OPC=1343  
  nop                               #  139   0x5255d  1      OPC=1343  
  nop                               #  140   0x5255e  1      OPC=1343  
  nop                               #  141   0x5255f  1      OPC=1343  
  nop                               #  142   0x52560  1      OPC=1343  
  nop                               #  143   0x52561  1      OPC=1343  
  nop                               #  144   0x52562  1      OPC=1343  
  nop                               #  145   0x52563  1      OPC=1343  
  nop                               #  146   0x52564  1      OPC=1343  
  nop                               #  147   0x52565  1      OPC=1343  
  nop                               #  148   0x52566  1      OPC=1343  
  nop                               #  149   0x52567  1      OPC=1343  
  nop                               #  150   0x52568  1      OPC=1343  
  nop                               #  151   0x52569  1      OPC=1343  
  nop                               #  152   0x5256a  1      OPC=1343  
  nop                               #  153   0x5256b  1      OPC=1343  
  nop                               #  154   0x5256c  1      OPC=1343  
  nop                               #  155   0x5256d  1      OPC=1343  
  nop                               #  156   0x5256e  1      OPC=1343  
  nop                               #  157   0x5256f  1      OPC=1343  
  nop                               #  158   0x52570  1      OPC=1343  
  nop                               #  159   0x52571  1      OPC=1343  
.L_52560:                           #        0x52572  0      OPC=0     
  leal 0x2(%rdx,%rdx,2), %eax       #  160   0x52572  4      OPC=1066  
  shll $0x2, %eax                   #  161   0x52576  3      OPC=2269  
  cmpl $0xffff, %eax                #  162   0x52579  5      OPC=451   
  ja .L_525e0                       #  163   0x5257e  6      OPC=863   
  nop                               #  164   0x52584  1      OPC=1343  
  nop                               #  165   0x52585  1      OPC=1343  
  movl %eax, %eax                   #  166   0x52586  2      OPC=1157  
  addq $0x1e, %rax                  #  167   0x52588  4      OPC=70    
  shrq $0x4, %rax                   #  168   0x5258c  4      OPC=2315  
  shlq $0x4, %rax                   #  169   0x52590  4      OPC=2272  
  nop                               #  170   0x52594  1      OPC=1343  
  nop                               #  171   0x52595  1      OPC=1343  
  nop                               #  172   0x52596  1      OPC=1343  
  nop                               #  173   0x52597  1      OPC=1343  
  subl %eax, %esp                   #  174   0x52598  2      OPC=2386  
  addq %r15, %rsp                   #  175   0x5259a  3      OPC=72    
  leal 0xf(%rsp), %ecx              #  176   0x5259d  4      OPC=1066  
  andl $0xfffffff0, %ecx            #  177   0x525a1  6      OPC=131   
  nop                               #  178   0x525a7  1      OPC=1343  
  nop                               #  179   0x525a8  1      OPC=1343  
  nop                               #  180   0x525a9  1      OPC=1343  
  jmpq .L_524c0                     #  181   0x525aa  5      OPC=930   
  nop                               #  182   0x525af  1      OPC=1343  
  nop                               #  183   0x525b0  1      OPC=1343  
  nop                               #  184   0x525b1  1      OPC=1343  
  nop                               #  185   0x525b2  1      OPC=1343  
  nop                               #  186   0x525b3  1      OPC=1343  
  nop                               #  187   0x525b4  1      OPC=1343  
  nop                               #  188   0x525b5  1      OPC=1343  
  nop                               #  189   0x525b6  1      OPC=1343  
  nop                               #  190   0x525b7  1      OPC=1343  
  nop                               #  191   0x525b8  1      OPC=1343  
  nop                               #  192   0x525b9  1      OPC=1343  
  nop                               #  193   0x525ba  1      OPC=1343  
  nop                               #  194   0x525bb  1      OPC=1343  
  nop                               #  195   0x525bc  1      OPC=1343  
  nop                               #  196   0x525bd  1      OPC=1343  
.L_525a0:                           #        0x525be  0      OPC=0     
  movl %eax, -0x28(%rbp)            #  197   0x525be  3      OPC=1136  
  nop                               #  198   0x525c1  1      OPC=1343  
  nop                               #  199   0x525c2  1      OPC=1343  
  nop                               #  200   0x525c3  1      OPC=1343  
  nop                               #  201   0x525c4  1      OPC=1343  
  nop                               #  202   0x525c5  1      OPC=1343  
  nop                               #  203   0x525c6  1      OPC=1343  
  nop                               #  204   0x525c7  1      OPC=1343  
  nop                               #  205   0x525c8  1      OPC=1343  
  nop                               #  206   0x525c9  1      OPC=1343  
  nop                               #  207   0x525ca  1      OPC=1343  
  nop                               #  208   0x525cb  1      OPC=1343  
  nop                               #  209   0x525cc  1      OPC=1343  
  nop                               #  210   0x525cd  1      OPC=1343  
  nop                               #  211   0x525ce  1      OPC=1343  
  nop                               #  212   0x525cf  1      OPC=1343  
  nop                               #  213   0x525d0  1      OPC=1343  
  nop                               #  214   0x525d1  1      OPC=1343  
  nop                               #  215   0x525d2  1      OPC=1343  
  nop                               #  216   0x525d3  1      OPC=1343  
  nop                               #  217   0x525d4  1      OPC=1343  
  nop                               #  218   0x525d5  1      OPC=1343  
  nop                               #  219   0x525d6  1      OPC=1343  
  nop                               #  220   0x525d7  1      OPC=1343  
  nop                               #  221   0x525d8  1      OPC=1343  
  callq .__gmp_tmp_reentrant_free   #  222   0x525d9  5      OPC=260   
  movl -0x28(%rbp), %eax            #  223   0x525de  3      OPC=1156  
  jmpq .L_52500                     #  224   0x525e1  5      OPC=930   
  nop                               #  225   0x525e6  1      OPC=1343  
  nop                               #  226   0x525e7  1      OPC=1343  
  nop                               #  227   0x525e8  1      OPC=1343  
  nop                               #  228   0x525e9  1      OPC=1343  
  nop                               #  229   0x525ea  1      OPC=1343  
  nop                               #  230   0x525eb  1      OPC=1343  
  nop                               #  231   0x525ec  1      OPC=1343  
  nop                               #  232   0x525ed  1      OPC=1343  
  nop                               #  233   0x525ee  1      OPC=1343  
  nop                               #  234   0x525ef  1      OPC=1343  
  nop                               #  235   0x525f0  1      OPC=1343  
  nop                               #  236   0x525f1  1      OPC=1343  
  nop                               #  237   0x525f2  1      OPC=1343  
  nop                               #  238   0x525f3  1      OPC=1343  
  nop                               #  239   0x525f4  1      OPC=1343  
  nop                               #  240   0x525f5  1      OPC=1343  
  nop                               #  241   0x525f6  1      OPC=1343  
  nop                               #  242   0x525f7  1      OPC=1343  
  nop                               #  243   0x525f8  1      OPC=1343  
  nop                               #  244   0x525f9  1      OPC=1343  
  nop                               #  245   0x525fa  1      OPC=1343  
  nop                               #  246   0x525fb  1      OPC=1343  
  nop                               #  247   0x525fc  1      OPC=1343  
  nop                               #  248   0x525fd  1      OPC=1343  
.L_525e0:                           #        0x525fe  0      OPC=0     
  leal -0x14(%rbp), %edi            #  249   0x525fe  3      OPC=1066  
  movl %eax, %esi                   #  250   0x52601  2      OPC=1157  
  movl %edx, -0x28(%rbp)            #  251   0x52603  3      OPC=1136  
  nop                               #  252   0x52606  1      OPC=1343  
  nop                               #  253   0x52607  1      OPC=1343  
  nop                               #  254   0x52608  1      OPC=1343  
  nop                               #  255   0x52609  1      OPC=1343  
  nop                               #  256   0x5260a  1      OPC=1343  
  nop                               #  257   0x5260b  1      OPC=1343  
  nop                               #  258   0x5260c  1      OPC=1343  
  nop                               #  259   0x5260d  1      OPC=1343  
  nop                               #  260   0x5260e  1      OPC=1343  
  nop                               #  261   0x5260f  1      OPC=1343  
  nop                               #  262   0x52610  1      OPC=1343  
  nop                               #  263   0x52611  1      OPC=1343  
  nop                               #  264   0x52612  1      OPC=1343  
  nop                               #  265   0x52613  1      OPC=1343  
  nop                               #  266   0x52614  1      OPC=1343  
  nop                               #  267   0x52615  1      OPC=1343  
  nop                               #  268   0x52616  1      OPC=1343  
  nop                               #  269   0x52617  1      OPC=1343  
  nop                               #  270   0x52618  1      OPC=1343  
  callq .__gmp_tmp_reentrant_alloc  #  271   0x52619  5      OPC=260   
  movl -0x28(%rbp), %edx            #  272   0x5261e  3      OPC=1156  
  movl %eax, %ecx                   #  273   0x52621  2      OPC=1157  
  jmpq .L_524c0                     #  274   0x52623  5      OPC=930   
  nop                               #  275   0x52628  1      OPC=1343  
  nop                               #  276   0x52629  1      OPC=1343  
  nop                               #  277   0x5262a  1      OPC=1343  
  nop                               #  278   0x5262b  1      OPC=1343  
  nop                               #  279   0x5262c  1      OPC=1343  
  nop                               #  280   0x5262d  1      OPC=1343  
  nop                               #  281   0x5262e  1      OPC=1343  
  nop                               #  282   0x5262f  1      OPC=1343  
  nop                               #  283   0x52630  1      OPC=1343  
  nop                               #  284   0x52631  1      OPC=1343  
  nop                               #  285   0x52632  1      OPC=1343  
  nop                               #  286   0x52633  1      OPC=1343  
  nop                               #  287   0x52634  1      OPC=1343  
  nop                               #  288   0x52635  1      OPC=1343  
  nop                               #  289   0x52636  1      OPC=1343  
  nop                               #  290   0x52637  1      OPC=1343  
  nop                               #  291   0x52638  1      OPC=1343  
  nop                               #  292   0x52639  1      OPC=1343  
  nop                               #  293   0x5263a  1      OPC=1343  
  nop                               #  294   0x5263b  1      OPC=1343  
  nop                               #  295   0x5263c  1      OPC=1343  
  nop                               #  296   0x5263d  1      OPC=1343  
                                                                       
.size __gmpn_invertappr, .-__gmpn_invertappr
