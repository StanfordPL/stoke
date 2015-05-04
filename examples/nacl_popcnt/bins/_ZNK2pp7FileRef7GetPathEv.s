  .text
  .globl _ZNK2pp7FileRef7GetPathEv
  .type _ZNK2pp7FileRef7GetPathEv, @function

#! file-offset 0x34220
#! rip-offset  0x34220
#! capacity    1728 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef7GetPathEv:                      #        0x34220  0      
  pushq %r12                                     #  1     0x34220  3      
  movl %esi, %r12d                               #  2     0x34223  3      
  pushq %rbx                                     #  3     0x34226  2      
  movl %edi, %ebx                                #  4     0x34228  2      
  subl $0x48, %esp                               #  5     0x3422a  3      
  addq %r15, %rsp                                #  6     0x3422d  3      
  cmpb $0x0, 0xfffcaa9(%rip)                     #  7     0x34230  7      
  je .L_34440                                    #  8     0x34237  6      
  nop                                            #  9     0x3423d  1      
.L_34240:                                        #        0x3423e  0      
  movl 0xfffcaa4(%rip), %eax                     #  10    0x3423e  6      
  testq %rax, %rax                               #  11    0x34244  3      
  jne .L_343e0                                   #  12    0x34247  6      
  cmpb $0x0, 0xfffca9c(%rip)                     #  13    0x3424d  7      
  je .L_34340                                    #  14    0x34254  6      
  nop                                            #  15    0x3425a  1      
.L_34260:                                        #        0x3425b  0      
  movl 0xfffca97(%rip), %eax                     #  16    0x3425b  6      
  testq %rax, %rax                               #  17    0x34261  3      
  jne .L_342c0                                   #  18    0x34264  6      
  cmpb $0x0, 0xfffca8f(%rip)                     #  19    0x3426a  7      
  je .L_345a0                                    #  20    0x34271  6      
  nop                                            #  21    0x34277  1      
.L_34280:                                        #        0x34278  0      
  movl 0xfffca8a(%rip), %eax                     #  22    0x34278  6      
  testq %rax, %rax                               #  23    0x3427e  3      
  jne .L_34540                                   #  24    0x34281  6      
  movl %ebx, %edi                                #  25    0x34287  2      
  nop                                            #  26    0x34289  1      
  callq ._ZN2pp3VarC1Ev                          #  27    0x3428a  5      
  addl $0x48, %esp                               #  28    0x3428f  3      
  addq %r15, %rsp                                #  29    0x34292  3      
  movl %ebx, %eax                                #  30    0x34295  2      
  popq %rbx                                      #  31    0x34297  2      
  popq %r12                                      #  32    0x34299  3      
  popq %r11                                      #  33    0x3429c  3      
  andl $0xffffffe0, %r11d                        #  34    0x3429f  7      
  addq %r15, %r11                                #  35    0x342a6  3      
  jmpq %r11                                      #  36    0x342a9  3      
  nop                                            #  37    0x342ac  1      
.L_342c0:                                        #        0x342ad  0      
  cmpb $0x0, 0xfffca3c(%rip)                     #  38    0x342ad  7      
  je .L_344e0                                    #  39    0x342b4  6      
  nop                                            #  40    0x342ba  1      
  nop                                            #  41    0x342bb  1      
.L_342e0:                                        #        0x342bc  0      
  movl %eax, %eax                                #  42    0x342bc  2      
  movl 0x10(%r15,%rax,1), %eax                   #  43    0x342be  5      
  movl %r12d, %r12d                              #  44    0x342c3  3      
  movl 0x4(%r15,%r12,1), %edi                    #  45    0x342c6  5      
  nop                                            #  46    0x342cb  1      
  andl $0xffffffe0, %eax                         #  47    0x342cc  5      
  addq %r15, %rax                                #  48    0x342d1  3      
  callq %rax                                     #  49    0x342d4  2      
  movl %ebx, %ebx                                #  50    0x342d6  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  51    0x342d8  8      
  movl %ebx, %ebx                                #  52    0x342e0  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  53    0x342e2  5      
  movl %ebx, %ebx                                #  54    0x342e7  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  55    0x342e9  6      
  movl %ebx, %ebx                                #  56    0x342ef  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  57    0x342f1  5      
  addl $0x48, %esp                               #  58    0x342f6  3      
  addq %r15, %rsp                                #  59    0x342f9  3      
  movl %ebx, %eax                                #  60    0x342fc  2      
  popq %rbx                                      #  61    0x342fe  2      
  popq %r12                                      #  62    0x34300  3      
  popq %r11                                      #  63    0x34303  3      
  andl $0xffffffe0, %r11d                        #  64    0x34306  7      
  addq %r15, %r11                                #  65    0x3430d  3      
  jmpq %r11                                      #  66    0x34310  3      
  nop                                            #  67    0x34313  1      
.L_34340:                                        #        0x34314  0      
  movl $0x10030cf0, %edi                         #  68    0x34314  5      
  nop                                            #  69    0x34319  1      
  nop                                            #  70    0x3431a  1      
  callq .__cxa_guard_acquire                     #  71    0x3431b  5      
  testl %eax, %eax                               #  72    0x34320  2      
  je .L_34260                                    #  73    0x34322  6      
  nop                                            #  74    0x34328  1      
  nop                                            #  75    0x34329  1      
  callq ._ZN2pp6Module3GetEv                     #  76    0x3432a  5      
  movl %eax, %edi                                #  77    0x3432f  2      
  movl $0x10020664, %esi                         #  78    0x34331  5      
  nop                                            #  79    0x34336  1      
  nop                                            #  80    0x34337  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  81    0x34338  5      
  movl $0x10030cf0, %edi                         #  82    0x3433d  5      
  movl %eax, 0xfffc9b0(%rip)                     #  83    0x34342  6      
  nop                                            #  84    0x34348  1      
  nop                                            #  85    0x34349  1      
  callq .__cxa_guard_release                     #  86    0x3434a  5      
  jmpq .L_34260                                  #  87    0x3434f  5      
  nop                                            #  88    0x34354  1      
  nop                                            #  89    0x34355  1      
.L_343e0:                                        #        0x34356  0      
  cmpb $0x0, 0xfffc983(%rip)                     #  90    0x34356  7      
  jne .L_342e0                                   #  91    0x3435d  6      
  movl $0x10030ce0, %edi                         #  92    0x34363  5      
  nop                                            #  93    0x34368  1      
  callq .__cxa_guard_acquire                     #  94    0x34369  5      
  testl %eax, %eax                               #  95    0x3436e  2      
  jne .L_34640                                   #  96    0x34370  6      
  nop                                            #  97    0x34376  1      
  nop                                            #  98    0x34377  1      
.L_34420:                                        #        0x34378  0      
  movl 0xfffc96a(%rip), %eax                     #  99    0x34378  6      
  jmpq .L_342e0                                  #  100   0x3437e  5      
  nop                                            #  101   0x34383  1      
  nop                                            #  102   0x34384  1      
.L_34440:                                        #        0x34385  0      
  movl $0x10030ce0, %edi                         #  103   0x34385  5      
  nop                                            #  104   0x3438a  1      
  nop                                            #  105   0x3438b  1      
  callq .__cxa_guard_acquire                     #  106   0x3438c  5      
  testl %eax, %eax                               #  107   0x34391  2      
  je .L_34240                                    #  108   0x34393  6      
  nop                                            #  109   0x34399  1      
  nop                                            #  110   0x3439a  1      
  callq ._ZN2pp6Module3GetEv                     #  111   0x3439b  5      
  movl %eax, %edi                                #  112   0x343a0  2      
  movl $0x10020654, %esi                         #  113   0x343a2  5      
  nop                                            #  114   0x343a7  1      
  nop                                            #  115   0x343a8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  116   0x343a9  5      
  movl $0x10030ce0, %edi                         #  117   0x343ae  5      
  movl %eax, 0xfffc92f(%rip)                     #  118   0x343b3  6      
  nop                                            #  119   0x343b9  1      
  nop                                            #  120   0x343ba  1      
  callq .__cxa_guard_release                     #  121   0x343bb  5      
  jmpq .L_34240                                  #  122   0x343c0  5      
  nop                                            #  123   0x343c5  1      
  nop                                            #  124   0x343c6  1      
.L_344e0:                                        #        0x343c7  0      
  movl $0x10030cf0, %edi                         #  125   0x343c7  5      
  nop                                            #  126   0x343cc  1      
  nop                                            #  127   0x343cd  1      
  callq .__cxa_guard_acquire                     #  128   0x343ce  5      
  testl %eax, %eax                               #  129   0x343d3  2      
  jne .L_34740                                   #  130   0x343d5  6      
  nop                                            #  131   0x343db  1      
  nop                                            #  132   0x343dc  1      
.L_34520:                                        #        0x343dd  0      
  movl 0xfffc915(%rip), %eax                     #  133   0x343dd  6      
  jmpq .L_342e0                                  #  134   0x343e3  5      
  nop                                            #  135   0x343e8  1      
  nop                                            #  136   0x343e9  1      
.L_34540:                                        #        0x343ea  0      
  cmpb $0x0, 0xfffc90f(%rip)                     #  137   0x343ea  7      
  jne .L_342e0                                   #  138   0x343f1  6      
  movl $0x10030d00, %edi                         #  139   0x343f7  5      
  nop                                            #  140   0x343fc  1      
  callq .__cxa_guard_acquire                     #  141   0x343fd  5      
  testl %eax, %eax                               #  142   0x34402  2      
  jne .L_346c0                                   #  143   0x34404  6      
  nop                                            #  144   0x3440a  1      
  nop                                            #  145   0x3440b  1      
.L_34580:                                        #        0x3440c  0      
  movl 0xfffc8f6(%rip), %eax                     #  146   0x3440c  6      
  jmpq .L_342e0                                  #  147   0x34412  5      
  nop                                            #  148   0x34417  1      
  nop                                            #  149   0x34418  1      
.L_345a0:                                        #        0x34419  0      
  movl $0x10030d00, %edi                         #  150   0x34419  5      
  nop                                            #  151   0x3441e  1      
  nop                                            #  152   0x3441f  1      
  callq .__cxa_guard_acquire                     #  153   0x34420  5      
  testl %eax, %eax                               #  154   0x34425  2      
  je .L_34280                                    #  155   0x34427  6      
  nop                                            #  156   0x3442d  1      
  nop                                            #  157   0x3442e  1      
  callq ._ZN2pp6Module3GetEv                     #  158   0x3442f  5      
  movl %eax, %edi                                #  159   0x34434  2      
  movl $0x10020644, %esi                         #  160   0x34436  5      
  nop                                            #  161   0x3443b  1      
  nop                                            #  162   0x3443c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  163   0x3443d  5      
  movl $0x10030d00, %edi                         #  164   0x34442  5      
  movl %eax, 0xfffc8bb(%rip)                     #  165   0x34447  6      
  nop                                            #  166   0x3444d  1      
  nop                                            #  167   0x3444e  1      
  callq .__cxa_guard_release                     #  168   0x3444f  5      
  jmpq .L_34280                                  #  169   0x34454  5      
  nop                                            #  170   0x34459  1      
  nop                                            #  171   0x3445a  1      
.L_34640:                                        #        0x3445b  0      
  nop                                            #  172   0x3445b  1      
  nop                                            #  173   0x3445c  1      
  callq ._ZN2pp6Module3GetEv                     #  174   0x3445d  5      
  movl %eax, %edi                                #  175   0x34462  2      
  movl $0x10020654, %esi                         #  176   0x34464  5      
  nop                                            #  177   0x34469  1      
  nop                                            #  178   0x3446a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  179   0x3446b  5      
  movl $0x10030ce0, %edi                         #  180   0x34470  5      
  movl %eax, 0xfffc86d(%rip)                     #  181   0x34475  6      
  nop                                            #  182   0x3447b  1      
  nop                                            #  183   0x3447c  1      
  callq .__cxa_guard_release                     #  184   0x3447d  5      
  jmpq .L_34420                                  #  185   0x34482  5      
  nop                                            #  186   0x34487  1      
  nop                                            #  187   0x34488  1      
.L_346c0:                                        #        0x34489  0      
  nop                                            #  188   0x34489  1      
  nop                                            #  189   0x3448a  1      
  callq ._ZN2pp6Module3GetEv                     #  190   0x3448b  5      
  movl %eax, %edi                                #  191   0x34490  2      
  movl $0x10020644, %esi                         #  192   0x34492  5      
  nop                                            #  193   0x34497  1      
  nop                                            #  194   0x34498  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  195   0x34499  5      
  movl $0x10030d00, %edi                         #  196   0x3449e  5      
  movl %eax, 0xfffc85f(%rip)                     #  197   0x344a3  6      
  nop                                            #  198   0x344a9  1      
  nop                                            #  199   0x344aa  1      
  callq .__cxa_guard_release                     #  200   0x344ab  5      
  jmpq .L_34580                                  #  201   0x344b0  5      
  nop                                            #  202   0x344b5  1      
  nop                                            #  203   0x344b6  1      
.L_34740:                                        #        0x344b7  0      
  nop                                            #  204   0x344b7  1      
  nop                                            #  205   0x344b8  1      
  callq ._ZN2pp6Module3GetEv                     #  206   0x344b9  5      
  movl %eax, %edi                                #  207   0x344be  2      
  movl $0x10020664, %esi                         #  208   0x344c0  5      
  nop                                            #  209   0x344c5  1      
  nop                                            #  210   0x344c6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  211   0x344c7  5      
  movl $0x10030cf0, %edi                         #  212   0x344cc  5      
  movl %eax, 0xfffc821(%rip)                     #  213   0x344d1  6      
  nop                                            #  214   0x344d7  1      
  nop                                            #  215   0x344d8  1      
  callq .__cxa_guard_release                     #  216   0x344d9  5      
  jmpq .L_34520                                  #  217   0x344de  5      
  nop                                            #  218   0x344e3  1      
  nop                                            #  219   0x344e4  1      
.L_347c0:                                        #        0x344e5  0      
  movl %eax, %ebx                                #  220   0x344e5  2      
  movl $0x10030d00, %edi                         #  221   0x344e7  5      
  nop                                            #  222   0x344ec  1      
  nop                                            #  223   0x344ed  1      
  callq .__cxa_guard_abort                       #  224   0x344ee  5      
  movl %ebx, %edi                                #  225   0x344f3  2      
  nop                                            #  226   0x344f5  1      
  nop                                            #  227   0x344f6  1      
  callq ._Unwind_Resume                          #  228   0x344f7  5      
.L_34800:                                        #        0x344fc  0      
  movl %eax, %ebx                                #  229   0x344fc  2      
  movl $0x10030cf0, %edi                         #  230   0x344fe  5      
  nop                                            #  231   0x34503  1      
  nop                                            #  232   0x34504  1      
  callq .__cxa_guard_abort                       #  233   0x34505  5      
  movl %ebx, %edi                                #  234   0x3450a  2      
  nop                                            #  235   0x3450c  1      
  nop                                            #  236   0x3450d  1      
  callq ._Unwind_Resume                          #  237   0x3450e  5      
  jmpq .L_34800                                  #  238   0x34513  5      
  nop                                            #  239   0x34518  1      
  nop                                            #  240   0x34519  1      
.L_34860:                                        #        0x3451a  0      
  movl %eax, %ebx                                #  241   0x3451a  2      
  movl $0x10030ce0, %edi                         #  242   0x3451c  5      
  nop                                            #  243   0x34521  1      
  nop                                            #  244   0x34522  1      
  callq .__cxa_guard_abort                       #  245   0x34523  5      
  movl %ebx, %edi                                #  246   0x34528  2      
  nop                                            #  247   0x3452a  1      
  nop                                            #  248   0x3452b  1      
  callq ._Unwind_Resume                          #  249   0x3452c  5      
  jmpq .L_34860                                  #  250   0x34531  5      
  nop                                            #  251   0x34536  1      
  nop                                            #  252   0x34537  1      
  jmpq .L_347c0                                  #  253   0x34538  5      
  nop                                            #  254   0x3453d  1      
  nop                                            #  255   0x3453e  1      
  nop                                            #  256   0x3453f  1      
                                                                          
.size _ZNK2pp7FileRef7GetPathEv, .-_ZNK2pp7FileRef7GetPathEv

