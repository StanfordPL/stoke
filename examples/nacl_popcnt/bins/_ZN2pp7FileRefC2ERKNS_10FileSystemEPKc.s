  .text
  .globl _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc
  .type _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc, @function

#! file-offset 0x35680
#! rip-offset  0x35680
#! capacity    1632 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRefC2ERKNS_10FileSystemEPKc:                               #        0x35680  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x35680  5      
  movl %edi, %ebx                                                      #  2     0x35685  2      
  movq %r12, -0x10(%rsp)                                               #  3     0x35687  5      
  movq %r13, -0x8(%rsp)                                                #  4     0x3568c  5      
  movl %ebx, %edi                                                      #  5     0x35691  2      
  subl $0x18, %esp                                                     #  6     0x35693  3      
  addq %r15, %rsp                                                      #  7     0x35696  3      
  movl %esi, %r12d                                                     #  8     0x35699  3      
  movl %edx, %r13d                                                     #  9     0x3569c  3      
  nop                                                                  #  10    0x3569f  1      
  nop                                                                  #  11    0x356a0  1      
  nop                                                                  #  12    0x356a1  1      
  callq ._ZN2pp8ResourceC2Ev                                           #  13    0x356a2  5      
  movl %ebx, %ebx                                                      #  14    0x356a7  2      
  movl $0x100204e8, (%r15,%rbx,1)                                      #  15    0x356a9  8      
  cmpb $0x0, 0xfffb628(%rip)                                           #  16    0x356b1  7      
  je .L_35860                                                          #  17    0x356b8  6      
  nop                                                                  #  18    0x356be  1      
.L_356e0:                                                              #        0x356bf  0      
  movl 0xfffb623(%rip), %eax                                           #  19    0x356bf  6      
  testq %rax, %rax                                                     #  20    0x356c5  3      
  je .L_35760                                                          #  21    0x356c8  6      
  cmpb $0x0, 0xfffb60b(%rip)                                           #  22    0x356ce  7      
  je .L_359a0                                                          #  23    0x356d5  6      
  nop                                                                  #  24    0x356db  1      
.L_35700:                                                              #        0x356dc  0      
  movl %eax, %eax                                                      #  25    0x356dc  2      
  movl (%r15,%rax,1), %eax                                             #  26    0x356de  4      
  movl %r12d, %r12d                                                    #  27    0x356e2  3      
  movl 0x4(%r15,%r12,1), %edi                                          #  28    0x356e5  5      
  movl %r13d, %esi                                                     #  29    0x356ea  3      
  nop                                                                  #  30    0x356ed  1      
  andl $0xffffffe0, %eax                                               #  31    0x356ee  5      
  addq %r15, %rax                                                      #  32    0x356f3  3      
  callq %rax                                                           #  33    0x356f6  2      
  movl %eax, %esi                                                      #  34    0x356f8  2      
  movl %ebx, %edi                                                      #  35    0x356fa  2      
  nop                                                                  #  36    0x356fc  1      
  nop                                                                  #  37    0x356fd  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                     #  38    0x356fe  5      
.L_35740:                                                              #        0x35703  0      
  movq (%rsp), %rbx                                                    #  39    0x35703  4      
  movq 0x8(%rsp), %r12                                                 #  40    0x35707  5      
  movq 0x10(%rsp), %r13                                                #  41    0x3570c  5      
  addl $0x18, %esp                                                     #  42    0x35711  3      
  addq %r15, %rsp                                                      #  43    0x35714  3      
  popq %r11                                                            #  44    0x35717  3      
  andl $0xffffffe0, %r11d                                              #  45    0x3571a  7      
  addq %r15, %r11                                                      #  46    0x35721  3      
  jmpq %r11                                                            #  47    0x35724  3      
.L_35760:                                                              #        0x35727  0      
  cmpb $0x0, 0xfffb5c2(%rip)                                           #  48    0x35727  7      
  je .L_35900                                                          #  49    0x3572e  6      
  nop                                                                  #  50    0x35734  1      
  nop                                                                  #  51    0x35735  1      
.L_35780:                                                              #        0x35736  0      
  movl 0xfffb5bc(%rip), %eax                                           #  52    0x35736  6      
  testq %rax, %rax                                                     #  53    0x3573c  3      
  je .L_35800                                                          #  54    0x3573f  6      
  cmpb $0x0, 0xfffb5a4(%rip)                                           #  55    0x35745  7      
  jne .L_35700                                                         #  56    0x3574c  6      
  movl $0x10030cf0, %edi                                               #  57    0x35752  5      
  nop                                                                  #  58    0x35757  1      
  nop                                                                  #  59    0x35758  1      
  nop                                                                  #  60    0x35759  1      
  callq .__cxa_guard_acquire                                           #  61    0x3575a  5      
  testl %eax, %eax                                                     #  62    0x3575f  2      
  jne .L_35b20                                                         #  63    0x35761  6      
  nop                                                                  #  64    0x35767  1      
  nop                                                                  #  65    0x35768  1      
.L_357e0:                                                              #        0x35769  0      
  movl 0xfffb589(%rip), %eax                                           #  66    0x35769  6      
  jmpq .L_35700                                                        #  67    0x3576f  5      
  nop                                                                  #  68    0x35774  1      
  nop                                                                  #  69    0x35775  1      
.L_35800:                                                              #        0x35776  0      
  cmpb $0x0, 0xfffb583(%rip)                                           #  70    0x35776  7      
  je .L_35a00                                                          #  71    0x3577d  6      
  nop                                                                  #  72    0x35783  1      
  nop                                                                  #  73    0x35784  1      
.L_35820:                                                              #        0x35785  0      
  movl 0xfffb57d(%rip), %eax                                           #  74    0x35785  6      
  testl %eax, %eax                                                     #  75    0x3578b  2      
  je .L_35740                                                          #  76    0x3578d  6      
  nop                                                                  #  77    0x35793  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  78    0x35794  5      
  movl %eax, %eax                                                      #  79    0x35799  2      
  jmpq .L_35700                                                        #  80    0x3579b  5      
  nop                                                                  #  81    0x357a0  1      
  nop                                                                  #  82    0x357a1  1      
.L_35860:                                                              #        0x357a2  0      
  movl $0x10030ce0, %edi                                               #  83    0x357a2  5      
  nop                                                                  #  84    0x357a7  1      
  nop                                                                  #  85    0x357a8  1      
  callq .__cxa_guard_acquire                                           #  86    0x357a9  5      
  testl %eax, %eax                                                     #  87    0x357ae  2      
  je .L_356e0                                                          #  88    0x357b0  6      
  nop                                                                  #  89    0x357b6  1      
  nop                                                                  #  90    0x357b7  1      
  callq ._ZN2pp6Module3GetEv                                           #  91    0x357b8  5      
  movl %eax, %edi                                                      #  92    0x357bd  2      
  movl $0x10020654, %esi                                               #  93    0x357bf  5      
  nop                                                                  #  94    0x357c4  1      
  nop                                                                  #  95    0x357c5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  96    0x357c6  5      
  movl $0x10030ce0, %edi                                               #  97    0x357cb  5      
  movl %eax, 0xfffb512(%rip)                                           #  98    0x357d0  6      
  nop                                                                  #  99    0x357d6  1      
  nop                                                                  #  100   0x357d7  1      
  callq .__cxa_guard_release                                           #  101   0x357d8  5      
  jmpq .L_356e0                                                        #  102   0x357dd  5      
  nop                                                                  #  103   0x357e2  1      
  nop                                                                  #  104   0x357e3  1      
.L_35900:                                                              #        0x357e4  0      
  movl $0x10030cf0, %edi                                               #  105   0x357e4  5      
  nop                                                                  #  106   0x357e9  1      
  nop                                                                  #  107   0x357ea  1      
  callq .__cxa_guard_acquire                                           #  108   0x357eb  5      
  testl %eax, %eax                                                     #  109   0x357f0  2      
  je .L_35780                                                          #  110   0x357f2  6      
  nop                                                                  #  111   0x357f8  1      
  nop                                                                  #  112   0x357f9  1      
  callq ._ZN2pp6Module3GetEv                                           #  113   0x357fa  5      
  movl %eax, %edi                                                      #  114   0x357ff  2      
  movl $0x10020664, %esi                                               #  115   0x35801  5      
  nop                                                                  #  116   0x35806  1      
  nop                                                                  #  117   0x35807  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  118   0x35808  5      
  movl $0x10030cf0, %edi                                               #  119   0x3580d  5      
  movl %eax, 0xfffb4e0(%rip)                                           #  120   0x35812  6      
  nop                                                                  #  121   0x35818  1      
  nop                                                                  #  122   0x35819  1      
  callq .__cxa_guard_release                                           #  123   0x3581a  5      
  jmpq .L_35780                                                        #  124   0x3581f  5      
  nop                                                                  #  125   0x35824  1      
  nop                                                                  #  126   0x35825  1      
.L_359a0:                                                              #        0x35826  0      
  movl $0x10030ce0, %edi                                               #  127   0x35826  5      
  nop                                                                  #  128   0x3582b  1      
  nop                                                                  #  129   0x3582c  1      
  callq .__cxa_guard_acquire                                           #  130   0x3582d  5      
  testl %eax, %eax                                                     #  131   0x35832  2      
  jne .L_35aa0                                                         #  132   0x35834  6      
  nop                                                                  #  133   0x3583a  1      
  nop                                                                  #  134   0x3583b  1      
.L_359e0:                                                              #        0x3583c  0      
  movl 0xfffb4a6(%rip), %eax                                           #  135   0x3583c  6      
  jmpq .L_35700                                                        #  136   0x35842  5      
  nop                                                                  #  137   0x35847  1      
  nop                                                                  #  138   0x35848  1      
.L_35a00:                                                              #        0x35849  0      
  movl $0x10030d00, %edi                                               #  139   0x35849  5      
  nop                                                                  #  140   0x3584e  1      
  nop                                                                  #  141   0x3584f  1      
  callq .__cxa_guard_acquire                                           #  142   0x35850  5      
  testl %eax, %eax                                                     #  143   0x35855  2      
  je .L_35820                                                          #  144   0x35857  6      
  nop                                                                  #  145   0x3585d  1      
  nop                                                                  #  146   0x3585e  1      
  callq ._ZN2pp6Module3GetEv                                           #  147   0x3585f  5      
  movl %eax, %edi                                                      #  148   0x35864  2      
  movl $0x10020644, %esi                                               #  149   0x35866  5      
  nop                                                                  #  150   0x3586b  1      
  nop                                                                  #  151   0x3586c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  152   0x3586d  5      
  movl $0x10030d00, %edi                                               #  153   0x35872  5      
  movl %eax, 0xfffb48b(%rip)                                           #  154   0x35877  6      
  nop                                                                  #  155   0x3587d  1      
  nop                                                                  #  156   0x3587e  1      
  callq .__cxa_guard_release                                           #  157   0x3587f  5      
  jmpq .L_35820                                                        #  158   0x35884  5      
  nop                                                                  #  159   0x35889  1      
  nop                                                                  #  160   0x3588a  1      
.L_35aa0:                                                              #        0x3588b  0      
  nop                                                                  #  161   0x3588b  1      
  nop                                                                  #  162   0x3588c  1      
  callq ._ZN2pp6Module3GetEv                                           #  163   0x3588d  5      
  movl %eax, %edi                                                      #  164   0x35892  2      
  movl $0x10020654, %esi                                               #  165   0x35894  5      
  nop                                                                  #  166   0x35899  1      
  nop                                                                  #  167   0x3589a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  168   0x3589b  5      
  movl $0x10030ce0, %edi                                               #  169   0x358a0  5      
  movl %eax, 0xfffb43d(%rip)                                           #  170   0x358a5  6      
  nop                                                                  #  171   0x358ab  1      
  nop                                                                  #  172   0x358ac  1      
  callq .__cxa_guard_release                                           #  173   0x358ad  5      
  jmpq .L_359e0                                                        #  174   0x358b2  5      
  nop                                                                  #  175   0x358b7  1      
  nop                                                                  #  176   0x358b8  1      
.L_35b20:                                                              #        0x358b9  0      
  nop                                                                  #  177   0x358b9  1      
  nop                                                                  #  178   0x358ba  1      
  callq ._ZN2pp6Module3GetEv                                           #  179   0x358bb  5      
  movl %eax, %edi                                                      #  180   0x358c0  2      
  movl $0x10020664, %esi                                               #  181   0x358c2  5      
  nop                                                                  #  182   0x358c7  1      
  nop                                                                  #  183   0x358c8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  184   0x358c9  5      
  movl $0x10030cf0, %edi                                               #  185   0x358ce  5      
  movl %eax, 0xfffb41f(%rip)                                           #  186   0x358d3  6      
  nop                                                                  #  187   0x358d9  1      
  nop                                                                  #  188   0x358da  1      
  callq .__cxa_guard_release                                           #  189   0x358db  5      
  jmpq .L_357e0                                                        #  190   0x358e0  5      
  nop                                                                  #  191   0x358e5  1      
  nop                                                                  #  192   0x358e6  1      
  movl $0x10030d00, %edi                                               #  193   0x358e7  5      
  movl %eax, %r12d                                                     #  194   0x358ec  3      
  nop                                                                  #  195   0x358ef  1      
  nop                                                                  #  196   0x358f0  1      
  callq .__cxa_guard_abort                                             #  197   0x358f1  5      
.L_35bc0:                                                              #        0x358f6  0      
  movl %ebx, %edi                                                      #  198   0x358f6  2      
  nop                                                                  #  199   0x358f8  1      
  nop                                                                  #  200   0x358f9  1      
  callq ._ZN2pp8ResourceD2Ev                                           #  201   0x358fa  5      
  movl %r12d, %edi                                                     #  202   0x358ff  3      
  nop                                                                  #  203   0x35902  1      
  nop                                                                  #  204   0x35903  1      
  callq ._Unwind_Resume                                                #  205   0x35904  5      
.L_35c00:                                                              #        0x35909  0      
  movl $0x10030cf0, %edi                                               #  206   0x35909  5      
  movl %eax, %r12d                                                     #  207   0x3590e  3      
  nop                                                                  #  208   0x35911  1      
  nop                                                                  #  209   0x35912  1      
  callq .__cxa_guard_abort                                             #  210   0x35913  5      
  jmpq .L_35bc0                                                        #  211   0x35918  5      
  nop                                                                  #  212   0x3591d  1      
  nop                                                                  #  213   0x3591e  1      
.L_35c40:                                                              #        0x3591f  0      
  movl $0x10030ce0, %edi                                               #  214   0x3591f  5      
  movl %eax, %r12d                                                     #  215   0x35924  3      
  nop                                                                  #  216   0x35927  1      
  nop                                                                  #  217   0x35928  1      
  callq .__cxa_guard_abort                                             #  218   0x35929  5      
  jmpq .L_35bc0                                                        #  219   0x3592e  5      
  nop                                                                  #  220   0x35933  1      
  nop                                                                  #  221   0x35934  1      
  jmpq .L_35c00                                                        #  222   0x35935  5      
  nop                                                                  #  223   0x3593a  1      
  nop                                                                  #  224   0x3593b  1      
  movl %eax, %r12d                                                     #  225   0x3593c  3      
  jmpq .L_35bc0                                                        #  226   0x3593f  5      
  nop                                                                  #  227   0x35944  1      
  nop                                                                  #  228   0x35945  1      
  jmpq .L_35c40                                                        #  229   0x35946  5      
  nop                                                                  #  230   0x3594b  1      
  nop                                                                  #  231   0x3594c  1      
  nop                                                                  #  232   0x3594d  1      
  nop                                                                  #  233   0x3594e  1      
  nop                                                                  #  234   0x3594f  1      
  nop                                                                  #  235   0x35950  1      
  nop                                                                  #  236   0x35951  1      
  nop                                                                  #  237   0x35952  1      
  nop                                                                  #  238   0x35953  1      
  nop                                                                  #  239   0x35954  1      
  nop                                                                  #  240   0x35955  1      
  nop                                                                  #  241   0x35956  1      
  nop                                                                  #  242   0x35957  1      
  nop                                                                  #  243   0x35958  1      
  nop                                                                  #  244   0x35959  1      
  nop                                                                  #  245   0x3595a  1      
  nop                                                                  #  246   0x3595b  1      
  nop                                                                  #  247   0x3595c  1      
  nop                                                                  #  248   0x3595d  1      
  nop                                                                  #  249   0x3595e  1      
  nop                                                                  #  250   0x3595f  1      
  nop                                                                  #  251   0x35960  1      
  nop                                                                  #  252   0x35961  1      
  nop                                                                  #  253   0x35962  1      
  nop                                                                  #  254   0x35963  1      
  nop                                                                  #  255   0x35964  1      
  nop                                                                  #  256   0x35965  1      
                                                                                                
.size _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc, .-_ZN2pp7FileRefC2ERKNS_10FileSystemEPKc

