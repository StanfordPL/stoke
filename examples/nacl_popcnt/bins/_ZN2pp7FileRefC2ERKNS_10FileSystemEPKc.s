  .text
  .globl _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc
  .type _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc, @function

#! file-offset 0x35600
#! rip-offset  0x35600
#! capacity    1632 bytes

# Text                                                                 #  Line  RIP      Bytes  
._ZN2pp7FileRefC2ERKNS_10FileSystemEPKc:                               #        0x35600  0      
  movq %rbx, -0x18(%rsp)                                               #  1     0x35600  5      
  movl %edi, %ebx                                                      #  2     0x35605  2      
  movq %r12, -0x10(%rsp)                                               #  3     0x35607  5      
  movq %r13, -0x8(%rsp)                                                #  4     0x3560c  5      
  movl %ebx, %edi                                                      #  5     0x35611  2      
  subl $0x18, %esp                                                     #  6     0x35613  3      
  addq %r15, %rsp                                                      #  7     0x35616  3      
  movl %esi, %r12d                                                     #  8     0x35619  3      
  movl %edx, %r13d                                                     #  9     0x3561c  3      
  nop                                                                  #  10    0x3561f  1      
  nop                                                                  #  11    0x35620  1      
  nop                                                                  #  12    0x35621  1      
  callq ._ZN2pp8ResourceC2Ev                                           #  13    0x35622  5      
  movl %ebx, %ebx                                                      #  14    0x35627  2      
  movl $0x100204e8, (%r15,%rbx,1)                                      #  15    0x35629  8      
  cmpb $0x0, 0xfffb6a8(%rip)                                           #  16    0x35631  7      
  je .L_357e0                                                          #  17    0x35638  6      
  nop                                                                  #  18    0x3563e  1      
.L_35660:                                                              #        0x3563f  0      
  movl 0xfffb6a3(%rip), %eax                                           #  19    0x3563f  6      
  testq %rax, %rax                                                     #  20    0x35645  3      
  je .L_356e0                                                          #  21    0x35648  6      
  cmpb $0x0, 0xfffb68b(%rip)                                           #  22    0x3564e  7      
  je .L_35920                                                          #  23    0x35655  6      
  nop                                                                  #  24    0x3565b  1      
.L_35680:                                                              #        0x3565c  0      
  movl %eax, %eax                                                      #  25    0x3565c  2      
  movl (%r15,%rax,1), %eax                                             #  26    0x3565e  4      
  movl %r12d, %r12d                                                    #  27    0x35662  3      
  movl 0x4(%r15,%r12,1), %edi                                          #  28    0x35665  5      
  movl %r13d, %esi                                                     #  29    0x3566a  3      
  nop                                                                  #  30    0x3566d  1      
  andl $0xffffffe0, %eax                                               #  31    0x3566e  5      
  addq %r15, %rax                                                      #  32    0x35673  3      
  callq %rax                                                           #  33    0x35676  2      
  movl %eax, %esi                                                      #  34    0x35678  2      
  movl %ebx, %edi                                                      #  35    0x3567a  2      
  nop                                                                  #  36    0x3567c  1      
  nop                                                                  #  37    0x3567d  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                     #  38    0x3567e  5      
.L_356c0:                                                              #        0x35683  0      
  movq (%rsp), %rbx                                                    #  39    0x35683  4      
  movq 0x8(%rsp), %r12                                                 #  40    0x35687  5      
  movq 0x10(%rsp), %r13                                                #  41    0x3568c  5      
  addl $0x18, %esp                                                     #  42    0x35691  3      
  addq %r15, %rsp                                                      #  43    0x35694  3      
  popq %r11                                                            #  44    0x35697  3      
  andl $0xffffffe0, %r11d                                              #  45    0x3569a  7      
  addq %r15, %r11                                                      #  46    0x356a1  3      
  jmpq %r11                                                            #  47    0x356a4  3      
.L_356e0:                                                              #        0x356a7  0      
  cmpb $0x0, 0xfffb642(%rip)                                           #  48    0x356a7  7      
  je .L_35880                                                          #  49    0x356ae  6      
  nop                                                                  #  50    0x356b4  1      
  nop                                                                  #  51    0x356b5  1      
.L_35700:                                                              #        0x356b6  0      
  movl 0xfffb63c(%rip), %eax                                           #  52    0x356b6  6      
  testq %rax, %rax                                                     #  53    0x356bc  3      
  je .L_35780                                                          #  54    0x356bf  6      
  cmpb $0x0, 0xfffb624(%rip)                                           #  55    0x356c5  7      
  jne .L_35680                                                         #  56    0x356cc  6      
  movl $0x10030cf0, %edi                                               #  57    0x356d2  5      
  nop                                                                  #  58    0x356d7  1      
  nop                                                                  #  59    0x356d8  1      
  nop                                                                  #  60    0x356d9  1      
  callq .__cxa_guard_acquire                                           #  61    0x356da  5      
  testl %eax, %eax                                                     #  62    0x356df  2      
  jne .L_35aa0                                                         #  63    0x356e1  6      
  nop                                                                  #  64    0x356e7  1      
  nop                                                                  #  65    0x356e8  1      
.L_35760:                                                              #        0x356e9  0      
  movl 0xfffb609(%rip), %eax                                           #  66    0x356e9  6      
  jmpq .L_35680                                                        #  67    0x356ef  5      
  nop                                                                  #  68    0x356f4  1      
  nop                                                                  #  69    0x356f5  1      
.L_35780:                                                              #        0x356f6  0      
  cmpb $0x0, 0xfffb603(%rip)                                           #  70    0x356f6  7      
  je .L_35980                                                          #  71    0x356fd  6      
  nop                                                                  #  72    0x35703  1      
  nop                                                                  #  73    0x35704  1      
.L_357a0:                                                              #        0x35705  0      
  movl 0xfffb5fd(%rip), %eax                                           #  74    0x35705  6      
  testl %eax, %eax                                                     #  75    0x3570b  2      
  je .L_356c0                                                          #  76    0x3570d  6      
  nop                                                                  #  77    0x35713  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI15PPB_FileRef_1_0EEPKT_v  #  78    0x35714  5      
  movl %eax, %eax                                                      #  79    0x35719  2      
  jmpq .L_35680                                                        #  80    0x3571b  5      
  nop                                                                  #  81    0x35720  1      
  nop                                                                  #  82    0x35721  1      
.L_357e0:                                                              #        0x35722  0      
  movl $0x10030ce0, %edi                                               #  83    0x35722  5      
  nop                                                                  #  84    0x35727  1      
  nop                                                                  #  85    0x35728  1      
  callq .__cxa_guard_acquire                                           #  86    0x35729  5      
  testl %eax, %eax                                                     #  87    0x3572e  2      
  je .L_35660                                                          #  88    0x35730  6      
  nop                                                                  #  89    0x35736  1      
  nop                                                                  #  90    0x35737  1      
  callq ._ZN2pp6Module3GetEv                                           #  91    0x35738  5      
  movl %eax, %edi                                                      #  92    0x3573d  2      
  movl $0x10020654, %esi                                               #  93    0x3573f  5      
  nop                                                                  #  94    0x35744  1      
  nop                                                                  #  95    0x35745  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  96    0x35746  5      
  movl $0x10030ce0, %edi                                               #  97    0x3574b  5      
  movl %eax, 0xfffb592(%rip)                                           #  98    0x35750  6      
  nop                                                                  #  99    0x35756  1      
  nop                                                                  #  100   0x35757  1      
  callq .__cxa_guard_release                                           #  101   0x35758  5      
  jmpq .L_35660                                                        #  102   0x3575d  5      
  nop                                                                  #  103   0x35762  1      
  nop                                                                  #  104   0x35763  1      
.L_35880:                                                              #        0x35764  0      
  movl $0x10030cf0, %edi                                               #  105   0x35764  5      
  nop                                                                  #  106   0x35769  1      
  nop                                                                  #  107   0x3576a  1      
  callq .__cxa_guard_acquire                                           #  108   0x3576b  5      
  testl %eax, %eax                                                     #  109   0x35770  2      
  je .L_35700                                                          #  110   0x35772  6      
  nop                                                                  #  111   0x35778  1      
  nop                                                                  #  112   0x35779  1      
  callq ._ZN2pp6Module3GetEv                                           #  113   0x3577a  5      
  movl %eax, %edi                                                      #  114   0x3577f  2      
  movl $0x10020664, %esi                                               #  115   0x35781  5      
  nop                                                                  #  116   0x35786  1      
  nop                                                                  #  117   0x35787  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  118   0x35788  5      
  movl $0x10030cf0, %edi                                               #  119   0x3578d  5      
  movl %eax, 0xfffb560(%rip)                                           #  120   0x35792  6      
  nop                                                                  #  121   0x35798  1      
  nop                                                                  #  122   0x35799  1      
  callq .__cxa_guard_release                                           #  123   0x3579a  5      
  jmpq .L_35700                                                        #  124   0x3579f  5      
  nop                                                                  #  125   0x357a4  1      
  nop                                                                  #  126   0x357a5  1      
.L_35920:                                                              #        0x357a6  0      
  movl $0x10030ce0, %edi                                               #  127   0x357a6  5      
  nop                                                                  #  128   0x357ab  1      
  nop                                                                  #  129   0x357ac  1      
  callq .__cxa_guard_acquire                                           #  130   0x357ad  5      
  testl %eax, %eax                                                     #  131   0x357b2  2      
  jne .L_35a20                                                         #  132   0x357b4  6      
  nop                                                                  #  133   0x357ba  1      
  nop                                                                  #  134   0x357bb  1      
.L_35960:                                                              #        0x357bc  0      
  movl 0xfffb526(%rip), %eax                                           #  135   0x357bc  6      
  jmpq .L_35680                                                        #  136   0x357c2  5      
  nop                                                                  #  137   0x357c7  1      
  nop                                                                  #  138   0x357c8  1      
.L_35980:                                                              #        0x357c9  0      
  movl $0x10030d00, %edi                                               #  139   0x357c9  5      
  nop                                                                  #  140   0x357ce  1      
  nop                                                                  #  141   0x357cf  1      
  callq .__cxa_guard_acquire                                           #  142   0x357d0  5      
  testl %eax, %eax                                                     #  143   0x357d5  2      
  je .L_357a0                                                          #  144   0x357d7  6      
  nop                                                                  #  145   0x357dd  1      
  nop                                                                  #  146   0x357de  1      
  callq ._ZN2pp6Module3GetEv                                           #  147   0x357df  5      
  movl %eax, %edi                                                      #  148   0x357e4  2      
  movl $0x10020644, %esi                                               #  149   0x357e6  5      
  nop                                                                  #  150   0x357eb  1      
  nop                                                                  #  151   0x357ec  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  152   0x357ed  5      
  movl $0x10030d00, %edi                                               #  153   0x357f2  5      
  movl %eax, 0xfffb50b(%rip)                                           #  154   0x357f7  6      
  nop                                                                  #  155   0x357fd  1      
  nop                                                                  #  156   0x357fe  1      
  callq .__cxa_guard_release                                           #  157   0x357ff  5      
  jmpq .L_357a0                                                        #  158   0x35804  5      
  nop                                                                  #  159   0x35809  1      
  nop                                                                  #  160   0x3580a  1      
.L_35a20:                                                              #        0x3580b  0      
  nop                                                                  #  161   0x3580b  1      
  nop                                                                  #  162   0x3580c  1      
  callq ._ZN2pp6Module3GetEv                                           #  163   0x3580d  5      
  movl %eax, %edi                                                      #  164   0x35812  2      
  movl $0x10020654, %esi                                               #  165   0x35814  5      
  nop                                                                  #  166   0x35819  1      
  nop                                                                  #  167   0x3581a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  168   0x3581b  5      
  movl $0x10030ce0, %edi                                               #  169   0x35820  5      
  movl %eax, 0xfffb4bd(%rip)                                           #  170   0x35825  6      
  nop                                                                  #  171   0x3582b  1      
  nop                                                                  #  172   0x3582c  1      
  callq .__cxa_guard_release                                           #  173   0x3582d  5      
  jmpq .L_35960                                                        #  174   0x35832  5      
  nop                                                                  #  175   0x35837  1      
  nop                                                                  #  176   0x35838  1      
.L_35aa0:                                                              #        0x35839  0      
  nop                                                                  #  177   0x35839  1      
  nop                                                                  #  178   0x3583a  1      
  callq ._ZN2pp6Module3GetEv                                           #  179   0x3583b  5      
  movl %eax, %edi                                                      #  180   0x35840  2      
  movl $0x10020664, %esi                                               #  181   0x35842  5      
  nop                                                                  #  182   0x35847  1      
  nop                                                                  #  183   0x35848  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                        #  184   0x35849  5      
  movl $0x10030cf0, %edi                                               #  185   0x3584e  5      
  movl %eax, 0xfffb49f(%rip)                                           #  186   0x35853  6      
  nop                                                                  #  187   0x35859  1      
  nop                                                                  #  188   0x3585a  1      
  callq .__cxa_guard_release                                           #  189   0x3585b  5      
  jmpq .L_35760                                                        #  190   0x35860  5      
  nop                                                                  #  191   0x35865  1      
  nop                                                                  #  192   0x35866  1      
  movl $0x10030d00, %edi                                               #  193   0x35867  5      
  movl %eax, %r12d                                                     #  194   0x3586c  3      
  nop                                                                  #  195   0x3586f  1      
  nop                                                                  #  196   0x35870  1      
  callq .__cxa_guard_abort                                             #  197   0x35871  5      
.L_35b40:                                                              #        0x35876  0      
  movl %ebx, %edi                                                      #  198   0x35876  2      
  nop                                                                  #  199   0x35878  1      
  nop                                                                  #  200   0x35879  1      
  callq ._ZN2pp8ResourceD2Ev                                           #  201   0x3587a  5      
  movl %r12d, %edi                                                     #  202   0x3587f  3      
  nop                                                                  #  203   0x35882  1      
  nop                                                                  #  204   0x35883  1      
  callq ._Unwind_Resume                                                #  205   0x35884  5      
.L_35b80:                                                              #        0x35889  0      
  movl $0x10030cf0, %edi                                               #  206   0x35889  5      
  movl %eax, %r12d                                                     #  207   0x3588e  3      
  nop                                                                  #  208   0x35891  1      
  nop                                                                  #  209   0x35892  1      
  callq .__cxa_guard_abort                                             #  210   0x35893  5      
  jmpq .L_35b40                                                        #  211   0x35898  5      
  nop                                                                  #  212   0x3589d  1      
  nop                                                                  #  213   0x3589e  1      
.L_35bc0:                                                              #        0x3589f  0      
  movl $0x10030ce0, %edi                                               #  214   0x3589f  5      
  movl %eax, %r12d                                                     #  215   0x358a4  3      
  nop                                                                  #  216   0x358a7  1      
  nop                                                                  #  217   0x358a8  1      
  callq .__cxa_guard_abort                                             #  218   0x358a9  5      
  jmpq .L_35b40                                                        #  219   0x358ae  5      
  nop                                                                  #  220   0x358b3  1      
  nop                                                                  #  221   0x358b4  1      
  jmpq .L_35b80                                                        #  222   0x358b5  5      
  nop                                                                  #  223   0x358ba  1      
  nop                                                                  #  224   0x358bb  1      
  movl %eax, %r12d                                                     #  225   0x358bc  3      
  jmpq .L_35b40                                                        #  226   0x358bf  5      
  nop                                                                  #  227   0x358c4  1      
  nop                                                                  #  228   0x358c5  1      
  jmpq .L_35bc0                                                        #  229   0x358c6  5      
  nop                                                                  #  230   0x358cb  1      
  nop                                                                  #  231   0x358cc  1      
  nop                                                                  #  232   0x358cd  1      
  nop                                                                  #  233   0x358ce  1      
  nop                                                                  #  234   0x358cf  1      
  nop                                                                  #  235   0x358d0  1      
  nop                                                                  #  236   0x358d1  1      
  nop                                                                  #  237   0x358d2  1      
  nop                                                                  #  238   0x358d3  1      
  nop                                                                  #  239   0x358d4  1      
  nop                                                                  #  240   0x358d5  1      
  nop                                                                  #  241   0x358d6  1      
  nop                                                                  #  242   0x358d7  1      
  nop                                                                  #  243   0x358d8  1      
  nop                                                                  #  244   0x358d9  1      
  nop                                                                  #  245   0x358da  1      
  nop                                                                  #  246   0x358db  1      
  nop                                                                  #  247   0x358dc  1      
  nop                                                                  #  248   0x358dd  1      
  nop                                                                  #  249   0x358de  1      
  nop                                                                  #  250   0x358df  1      
  nop                                                                  #  251   0x358e0  1      
  nop                                                                  #  252   0x358e1  1      
  nop                                                                  #  253   0x358e2  1      
  nop                                                                  #  254   0x358e3  1      
  nop                                                                  #  255   0x358e4  1      
  nop                                                                  #  256   0x358e5  1      
                                                                                                
.size _ZN2pp7FileRefC2ERKNS_10FileSystemEPKc, .-_ZN2pp7FileRefC2ERKNS_10FileSystemEPKc

