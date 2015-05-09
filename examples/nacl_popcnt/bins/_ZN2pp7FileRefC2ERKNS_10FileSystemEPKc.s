  .text
  .globl _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc
  .type _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc, @function

#! file-offset 0x355e0
#! rip-offset  0x355e0
#! capacity    1632 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRefC2ERKNS_10FileSystemEPKc:                               #        0x355e0  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x355e0  5      
  movl %edi, %ebx                                                      #  2     0x355e5  2      
  movq %r12, -0x10(%rsp)                                               #  3     0x355e7  5      
  movq %r13, -0x8(%rsp)                                                #  4     0x355ec  5      
  movl %ebx, %edi                                                      #  5     0x355f1  2      
  subl $0x18, %esp                                                     #  6     0x355f3  3      
  addq %r15, %rsp                                                      #  7     0x355f6  3      
  movl %esi, %r12d                                                     #  8     0x355f9  3      
  movl %edx, %r13d                                                     #  9     0x355fc  3      
  nop                                                                  #  10    0x355ff  1      
  nop                                                                  #  11    0x35600  1      
  nop                                                                  #  12    0x35601  1      
  callq ._ZN2pp8ResourceC2Ev                                           #  13    0x35602  5      
  movl %ebx, %ebx                                                      #  14    0x35607  2      
  movl $0x100204e8, (%r15,%rbx,1)                                      #  15    0x35609  8      
  cmpb $0x0, 0xfffb6c8(%rip)                                           #  16    0x35611  7      
  je .L_357c0                                                          #  17    0x35618  6      
  nop                                                                  #  18    0x3561e  1      
.L_35640:                                                              #        0x3561f  0      
  movl 0xfffb6c3(%rip), %eax                                           #  19    0x3561f  6      
  testq %rax, %rax                                                     #  20    0x35625  3      
  je .L_356c0                                                          #  21    0x35628  6      
  cmpb $0x0, 0xfffb6ab(%rip)                                           #  22    0x3562e  7      
  je .L_35900                                                          #  23    0x35635  6      
  nop                                                                  #  24    0x3563b  1      
.L_35660:                                                              #        0x3563c  0      
  movl %eax, %eax                                                      #  25    0x3563c  2      
  movl (%r15,%rax,1), %eax                                             #  26    0x3563e  4      
  movl %r12d, %r12d                                                    #  27    0x35642  3      
  movl 0x4(%r15,%r12,1), %edi                                          #  28    0x35645  5      
  movl %r13d, %esi                                                     #  29    0x3564a  3      
  nop                                                                  #  30    0x3564d  1      
  andl $0xffffffe0, %eax                                               #  31    0x3564e  5      
  addq %r15, %rax                                                      #  32    0x35653  3      
  callq %rax                                                           #  33    0x35656  2      
  movl %eax, %esi                                                      #  34    0x35658  2      
  movl %ebx, %edi                                                      #  35    0x3565a  2      
  nop                                                                  #  36    0x3565c  1      
  nop                                                                  #  37    0x3565d  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                     #  38    0x3565e  5      
.L_356a0:                                                              #        0x35663  0      
  movq (%rsp), %rbx                                                    #  39    0x35663  4      
  movq 0x8(%rsp), %r12                                                 #  40    0x35667  5      
  movq 0x10(%rsp), %r13                                                #  41    0x3566c  5      
  addl $0x18, %esp                                                     #  42    0x35671  3      
  addq %r15, %rsp                                                      #  43    0x35674  3      
  popq %r11                                                            #  44    0x35677  3      
  andl $0xffffffe0, %r11d                                              #  45    0x3567a  7      
  addq %r15, %r11                                                      #  46    0x35681  3      
  jmpq %r11                                                            #  47    0x35684  3      
.L_356c0:                                                              #        0x35687  0      
  cmpb $0x0, 0xfffb662(%rip)                                           #  48    0x35687  7      
  je .L_35860                                                          #  49    0x3568e  6      
  nop                                                                  #  50    0x35694  1      
  nop                                                                  #  51    0x35695  1      
.L_356e0:                                                              #        0x35696  0      
  movl 0xfffb65c(%rip), %eax                                           #  52    0x35696  6      
  testq %rax, %rax                                                     #  53    0x3569c  3      
  je .L_35760                                                          #  54    0x3569f  6      
  cmpb $0x0, 0xfffb644(%rip)                                           #  55    0x356a5  7      
  jne .L_35660                                                         #  56    0x356ac  6      
  movl $0x10030cf0, %edi                                               #  57    0x356b2  5      
  nop                                                                  #  58    0x356b7  1      
  nop                                                                  #  59    0x356b8  1      
  nop                                                                  #  60    0x356b9  1      
  callq .__cxa_guard_acquire                                           #  61    0x356ba  5      
  testl %eax, %eax                                                     #  62    0x356bf  2      
  jne .L_35a80                                                         #  63    0x356c1  6      
  nop                                                                  #  64    0x356c7  1      
  nop                                                                  #  65    0x356c8  1      
.L_35740:                                                              #        0x356c9  0      
  movl 0xfffb629(%rip), %eax                                           #  66    0x356c9  6      
  jmpq .L_35660                                                        #  67    0x356cf  5      
  nop                                                                  #  68    0x356d4  1      
  nop                                                                  #  69    0x356d5  1      
.L_35760:                                                              #        0x356d6  0      
  cmpb $0x0, 0xfffb623(%rip)                                           #  70    0x356d6  7      
  je .L_35960                                                          #  71    0x356dd  6      
  nop                                                                  #  72    0x356e3  1      
  nop                                                                  #  73    0x356e4  1      
.L_35780:                                                              #        0x356e5  0      
  movl 0xfffb61d(%rip), %eax                                           #  74    0x356e5  6      
  testl %eax, %eax                                                     #  75    0x356eb  2      
  je .L_356a0                                                          #  76    0x356ed  6      
  nop                                                                  #  77    0x356f3  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  78    0x356f4  5      
  movl %eax, %eax                                                      #  79    0x356f9  2      
  jmpq .L_35660                                                        #  80    0x356fb  5      
  nop                                                                  #  81    0x35700  1      
  nop                                                                  #  82    0x35701  1      
.L_357c0:                                                              #        0x35702  0      
  movl $0x10030ce0, %edi                                               #  83    0x35702  5      
  nop                                                                  #  84    0x35707  1      
  nop                                                                  #  85    0x35708  1      
  callq .__cxa_guard_acquire                                           #  86    0x35709  5      
  testl %eax, %eax                                                     #  87    0x3570e  2      
  je .L_35640                                                          #  88    0x35710  6      
  nop                                                                  #  89    0x35716  1      
  nop                                                                  #  90    0x35717  1      
  callq ._ZN2pp6Module3GetEv                                           #  91    0x35718  5      
  movl %eax, %edi                                                      #  92    0x3571d  2      
  movl $0x10020654, %esi                                               #  93    0x3571f  5      
  nop                                                                  #  94    0x35724  1      
  nop                                                                  #  95    0x35725  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  96    0x35726  5      
  movl $0x10030ce0, %edi                                               #  97    0x3572b  5      
  movl %eax, 0xfffb5b2(%rip)                                           #  98    0x35730  6      
  nop                                                                  #  99    0x35736  1      
  nop                                                                  #  100   0x35737  1      
  callq .__cxa_guard_release                                           #  101   0x35738  5      
  jmpq .L_35640                                                        #  102   0x3573d  5      
  nop                                                                  #  103   0x35742  1      
  nop                                                                  #  104   0x35743  1      
.L_35860:                                                              #        0x35744  0      
  movl $0x10030cf0, %edi                                               #  105   0x35744  5      
  nop                                                                  #  106   0x35749  1      
  nop                                                                  #  107   0x3574a  1      
  callq .__cxa_guard_acquire                                           #  108   0x3574b  5      
  testl %eax, %eax                                                     #  109   0x35750  2      
  je .L_356e0                                                          #  110   0x35752  6      
  nop                                                                  #  111   0x35758  1      
  nop                                                                  #  112   0x35759  1      
  callq ._ZN2pp6Module3GetEv                                           #  113   0x3575a  5      
  movl %eax, %edi                                                      #  114   0x3575f  2      
  movl $0x10020664, %esi                                               #  115   0x35761  5      
  nop                                                                  #  116   0x35766  1      
  nop                                                                  #  117   0x35767  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  118   0x35768  5      
  movl $0x10030cf0, %edi                                               #  119   0x3576d  5      
  movl %eax, 0xfffb580(%rip)                                           #  120   0x35772  6      
  nop                                                                  #  121   0x35778  1      
  nop                                                                  #  122   0x35779  1      
  callq .__cxa_guard_release                                           #  123   0x3577a  5      
  jmpq .L_356e0                                                        #  124   0x3577f  5      
  nop                                                                  #  125   0x35784  1      
  nop                                                                  #  126   0x35785  1      
.L_35900:                                                              #        0x35786  0      
  movl $0x10030ce0, %edi                                               #  127   0x35786  5      
  nop                                                                  #  128   0x3578b  1      
  nop                                                                  #  129   0x3578c  1      
  callq .__cxa_guard_acquire                                           #  130   0x3578d  5      
  testl %eax, %eax                                                     #  131   0x35792  2      
  jne .L_35a00                                                         #  132   0x35794  6      
  nop                                                                  #  133   0x3579a  1      
  nop                                                                  #  134   0x3579b  1      
.L_35940:                                                              #        0x3579c  0      
  movl 0xfffb546(%rip), %eax                                           #  135   0x3579c  6      
  jmpq .L_35660                                                        #  136   0x357a2  5      
  nop                                                                  #  137   0x357a7  1      
  nop                                                                  #  138   0x357a8  1      
.L_35960:                                                              #        0x357a9  0      
  movl $0x10030d00, %edi                                               #  139   0x357a9  5      
  nop                                                                  #  140   0x357ae  1      
  nop                                                                  #  141   0x357af  1      
  callq .__cxa_guard_acquire                                           #  142   0x357b0  5      
  testl %eax, %eax                                                     #  143   0x357b5  2      
  je .L_35780                                                          #  144   0x357b7  6      
  nop                                                                  #  145   0x357bd  1      
  nop                                                                  #  146   0x357be  1      
  callq ._ZN2pp6Module3GetEv                                           #  147   0x357bf  5      
  movl %eax, %edi                                                      #  148   0x357c4  2      
  movl $0x10020644, %esi                                               #  149   0x357c6  5      
  nop                                                                  #  150   0x357cb  1      
  nop                                                                  #  151   0x357cc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  152   0x357cd  5      
  movl $0x10030d00, %edi                                               #  153   0x357d2  5      
  movl %eax, 0xfffb52b(%rip)                                           #  154   0x357d7  6      
  nop                                                                  #  155   0x357dd  1      
  nop                                                                  #  156   0x357de  1      
  callq .__cxa_guard_release                                           #  157   0x357df  5      
  jmpq .L_35780                                                        #  158   0x357e4  5      
  nop                                                                  #  159   0x357e9  1      
  nop                                                                  #  160   0x357ea  1      
.L_35a00:                                                              #        0x357eb  0      
  nop                                                                  #  161   0x357eb  1      
  nop                                                                  #  162   0x357ec  1      
  callq ._ZN2pp6Module3GetEv                                           #  163   0x357ed  5      
  movl %eax, %edi                                                      #  164   0x357f2  2      
  movl $0x10020654, %esi                                               #  165   0x357f4  5      
  nop                                                                  #  166   0x357f9  1      
  nop                                                                  #  167   0x357fa  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  168   0x357fb  5      
  movl $0x10030ce0, %edi                                               #  169   0x35800  5      
  movl %eax, 0xfffb4dd(%rip)                                           #  170   0x35805  6      
  nop                                                                  #  171   0x3580b  1      
  nop                                                                  #  172   0x3580c  1      
  callq .__cxa_guard_release                                           #  173   0x3580d  5      
  jmpq .L_35940                                                        #  174   0x35812  5      
  nop                                                                  #  175   0x35817  1      
  nop                                                                  #  176   0x35818  1      
.L_35a80:                                                              #        0x35819  0      
  nop                                                                  #  177   0x35819  1      
  nop                                                                  #  178   0x3581a  1      
  callq ._ZN2pp6Module3GetEv                                           #  179   0x3581b  5      
  movl %eax, %edi                                                      #  180   0x35820  2      
  movl $0x10020664, %esi                                               #  181   0x35822  5      
  nop                                                                  #  182   0x35827  1      
  nop                                                                  #  183   0x35828  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  184   0x35829  5      
  movl $0x10030cf0, %edi                                               #  185   0x3582e  5      
  movl %eax, 0xfffb4bf(%rip)                                           #  186   0x35833  6      
  nop                                                                  #  187   0x35839  1      
  nop                                                                  #  188   0x3583a  1      
  callq .__cxa_guard_release                                           #  189   0x3583b  5      
  jmpq .L_35740                                                        #  190   0x35840  5      
  nop                                                                  #  191   0x35845  1      
  nop                                                                  #  192   0x35846  1      
  movl $0x10030d00, %edi                                               #  193   0x35847  5      
  movl %eax, %r12d                                                     #  194   0x3584c  3      
  nop                                                                  #  195   0x3584f  1      
  nop                                                                  #  196   0x35850  1      
  callq .__cxa_guard_abort                                             #  197   0x35851  5      
.L_35b20:                                                              #        0x35856  0      
  movl %ebx, %edi                                                      #  198   0x35856  2      
  nop                                                                  #  199   0x35858  1      
  nop                                                                  #  200   0x35859  1      
  callq ._ZN2pp8ResourceD2Ev                                           #  201   0x3585a  5      
  movl %r12d, %edi                                                     #  202   0x3585f  3      
  nop                                                                  #  203   0x35862  1      
  nop                                                                  #  204   0x35863  1      
  callq ._Unwind_Resume                                                #  205   0x35864  5      
.L_35b60:                                                              #        0x35869  0      
  movl $0x10030cf0, %edi                                               #  206   0x35869  5      
  movl %eax, %r12d                                                     #  207   0x3586e  3      
  nop                                                                  #  208   0x35871  1      
  nop                                                                  #  209   0x35872  1      
  callq .__cxa_guard_abort                                             #  210   0x35873  5      
  jmpq .L_35b20                                                        #  211   0x35878  5      
  nop                                                                  #  212   0x3587d  1      
  nop                                                                  #  213   0x3587e  1      
.L_35ba0:                                                              #        0x3587f  0      
  movl $0x10030ce0, %edi                                               #  214   0x3587f  5      
  movl %eax, %r12d                                                     #  215   0x35884  3      
  nop                                                                  #  216   0x35887  1      
  nop                                                                  #  217   0x35888  1      
  callq .__cxa_guard_abort                                             #  218   0x35889  5      
  jmpq .L_35b20                                                        #  219   0x3588e  5      
  nop                                                                  #  220   0x35893  1      
  nop                                                                  #  221   0x35894  1      
  jmpq .L_35b60                                                        #  222   0x35895  5      
  nop                                                                  #  223   0x3589a  1      
  nop                                                                  #  224   0x3589b  1      
  movl %eax, %r12d                                                     #  225   0x3589c  3      
  jmpq .L_35b20                                                        #  226   0x3589f  5      
  nop                                                                  #  227   0x358a4  1      
  nop                                                                  #  228   0x358a5  1      
  jmpq .L_35ba0                                                        #  229   0x358a6  5      
  nop                                                                  #  230   0x358ab  1      
  nop                                                                  #  231   0x358ac  1      
  nop                                                                  #  232   0x358ad  1      
  nop                                                                  #  233   0x358ae  1      
  nop                                                                  #  234   0x358af  1      
  nop                                                                  #  235   0x358b0  1      
  nop                                                                  #  236   0x358b1  1      
  nop                                                                  #  237   0x358b2  1      
  nop                                                                  #  238   0x358b3  1      
  nop                                                                  #  239   0x358b4  1      
  nop                                                                  #  240   0x358b5  1      
  nop                                                                  #  241   0x358b6  1      
  nop                                                                  #  242   0x358b7  1      
  nop                                                                  #  243   0x358b8  1      
  nop                                                                  #  244   0x358b9  1      
  nop                                                                  #  245   0x358ba  1      
  nop                                                                  #  246   0x358bb  1      
  nop                                                                  #  247   0x358bc  1      
  nop                                                                  #  248   0x358bd  1      
  nop                                                                  #  249   0x358be  1      
  nop                                                                  #  250   0x358bf  1      
  nop                                                                  #  251   0x358c0  1      
  nop                                                                  #  252   0x358c1  1      
  nop                                                                  #  253   0x358c2  1      
  nop                                                                  #  254   0x358c3  1      
  nop                                                                  #  255   0x358c4  1      
  nop                                                                  #  256   0x358c5  1      
                                                                                                
.size _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc, .-_ZN2pp7FileRefC2ERKNS_10FileSystemEPKc

