  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0x1394a0
#! rip-offset  0xf94a0
#! capacity    448 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIwSt11char_traitsIwEED2Ev:            #        0xf94a0  0      OPC=0     
  movq %r12, -0x18(%rsp)                                    #  1     0xf94a0  5      OPC=1138  
  movl %esi, %r12d                                          #  2     0xf94a5  3      OPC=1157  
  movq %rbx, -0x20(%rsp)                                    #  3     0xf94a8  5      OPC=1138  
  movq %r13, -0x10(%rsp)                                    #  4     0xf94ad  5      OPC=1138  
  movq %r14, -0x8(%rsp)                                     #  5     0xf94b2  5      OPC=1138  
  subl $0x28, %esp                                          #  6     0xf94b7  3      OPC=2384  
  addq %r15, %rsp                                           #  7     0xf94ba  3      OPC=72    
  nop                                                       #  8     0xf94bd  1      OPC=1343  
  nop                                                       #  9     0xf94be  1      OPC=1343  
  nop                                                       #  10    0xf94bf  1      OPC=1343  
  movl %r12d, %r12d                                         #  11    0xf94c0  3      OPC=1157  
  movl (%r15,%r12,1), %eax                                  #  12    0xf94c3  4      OPC=1156  
  movl %edi, %ebx                                           #  13    0xf94c7  2      OPC=1157  
  movl %r12d, %r12d                                         #  14    0xf94c9  3      OPC=1157  
  movl 0xc(%r15,%r12,1), %edx                               #  15    0xf94cc  5      OPC=1156  
  leal 0x4(%rbx), %r13d                                     #  16    0xf94d1  4      OPC=1066  
  movl %r13d, %edi                                          #  17    0xf94d5  3      OPC=1157  
  movl %ebx, %ebx                                           #  18    0xf94d8  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                  #  19    0xf94da  4      OPC=1136  
  xchgw %ax, %ax                                            #  20    0xf94de  2      OPC=3700  
  subl $0xc, %eax                                           #  21    0xf94e0  3      OPC=2384  
  movl %eax, %eax                                           #  22    0xf94e3  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                  #  23    0xf94e5  4      OPC=1156  
  addl %ebx, %eax                                           #  24    0xf94e9  2      OPC=67    
  movl %eax, %eax                                           #  25    0xf94eb  2      OPC=1157  
  movl %edx, (%r15,%rax,1)                                  #  26    0xf94ed  4      OPC=1136  
  movl %ebx, %ebx                                           #  27    0xf94f1  2      OPC=1157  
  movl $0x1003e0e8, 0x4(%r15,%rbx,1)                        #  28    0xf94f3  9      OPC=1135  
  nop                                                       #  29    0xf94fc  1      OPC=1343  
  nop                                                       #  30    0xf94fd  1      OPC=1343  
  nop                                                       #  31    0xf94fe  1      OPC=1343  
  nop                                                       #  32    0xf94ff  1      OPC=1343  
  nop                                                       #  33    0xf9500  1      OPC=1343  
  nop                                                       #  34    0xf9501  1      OPC=1343  
  nop                                                       #  35    0xf9502  1      OPC=1343  
  nop                                                       #  36    0xf9503  1      OPC=1343  
  nop                                                       #  37    0xf9504  1      OPC=1343  
  nop                                                       #  38    0xf9505  1      OPC=1343  
  nop                                                       #  39    0xf9506  1      OPC=1343  
  nop                                                       #  40    0xf9507  1      OPC=1343  
  nop                                                       #  41    0xf9508  1      OPC=1343  
  nop                                                       #  42    0xf9509  1      OPC=1343  
  nop                                                       #  43    0xf950a  1      OPC=1343  
  nop                                                       #  44    0xf950b  1      OPC=1343  
  nop                                                       #  45    0xf950c  1      OPC=1343  
  nop                                                       #  46    0xf950d  1      OPC=1343  
  nop                                                       #  47    0xf950e  1      OPC=1343  
  nop                                                       #  48    0xf950f  1      OPC=1343  
  nop                                                       #  49    0xf9510  1      OPC=1343  
  nop                                                       #  50    0xf9511  1      OPC=1343  
  nop                                                       #  51    0xf9512  1      OPC=1343  
  nop                                                       #  52    0xf9513  1      OPC=1343  
  nop                                                       #  53    0xf9514  1      OPC=1343  
  nop                                                       #  54    0xf9515  1      OPC=1343  
  nop                                                       #  55    0xf9516  1      OPC=1343  
  nop                                                       #  56    0xf9517  1      OPC=1343  
  nop                                                       #  57    0xf9518  1      OPC=1343  
  nop                                                       #  58    0xf9519  1      OPC=1343  
  nop                                                       #  59    0xf951a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv  #  60    0xf951b  5      OPC=260   
  leal 0x38(%rbx), %edi                                     #  61    0xf9520  3      OPC=1066  
  nop                                                       #  62    0xf9523  1      OPC=1343  
  nop                                                       #  63    0xf9524  1      OPC=1343  
  nop                                                       #  64    0xf9525  1      OPC=1343  
  nop                                                       #  65    0xf9526  1      OPC=1343  
  nop                                                       #  66    0xf9527  1      OPC=1343  
  nop                                                       #  67    0xf9528  1      OPC=1343  
  nop                                                       #  68    0xf9529  1      OPC=1343  
  nop                                                       #  69    0xf952a  1      OPC=1343  
  nop                                                       #  70    0xf952b  1      OPC=1343  
  nop                                                       #  71    0xf952c  1      OPC=1343  
  nop                                                       #  72    0xf952d  1      OPC=1343  
  nop                                                       #  73    0xf952e  1      OPC=1343  
  nop                                                       #  74    0xf952f  1      OPC=1343  
  nop                                                       #  75    0xf9530  1      OPC=1343  
  nop                                                       #  76    0xf9531  1      OPC=1343  
  nop                                                       #  77    0xf9532  1      OPC=1343  
  nop                                                       #  78    0xf9533  1      OPC=1343  
  nop                                                       #  79    0xf9534  1      OPC=1343  
  nop                                                       #  80    0xf9535  1      OPC=1343  
  nop                                                       #  81    0xf9536  1      OPC=1343  
  nop                                                       #  82    0xf9537  1      OPC=1343  
  nop                                                       #  83    0xf9538  1      OPC=1343  
  nop                                                       #  84    0xf9539  1      OPC=1343  
  nop                                                       #  85    0xf953a  1      OPC=1343  
  callq ._ZNSt12__basic_fileIcED1Ev                         #  86    0xf953b  5      OPC=260   
  leal 0x1c(%r13), %edi                                     #  87    0xf9540  4      OPC=1066  
  addl $0x4, %r12d                                          #  88    0xf9544  4      OPC=65    
  movl %r13d, %r13d                                         #  89    0xf9548  3      OPC=1157  
  movl $0x1003b9a8, (%r15,%r13,1)                           #  90    0xf954b  8      OPC=1135  
  nop                                                       #  91    0xf9553  1      OPC=1343  
  nop                                                       #  92    0xf9554  1      OPC=1343  
  nop                                                       #  93    0xf9555  1      OPC=1343  
  nop                                                       #  94    0xf9556  1      OPC=1343  
  nop                                                       #  95    0xf9557  1      OPC=1343  
  nop                                                       #  96    0xf9558  1      OPC=1343  
  nop                                                       #  97    0xf9559  1      OPC=1343  
  nop                                                       #  98    0xf955a  1      OPC=1343  
  callq ._ZNSt6localeD1Ev                                   #  99    0xf955b  5      OPC=260   
  movl %r12d, %r12d                                         #  100   0xf9560  3      OPC=1157  
  movl (%r15,%r12,1), %eax                                  #  101   0xf9563  4      OPC=1156  
  movl %ebx, %ebx                                           #  102   0xf9567  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                  #  103   0xf9569  4      OPC=1136  
  subl $0xc, %eax                                           #  104   0xf956d  3      OPC=2384  
  movl %eax, %eax                                           #  105   0xf9570  2      OPC=1157  
  addl (%r15,%rax,1), %ebx                                  #  106   0xf9572  4      OPC=66    
  movl %r12d, %r12d                                         #  107   0xf9576  3      OPC=1157  
  movl 0x4(%r15,%r12,1), %eax                               #  108   0xf9579  5      OPC=1156  
  xchgw %ax, %ax                                            #  109   0xf957e  2      OPC=3700  
  movl %ebx, %ebx                                           #  110   0xf9580  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                  #  111   0xf9582  4      OPC=1136  
  movq 0x8(%rsp), %rbx                                      #  112   0xf9586  5      OPC=1161  
  movq 0x10(%rsp), %r12                                     #  113   0xf958b  5      OPC=1161  
  movq 0x18(%rsp), %r13                                     #  114   0xf9590  5      OPC=1161  
  movq 0x20(%rsp), %r14                                     #  115   0xf9595  5      OPC=1161  
  addl $0x28, %esp                                          #  116   0xf959a  3      OPC=65    
  addq %r15, %rsp                                           #  117   0xf959d  3      OPC=72    
  popq %r11                                                 #  118   0xf95a0  2      OPC=1694  
  andl $0xffffffe0, %r11d                                   #  119   0xf95a2  7      OPC=131   
  nop                                                       #  120   0xf95a9  1      OPC=1343  
  nop                                                       #  121   0xf95aa  1      OPC=1343  
  nop                                                       #  122   0xf95ab  1      OPC=1343  
  nop                                                       #  123   0xf95ac  1      OPC=1343  
  addq %r15, %r11                                           #  124   0xf95ad  3      OPC=72    
  jmpq %r11                                                 #  125   0xf95b0  3      OPC=928   
  nop                                                       #  126   0xf95b3  1      OPC=1343  
  nop                                                       #  127   0xf95b4  1      OPC=1343  
  nop                                                       #  128   0xf95b5  1      OPC=1343  
  nop                                                       #  129   0xf95b6  1      OPC=1343  
  nop                                                       #  130   0xf95b7  1      OPC=1343  
  nop                                                       #  131   0xf95b8  1      OPC=1343  
  nop                                                       #  132   0xf95b9  1      OPC=1343  
  nop                                                       #  133   0xf95ba  1      OPC=1343  
  nop                                                       #  134   0xf95bb  1      OPC=1343  
  nop                                                       #  135   0xf95bc  1      OPC=1343  
  nop                                                       #  136   0xf95bd  1      OPC=1343  
  nop                                                       #  137   0xf95be  1      OPC=1343  
  nop                                                       #  138   0xf95bf  1      OPC=1343  
  nop                                                       #  139   0xf95c0  1      OPC=1343  
  nop                                                       #  140   0xf95c1  1      OPC=1343  
  nop                                                       #  141   0xf95c2  1      OPC=1343  
  nop                                                       #  142   0xf95c3  1      OPC=1343  
  nop                                                       #  143   0xf95c4  1      OPC=1343  
  nop                                                       #  144   0xf95c5  1      OPC=1343  
  nop                                                       #  145   0xf95c6  1      OPC=1343  
  leal 0x38(%rbx), %edi                                     #  146   0xf95c7  3      OPC=1066  
  movl %eax, %r14d                                          #  147   0xf95ca  3      OPC=1157  
  nop                                                       #  148   0xf95cd  1      OPC=1343  
  nop                                                       #  149   0xf95ce  1      OPC=1343  
  nop                                                       #  150   0xf95cf  1      OPC=1343  
  nop                                                       #  151   0xf95d0  1      OPC=1343  
  nop                                                       #  152   0xf95d1  1      OPC=1343  
  nop                                                       #  153   0xf95d2  1      OPC=1343  
  nop                                                       #  154   0xf95d3  1      OPC=1343  
  nop                                                       #  155   0xf95d4  1      OPC=1343  
  nop                                                       #  156   0xf95d5  1      OPC=1343  
  nop                                                       #  157   0xf95d6  1      OPC=1343  
  nop                                                       #  158   0xf95d7  1      OPC=1343  
  nop                                                       #  159   0xf95d8  1      OPC=1343  
  nop                                                       #  160   0xf95d9  1      OPC=1343  
  nop                                                       #  161   0xf95da  1      OPC=1343  
  nop                                                       #  162   0xf95db  1      OPC=1343  
  nop                                                       #  163   0xf95dc  1      OPC=1343  
  nop                                                       #  164   0xf95dd  1      OPC=1343  
  nop                                                       #  165   0xf95de  1      OPC=1343  
  nop                                                       #  166   0xf95df  1      OPC=1343  
  nop                                                       #  167   0xf95e0  1      OPC=1343  
  nop                                                       #  168   0xf95e1  1      OPC=1343  
  callq ._ZNSt12__basic_fileIcED1Ev                         #  169   0xf95e2  5      OPC=260   
.L_f95e0:                                                   #        0xf95e7  0      OPC=0     
  movl %r13d, %edi                                          #  170   0xf95e7  3      OPC=1157  
  addl $0x4, %r12d                                          #  171   0xf95ea  4      OPC=65    
  nop                                                       #  172   0xf95ee  1      OPC=1343  
  nop                                                       #  173   0xf95ef  1      OPC=1343  
  nop                                                       #  174   0xf95f0  1      OPC=1343  
  nop                                                       #  175   0xf95f1  1      OPC=1343  
  nop                                                       #  176   0xf95f2  1      OPC=1343  
  nop                                                       #  177   0xf95f3  1      OPC=1343  
  nop                                                       #  178   0xf95f4  1      OPC=1343  
  nop                                                       #  179   0xf95f5  1      OPC=1343  
  nop                                                       #  180   0xf95f6  1      OPC=1343  
  nop                                                       #  181   0xf95f7  1      OPC=1343  
  nop                                                       #  182   0xf95f8  1      OPC=1343  
  nop                                                       #  183   0xf95f9  1      OPC=1343  
  nop                                                       #  184   0xf95fa  1      OPC=1343  
  nop                                                       #  185   0xf95fb  1      OPC=1343  
  nop                                                       #  186   0xf95fc  1      OPC=1343  
  nop                                                       #  187   0xf95fd  1      OPC=1343  
  nop                                                       #  188   0xf95fe  1      OPC=1343  
  nop                                                       #  189   0xf95ff  1      OPC=1343  
  nop                                                       #  190   0xf9600  1      OPC=1343  
  nop                                                       #  191   0xf9601  1      OPC=1343  
  callq ._ZNSt15basic_streambufIwSt11char_traitsIwEED2Ev    #  192   0xf9602  5      OPC=260   
  movl %r12d, %r12d                                         #  193   0xf9607  3      OPC=1157  
  movl (%r15,%r12,1), %eax                                  #  194   0xf960a  4      OPC=1156  
  movl %r14d, %edi                                          #  195   0xf960e  3      OPC=1157  
  movl %ebx, %ebx                                           #  196   0xf9611  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                  #  197   0xf9613  4      OPC=1136  
  subl $0xc, %eax                                           #  198   0xf9617  3      OPC=2384  
  movl %eax, %eax                                           #  199   0xf961a  2      OPC=1157  
  addl (%r15,%rax,1), %ebx                                  #  200   0xf961c  4      OPC=66    
  nop                                                       #  201   0xf9620  1      OPC=1343  
  nop                                                       #  202   0xf9621  1      OPC=1343  
  nop                                                       #  203   0xf9622  1      OPC=1343  
  nop                                                       #  204   0xf9623  1      OPC=1343  
  nop                                                       #  205   0xf9624  1      OPC=1343  
  nop                                                       #  206   0xf9625  1      OPC=1343  
  nop                                                       #  207   0xf9626  1      OPC=1343  
  movl %r12d, %r12d                                         #  208   0xf9627  3      OPC=1157  
  movl 0x4(%r15,%r12,1), %eax                               #  209   0xf962a  5      OPC=1156  
  movl %ebx, %ebx                                           #  210   0xf962f  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                  #  211   0xf9631  4      OPC=1136  
  nop                                                       #  212   0xf9635  1      OPC=1343  
  nop                                                       #  213   0xf9636  1      OPC=1343  
  nop                                                       #  214   0xf9637  1      OPC=1343  
  nop                                                       #  215   0xf9638  1      OPC=1343  
  nop                                                       #  216   0xf9639  1      OPC=1343  
  nop                                                       #  217   0xf963a  1      OPC=1343  
  nop                                                       #  218   0xf963b  1      OPC=1343  
  nop                                                       #  219   0xf963c  1      OPC=1343  
  nop                                                       #  220   0xf963d  1      OPC=1343  
  nop                                                       #  221   0xf963e  1      OPC=1343  
  nop                                                       #  222   0xf963f  1      OPC=1343  
  nop                                                       #  223   0xf9640  1      OPC=1343  
  nop                                                       #  224   0xf9641  1      OPC=1343  
  callq ._Unwind_Resume                                     #  225   0xf9642  5      OPC=260   
  movl %eax, %r14d                                          #  226   0xf9647  3      OPC=1157  
  jmpq .L_f95e0                                             #  227   0xf964a  5      OPC=930   
  nop                                                       #  228   0xf964f  1      OPC=1343  
  nop                                                       #  229   0xf9650  1      OPC=1343  
  nop                                                       #  230   0xf9651  1      OPC=1343  
  nop                                                       #  231   0xf9652  1      OPC=1343  
  nop                                                       #  232   0xf9653  1      OPC=1343  
  nop                                                       #  233   0xf9654  1      OPC=1343  
  nop                                                       #  234   0xf9655  1      OPC=1343  
  nop                                                       #  235   0xf9656  1      OPC=1343  
  nop                                                       #  236   0xf9657  1      OPC=1343  
  nop                                                       #  237   0xf9658  1      OPC=1343  
  nop                                                       #  238   0xf9659  1      OPC=1343  
  nop                                                       #  239   0xf965a  1      OPC=1343  
  nop                                                       #  240   0xf965b  1      OPC=1343  
  nop                                                       #  241   0xf965c  1      OPC=1343  
  nop                                                       #  242   0xf965d  1      OPC=1343  
  nop                                                       #  243   0xf965e  1      OPC=1343  
  nop                                                       #  244   0xf965f  1      OPC=1343  
  nop                                                       #  245   0xf9660  1      OPC=1343  
  nop                                                       #  246   0xf9661  1      OPC=1343  
  nop                                                       #  247   0xf9662  1      OPC=1343  
  nop                                                       #  248   0xf9663  1      OPC=1343  
  nop                                                       #  249   0xf9664  1      OPC=1343  
  nop                                                       #  250   0xf9665  1      OPC=1343  
  nop                                                       #  251   0xf9666  1      OPC=1343  
  nop                                                       #  252   0xf9667  1      OPC=1343  
  nop                                                       #  253   0xf9668  1      OPC=1343  
  nop                                                       #  254   0xf9669  1      OPC=1343  
  nop                                                       #  255   0xf966a  1      OPC=1343  
  nop                                                       #  256   0xf966b  1      OPC=1343  
                                                                                               
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEED2Ev, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEED2Ev
