  .text
  .globl d_make_comp
  .type d_make_comp, @function

#! file-offset 0x13e6e0
#! rip-offset  0xfe6e0
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.d_make_comp:                         #        0xfe6e0  0      OPC=<label>         
  cmpl $0x3a, %esi                    #  1     0xfe6e0  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi                     #  2     0xfe6e3  2      OPC=movl_r32_r32    
  movl %edx, %edx                     #  3     0xfe6e5  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                     #  4     0xfe6e7  2      OPC=movl_r32_r32    
  jbe .L_fe740                        #  5     0xfe6e9  2      OPC=jbe_label       
  nop                                 #  6     0xfe6eb  1      OPC=nop             
  nop                                 #  7     0xfe6ec  1      OPC=nop             
  nop                                 #  8     0xfe6ed  1      OPC=nop             
  nop                                 #  9     0xfe6ee  1      OPC=nop             
  nop                                 #  10    0xfe6ef  1      OPC=nop             
  nop                                 #  11    0xfe6f0  1      OPC=nop             
  nop                                 #  12    0xfe6f1  1      OPC=nop             
  nop                                 #  13    0xfe6f2  1      OPC=nop             
  nop                                 #  14    0xfe6f3  1      OPC=nop             
  nop                                 #  15    0xfe6f4  1      OPC=nop             
  nop                                 #  16    0xfe6f5  1      OPC=nop             
  nop                                 #  17    0xfe6f6  1      OPC=nop             
  nop                                 #  18    0xfe6f7  1      OPC=nop             
  nop                                 #  19    0xfe6f8  1      OPC=nop             
  nop                                 #  20    0xfe6f9  1      OPC=nop             
  nop                                 #  21    0xfe6fa  1      OPC=nop             
  nop                                 #  22    0xfe6fb  1      OPC=nop             
  nop                                 #  23    0xfe6fc  1      OPC=nop             
  nop                                 #  24    0xfe6fd  1      OPC=nop             
  nop                                 #  25    0xfe6fe  1      OPC=nop             
  nop                                 #  26    0xfe6ff  1      OPC=nop             
.L_fe700:                             #        0xfe700  0      OPC=<label>         
  xorl %eax, %eax                     #  27    0xfe700  2      OPC=xorl_r32_r32    
  nop                                 #  28    0xfe702  1      OPC=nop             
  nop                                 #  29    0xfe703  1      OPC=nop             
  nop                                 #  30    0xfe704  1      OPC=nop             
  nop                                 #  31    0xfe705  1      OPC=nop             
  nop                                 #  32    0xfe706  1      OPC=nop             
  nop                                 #  33    0xfe707  1      OPC=nop             
  nop                                 #  34    0xfe708  1      OPC=nop             
  nop                                 #  35    0xfe709  1      OPC=nop             
  nop                                 #  36    0xfe70a  1      OPC=nop             
  nop                                 #  37    0xfe70b  1      OPC=nop             
  nop                                 #  38    0xfe70c  1      OPC=nop             
  nop                                 #  39    0xfe70d  1      OPC=nop             
  nop                                 #  40    0xfe70e  1      OPC=nop             
  nop                                 #  41    0xfe70f  1      OPC=nop             
  nop                                 #  42    0xfe710  1      OPC=nop             
  nop                                 #  43    0xfe711  1      OPC=nop             
  nop                                 #  44    0xfe712  1      OPC=nop             
  nop                                 #  45    0xfe713  1      OPC=nop             
  nop                                 #  46    0xfe714  1      OPC=nop             
  nop                                 #  47    0xfe715  1      OPC=nop             
  nop                                 #  48    0xfe716  1      OPC=nop             
  nop                                 #  49    0xfe717  1      OPC=nop             
  nop                                 #  50    0xfe718  1      OPC=nop             
  nop                                 #  51    0xfe719  1      OPC=nop             
  nop                                 #  52    0xfe71a  1      OPC=nop             
  nop                                 #  53    0xfe71b  1      OPC=nop             
  nop                                 #  54    0xfe71c  1      OPC=nop             
  nop                                 #  55    0xfe71d  1      OPC=nop             
  nop                                 #  56    0xfe71e  1      OPC=nop             
  nop                                 #  57    0xfe71f  1      OPC=nop             
.L_fe720:                             #        0xfe720  0      OPC=<label>         
  popq %r11                           #  58    0xfe720  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  59    0xfe722  7      OPC=andl_r32_imm32  
  nop                                 #  60    0xfe729  1      OPC=nop             
  nop                                 #  61    0xfe72a  1      OPC=nop             
  nop                                 #  62    0xfe72b  1      OPC=nop             
  nop                                 #  63    0xfe72c  1      OPC=nop             
  addq %r15, %r11                     #  64    0xfe72d  3      OPC=addq_r64_r64    
  jmpq %r11                           #  65    0xfe730  3      OPC=jmpq_r64        
  nop                                 #  66    0xfe733  1      OPC=nop             
  nop                                 #  67    0xfe734  1      OPC=nop             
  nop                                 #  68    0xfe735  1      OPC=nop             
  nop                                 #  69    0xfe736  1      OPC=nop             
  nop                                 #  70    0xfe737  1      OPC=nop             
  nop                                 #  71    0xfe738  1      OPC=nop             
  nop                                 #  72    0xfe739  1      OPC=nop             
  nop                                 #  73    0xfe73a  1      OPC=nop             
  nop                                 #  74    0xfe73b  1      OPC=nop             
  nop                                 #  75    0xfe73c  1      OPC=nop             
  nop                                 #  76    0xfe73d  1      OPC=nop             
  nop                                 #  77    0xfe73e  1      OPC=nop             
  nop                                 #  78    0xfe73f  1      OPC=nop             
  nop                                 #  79    0xfe740  1      OPC=nop             
  nop                                 #  80    0xfe741  1      OPC=nop             
  nop                                 #  81    0xfe742  1      OPC=nop             
  nop                                 #  82    0xfe743  1      OPC=nop             
  nop                                 #  83    0xfe744  1      OPC=nop             
  nop                                 #  84    0xfe745  1      OPC=nop             
  nop                                 #  85    0xfe746  1      OPC=nop             
.L_fe740:                             #        0xfe747  0      OPC=<label>         
  movl %esi, %eax                     #  86    0xfe747  2      OPC=movl_r32_r32    
  movl %eax, %eax                     #  87    0xfe749  2      OPC=movl_r32_r32    
  movq 0x1003e9c0(%r15,%rax,8), %rax  #  88    0xfe74b  8      OPC=movq_r64_m64    
  andl $0xffffffe0, %eax              #  89    0xfe753  6      OPC=andl_r32_imm32  
  nop                                 #  90    0xfe759  1      OPC=nop             
  nop                                 #  91    0xfe75a  1      OPC=nop             
  nop                                 #  92    0xfe75b  1      OPC=nop             
  addq %r15, %rax                     #  93    0xfe75c  3      OPC=addq_r64_r64    
  jmpq %rax                           #  94    0xfe75f  2      OPC=jmpq_r64        
  nop                                 #  95    0xfe761  1      OPC=nop             
  nop                                 #  96    0xfe762  1      OPC=nop             
  nop                                 #  97    0xfe763  1      OPC=nop             
  nop                                 #  98    0xfe764  1      OPC=nop             
  nop                                 #  99    0xfe765  1      OPC=nop             
  nop                                 #  100   0xfe766  1      OPC=nop             
  nop                                 #  101   0xfe767  1      OPC=nop             
  nop                                 #  102   0xfe768  1      OPC=nop             
  nop                                 #  103   0xfe769  1      OPC=nop             
  nop                                 #  104   0xfe76a  1      OPC=nop             
  nop                                 #  105   0xfe76b  1      OPC=nop             
  nop                                 #  106   0xfe76c  1      OPC=nop             
  testq %rcx, %rcx                    #  107   0xfe76d  3      OPC=testq_r64_r64   
  je .L_fe700                         #  108   0xfe770  2      OPC=je_label        
  nop                                 #  109   0xfe772  1      OPC=nop             
  nop                                 #  110   0xfe773  1      OPC=nop             
  nop                                 #  111   0xfe774  1      OPC=nop             
  nop                                 #  112   0xfe775  1      OPC=nop             
  nop                                 #  113   0xfe776  1      OPC=nop             
  nop                                 #  114   0xfe777  1      OPC=nop             
  nop                                 #  115   0xfe778  1      OPC=nop             
  nop                                 #  116   0xfe779  1      OPC=nop             
  nop                                 #  117   0xfe77a  1      OPC=nop             
  nop                                 #  118   0xfe77b  1      OPC=nop             
  nop                                 #  119   0xfe77c  1      OPC=nop             
  nop                                 #  120   0xfe77d  1      OPC=nop             
  nop                                 #  121   0xfe77e  1      OPC=nop             
  nop                                 #  122   0xfe77f  1      OPC=nop             
  nop                                 #  123   0xfe780  1      OPC=nop             
  nop                                 #  124   0xfe781  1      OPC=nop             
  nop                                 #  125   0xfe782  1      OPC=nop             
  nop                                 #  126   0xfe783  1      OPC=nop             
  nop                                 #  127   0xfe784  1      OPC=nop             
  nop                                 #  128   0xfe785  1      OPC=nop             
  nop                                 #  129   0xfe786  1      OPC=nop             
  nop                                 #  130   0xfe787  1      OPC=nop             
  nop                                 #  131   0xfe788  1      OPC=nop             
  nop                                 #  132   0xfe789  1      OPC=nop             
  nop                                 #  133   0xfe78a  1      OPC=nop             
  nop                                 #  134   0xfe78b  1      OPC=nop             
  nop                                 #  135   0xfe78c  1      OPC=nop             
  movl %edi, %edi                     #  136   0xfe78d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %r8d        #  137   0xfe78f  5      OPC=movl_r32_m32    
  movl %edi, %edi                     #  138   0xfe794  2      OPC=movl_r32_r32    
  cmpl 0x18(%r15,%rdi,1), %r8d        #  139   0xfe796  5      OPC=cmpl_r32_m32    
  jge .L_fe700                        #  140   0xfe79b  6      OPC=jge_label_1     
  nop                                 #  141   0xfe7a1  1      OPC=nop             
  nop                                 #  142   0xfe7a2  1      OPC=nop             
  nop                                 #  143   0xfe7a3  1      OPC=nop             
  nop                                 #  144   0xfe7a4  1      OPC=nop             
  nop                                 #  145   0xfe7a5  1      OPC=nop             
  nop                                 #  146   0xfe7a6  1      OPC=nop             
  nop                                 #  147   0xfe7a7  1      OPC=nop             
  nop                                 #  148   0xfe7a8  1      OPC=nop             
  nop                                 #  149   0xfe7a9  1      OPC=nop             
  nop                                 #  150   0xfe7aa  1      OPC=nop             
  nop                                 #  151   0xfe7ab  1      OPC=nop             
  nop                                 #  152   0xfe7ac  1      OPC=nop             
.L_fe7a0:                             #        0xfe7ad  0      OPC=<label>         
  leal (%r8,%r8,2), %eax              #  153   0xfe7ad  4      OPC=leal_r32_m16    
  addl $0x1, %r8d                     #  154   0xfe7b1  4      OPC=addl_r32_imm8   
  movl %edi, %edi                     #  155   0xfe7b5  2      OPC=movl_r32_r32    
  movl %r8d, 0x14(%r15,%rdi,1)        #  156   0xfe7b7  5      OPC=movl_m32_r32    
  shll $0x2, %eax                     #  157   0xfe7bc  3      OPC=shll_r32_imm8   
  movl %edi, %edi                     #  158   0xfe7bf  2      OPC=movl_r32_r32    
  addl 0x10(%r15,%rdi,1), %eax        #  159   0xfe7c1  5      OPC=addl_r32_m32    
  testq %rax, %rax                    #  160   0xfe7c6  3      OPC=testq_r64_r64   
  nop                                 #  161   0xfe7c9  1      OPC=nop             
  nop                                 #  162   0xfe7ca  1      OPC=nop             
  nop                                 #  163   0xfe7cb  1      OPC=nop             
  nop                                 #  164   0xfe7cc  1      OPC=nop             
  je .L_fe720                         #  165   0xfe7cd  6      OPC=je_label_1      
  movl %eax, %eax                     #  166   0xfe7d3  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)            #  167   0xfe7d5  4      OPC=movl_m32_r32    
  movl %eax, %eax                     #  168   0xfe7d9  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rax,1)         #  169   0xfe7db  5      OPC=movl_m32_r32    
  movl %eax, %eax                     #  170   0xfe7e0  2      OPC=movl_r32_r32    
  movl %ecx, 0x8(%r15,%rax,1)         #  171   0xfe7e2  5      OPC=movl_m32_r32    
  popq %r11                           #  172   0xfe7e7  2      OPC=popq_r64_1      
  nop                                 #  173   0xfe7e9  1      OPC=nop             
  nop                                 #  174   0xfe7ea  1      OPC=nop             
  nop                                 #  175   0xfe7eb  1      OPC=nop             
  nop                                 #  176   0xfe7ec  1      OPC=nop             
  andl $0xffffffe0, %r11d             #  177   0xfe7ed  7      OPC=andl_r32_imm32  
  nop                                 #  178   0xfe7f4  1      OPC=nop             
  nop                                 #  179   0xfe7f5  1      OPC=nop             
  nop                                 #  180   0xfe7f6  1      OPC=nop             
  nop                                 #  181   0xfe7f7  1      OPC=nop             
  addq %r15, %r11                     #  182   0xfe7f8  3      OPC=addq_r64_r64    
  jmpq %r11                           #  183   0xfe7fb  3      OPC=jmpq_r64        
  nop                                 #  184   0xfe7fe  1      OPC=nop             
  nop                                 #  185   0xfe7ff  1      OPC=nop             
  nop                                 #  186   0xfe800  1      OPC=nop             
  nop                                 #  187   0xfe801  1      OPC=nop             
  nop                                 #  188   0xfe802  1      OPC=nop             
  nop                                 #  189   0xfe803  1      OPC=nop             
  nop                                 #  190   0xfe804  1      OPC=nop             
  nop                                 #  191   0xfe805  1      OPC=nop             
  nop                                 #  192   0xfe806  1      OPC=nop             
  nop                                 #  193   0xfe807  1      OPC=nop             
  nop                                 #  194   0xfe808  1      OPC=nop             
  nop                                 #  195   0xfe809  1      OPC=nop             
  nop                                 #  196   0xfe80a  1      OPC=nop             
  nop                                 #  197   0xfe80b  1      OPC=nop             
  nop                                 #  198   0xfe80c  1      OPC=nop             
  nop                                 #  199   0xfe80d  1      OPC=nop             
  nop                                 #  200   0xfe80e  1      OPC=nop             
  nop                                 #  201   0xfe80f  1      OPC=nop             
  nop                                 #  202   0xfe810  1      OPC=nop             
  nop                                 #  203   0xfe811  1      OPC=nop             
  nop                                 #  204   0xfe812  1      OPC=nop             
  nop                                 #  205   0xfe813  1      OPC=nop             
  testq %rcx, %rcx                    #  206   0xfe814  3      OPC=testq_r64_r64   
  je .L_fe700                         #  207   0xfe817  6      OPC=je_label_1      
  nop                                 #  208   0xfe81d  1      OPC=nop             
  nop                                 #  209   0xfe81e  1      OPC=nop             
  nop                                 #  210   0xfe81f  1      OPC=nop             
  nop                                 #  211   0xfe820  1      OPC=nop             
  nop                                 #  212   0xfe821  1      OPC=nop             
  nop                                 #  213   0xfe822  1      OPC=nop             
  nop                                 #  214   0xfe823  1      OPC=nop             
  nop                                 #  215   0xfe824  1      OPC=nop             
  nop                                 #  216   0xfe825  1      OPC=nop             
  nop                                 #  217   0xfe826  1      OPC=nop             
  nop                                 #  218   0xfe827  1      OPC=nop             
  nop                                 #  219   0xfe828  1      OPC=nop             
  nop                                 #  220   0xfe829  1      OPC=nop             
  nop                                 #  221   0xfe82a  1      OPC=nop             
  nop                                 #  222   0xfe82b  1      OPC=nop             
  nop                                 #  223   0xfe82c  1      OPC=nop             
  nop                                 #  224   0xfe82d  1      OPC=nop             
  nop                                 #  225   0xfe82e  1      OPC=nop             
  nop                                 #  226   0xfe82f  1      OPC=nop             
  nop                                 #  227   0xfe830  1      OPC=nop             
  nop                                 #  228   0xfe831  1      OPC=nop             
  nop                                 #  229   0xfe832  1      OPC=nop             
  nop                                 #  230   0xfe833  1      OPC=nop             
  testq %rdx, %rdx                    #  231   0xfe834  3      OPC=testq_r64_r64   
  je .L_fe700                         #  232   0xfe837  6      OPC=je_label_1      
  movl %edi, %edi                     #  233   0xfe83d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %r8d        #  234   0xfe83f  5      OPC=movl_r32_m32    
  movl %edi, %edi                     #  235   0xfe844  2      OPC=movl_r32_r32    
  cmpl 0x18(%r15,%rdi,1), %r8d        #  236   0xfe846  5      OPC=cmpl_r32_m32    
  jge .L_fe700                        #  237   0xfe84b  6      OPC=jge_label_1     
  nop                                 #  238   0xfe851  1      OPC=nop             
  nop                                 #  239   0xfe852  1      OPC=nop             
  nop                                 #  240   0xfe853  1      OPC=nop             
  jmpq .L_fe7a0                       #  241   0xfe854  5      OPC=jmpq_label_1    
  nop                                 #  242   0xfe859  1      OPC=nop             
  nop                                 #  243   0xfe85a  1      OPC=nop             
  nop                                 #  244   0xfe85b  1      OPC=nop             
  nop                                 #  245   0xfe85c  1      OPC=nop             
  nop                                 #  246   0xfe85d  1      OPC=nop             
  nop                                 #  247   0xfe85e  1      OPC=nop             
  nop                                 #  248   0xfe85f  1      OPC=nop             
  nop                                 #  249   0xfe860  1      OPC=nop             
  nop                                 #  250   0xfe861  1      OPC=nop             
  nop                                 #  251   0xfe862  1      OPC=nop             
  nop                                 #  252   0xfe863  1      OPC=nop             
  nop                                 #  253   0xfe864  1      OPC=nop             
  nop                                 #  254   0xfe865  1      OPC=nop             
  nop                                 #  255   0xfe866  1      OPC=nop             
  nop                                 #  256   0xfe867  1      OPC=nop             
  nop                                 #  257   0xfe868  1      OPC=nop             
  nop                                 #  258   0xfe869  1      OPC=nop             
  nop                                 #  259   0xfe86a  1      OPC=nop             
  nop                                 #  260   0xfe86b  1      OPC=nop             
  nop                                 #  261   0xfe86c  1      OPC=nop             
  nop                                 #  262   0xfe86d  1      OPC=nop             
  nop                                 #  263   0xfe86e  1      OPC=nop             
  nop                                 #  264   0xfe86f  1      OPC=nop             
  nop                                 #  265   0xfe870  1      OPC=nop             
  nop                                 #  266   0xfe871  1      OPC=nop             
  nop                                 #  267   0xfe872  1      OPC=nop             
  nop                                 #  268   0xfe873  1      OPC=nop             
                                                                                   
.size d_make_comp, .-d_make_comp
