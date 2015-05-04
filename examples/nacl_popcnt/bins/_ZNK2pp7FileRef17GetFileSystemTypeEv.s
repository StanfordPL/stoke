  .text
  .globl _ZNK2pp7FileRef17GetFileSystemTypeEv
  .type _ZNK2pp7FileRef17GetFileSystemTypeEv, @function

#! file-offset 0x323c0
#! rip-offset  0x323c0
#! capacity    1632 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef17GetFileSystemTypeEv:           #        0x323c0  0      
  cmpb $0x0, 0xfffe919(%rip)                     #  1     0x323c0  7      
  pushq %rbx                                     #  2     0x323c7  2      
  movl %edi, %ebx                                #  3     0x323c9  2      
  je .L_32580                                    #  4     0x323cb  6      
  nop                                            #  5     0x323d1  1      
  nop                                            #  6     0x323d2  1      
.L_323e0:                                        #        0x323d3  0      
  movl 0xfffe90f(%rip), %eax                     #  7     0x323d3  6      
  testq %rax, %rax                               #  8     0x323d9  3      
  jne .L_32520                                   #  9     0x323dc  6      
  cmpb $0x0, 0xfffe907(%rip)                     #  10    0x323e2  7      
  je .L_32480                                    #  11    0x323e9  6      
  nop                                            #  12    0x323ef  1      
.L_32400:                                        #        0x323f0  0      
  movl 0xfffe902(%rip), %eax                     #  13    0x323f0  6      
  testq %rax, %rax                               #  14    0x323f6  3      
  jne .L_32440                                   #  15    0x323f9  6      
  cmpb $0x0, 0xfffe8fa(%rip)                     #  16    0x323ff  7      
  je .L_326e0                                    #  17    0x32406  6      
  nop                                            #  18    0x3240c  1      
.L_32420:                                        #        0x3240d  0      
  movl 0xfffe8f5(%rip), %eax                     #  19    0x3240d  6      
  testq %rax, %rax                               #  20    0x32413  3      
  jne .L_32680                                   #  21    0x32416  6      
  popq %rbx                                      #  22    0x3241c  2      
  popq %r11                                      #  23    0x3241e  3      
  movb $0x1, %al                                 #  24    0x32421  2      
  andl $0xffffffe0, %r11d                        #  25    0x32423  7      
  addq %r15, %r11                                #  26    0x3242a  3      
  jmpq %r11                                      #  27    0x3242d  3      
  xchgw %ax, %ax                                 #  28    0x32430  3      
.L_32440:                                        #        0x32433  0      
  cmpb $0x0, 0xfffe8b6(%rip)                     #  29    0x32433  7      
  je .L_32620                                    #  30    0x3243a  6      
  nop                                            #  31    0x32440  1      
  nop                                            #  32    0x32441  1      
.L_32460:                                        #        0x32442  0      
  movl %ebx, %ebx                                #  33    0x32442  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  34    0x32444  5      
  movl %eax, %eax                                #  35    0x32449  2      
  movl 0x8(%r15,%rax,1), %eax                    #  36    0x3244b  5      
  popq %rbx                                      #  37    0x32450  2      
  andl $0xffffffe0, %eax                         #  38    0x32452  5      
  addq %r15, %rax                                #  39    0x32457  3      
  jmpq %rax                                      #  40    0x3245a  2      
  nop                                            #  41    0x3245c  1      
.L_32480:                                        #        0x3245d  0      
  movl $0x10030cf0, %edi                         #  42    0x3245d  5      
  nop                                            #  43    0x32462  1      
  nop                                            #  44    0x32463  1      
  callq .__cxa_guard_acquire                     #  45    0x32464  5      
  testl %eax, %eax                               #  46    0x32469  2      
  je .L_32400                                    #  47    0x3246b  6      
  nop                                            #  48    0x32471  1      
  nop                                            #  49    0x32472  1      
  callq ._ZN2pp6Module3GetEv                     #  50    0x32473  5      
  movl %eax, %edi                                #  51    0x32478  2      
  movl $0x10020664, %esi                         #  52    0x3247a  5      
  nop                                            #  53    0x3247f  1      
  nop                                            #  54    0x32480  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  55    0x32481  5      
  movl $0x10030cf0, %edi                         #  56    0x32486  5      
  movl %eax, 0xfffe867(%rip)                     #  57    0x3248b  6      
  nop                                            #  58    0x32491  1      
  nop                                            #  59    0x32492  1      
  callq .__cxa_guard_release                     #  60    0x32493  5      
  jmpq .L_32400                                  #  61    0x32498  5      
  nop                                            #  62    0x3249d  1      
  nop                                            #  63    0x3249e  1      
.L_32520:                                        #        0x3249f  0      
  cmpb $0x0, 0xfffe83a(%rip)                     #  64    0x3249f  7      
  jne .L_32460                                   #  65    0x324a6  6      
  movl $0x10030ce0, %edi                         #  66    0x324ac  5      
  nop                                            #  67    0x324b1  1      
  callq .__cxa_guard_acquire                     #  68    0x324b2  5      
  testl %eax, %eax                               #  69    0x324b7  2      
  jne .L_32780                                   #  70    0x324b9  6      
  nop                                            #  71    0x324bf  1      
  nop                                            #  72    0x324c0  1      
.L_32560:                                        #        0x324c1  0      
  movl 0xfffe821(%rip), %eax                     #  73    0x324c1  6      
  movl %ebx, %ebx                                #  74    0x324c7  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  75    0x324c9  5      
  popq %rbx                                      #  76    0x324ce  2      
  movl %eax, %eax                                #  77    0x324d0  2      
  movl 0x8(%r15,%rax,1), %eax                    #  78    0x324d2  5      
  andl $0xffffffe0, %eax                         #  79    0x324d7  5      
  addq %r15, %rax                                #  80    0x324dc  3      
  jmpq %rax                                      #  81    0x324df  2      
  nop                                            #  82    0x324e1  1      
.L_32580:                                        #        0x324e2  0      
  movl $0x10030ce0, %edi                         #  83    0x324e2  5      
  nop                                            #  84    0x324e7  1      
  nop                                            #  85    0x324e8  1      
  callq .__cxa_guard_acquire                     #  86    0x324e9  5      
  testl %eax, %eax                               #  87    0x324ee  2      
  je .L_323e0                                    #  88    0x324f0  6      
  nop                                            #  89    0x324f6  1      
  nop                                            #  90    0x324f7  1      
  callq ._ZN2pp6Module3GetEv                     #  91    0x324f8  5      
  movl %eax, %edi                                #  92    0x324fd  2      
  movl $0x10020654, %esi                         #  93    0x324ff  5      
  nop                                            #  94    0x32504  1      
  nop                                            #  95    0x32505  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  96    0x32506  5      
  movl $0x10030ce0, %edi                         #  97    0x3250b  5      
  movl %eax, 0xfffe7d2(%rip)                     #  98    0x32510  6      
  nop                                            #  99    0x32516  1      
  nop                                            #  100   0x32517  1      
  callq .__cxa_guard_release                     #  101   0x32518  5      
  jmpq .L_323e0                                  #  102   0x3251d  5      
  nop                                            #  103   0x32522  1      
  nop                                            #  104   0x32523  1      
.L_32620:                                        #        0x32524  0      
  movl $0x10030cf0, %edi                         #  105   0x32524  5      
  nop                                            #  106   0x32529  1      
  nop                                            #  107   0x3252a  1      
  callq .__cxa_guard_acquire                     #  108   0x3252b  5      
  testl %eax, %eax                               #  109   0x32530  2      
  jne .L_32880                                   #  110   0x32532  6      
  nop                                            #  111   0x32538  1      
  nop                                            #  112   0x32539  1      
.L_32660:                                        #        0x3253a  0      
  movl 0xfffe7b8(%rip), %eax                     #  113   0x3253a  6      
  jmpq .L_32460                                  #  114   0x32540  5      
  nop                                            #  115   0x32545  1      
  nop                                            #  116   0x32546  1      
.L_32680:                                        #        0x32547  0      
  cmpb $0x0, 0xfffe7b2(%rip)                     #  117   0x32547  7      
  jne .L_32460                                   #  118   0x3254e  6      
  movl $0x10030d00, %edi                         #  119   0x32554  5      
  nop                                            #  120   0x32559  1      
  callq .__cxa_guard_acquire                     #  121   0x3255a  5      
  testl %eax, %eax                               #  122   0x3255f  2      
  jne .L_32800                                   #  123   0x32561  6      
  nop                                            #  124   0x32567  1      
  nop                                            #  125   0x32568  1      
.L_326c0:                                        #        0x32569  0      
  movl 0xfffe799(%rip), %eax                     #  126   0x32569  6      
  jmpq .L_32460                                  #  127   0x3256f  5      
  nop                                            #  128   0x32574  1      
  nop                                            #  129   0x32575  1      
.L_326e0:                                        #        0x32576  0      
  movl $0x10030d00, %edi                         #  130   0x32576  5      
  nop                                            #  131   0x3257b  1      
  nop                                            #  132   0x3257c  1      
  callq .__cxa_guard_acquire                     #  133   0x3257d  5      
  testl %eax, %eax                               #  134   0x32582  2      
  je .L_32420                                    #  135   0x32584  6      
  nop                                            #  136   0x3258a  1      
  nop                                            #  137   0x3258b  1      
  callq ._ZN2pp6Module3GetEv                     #  138   0x3258c  5      
  movl %eax, %edi                                #  139   0x32591  2      
  movl $0x10020644, %esi                         #  140   0x32593  5      
  nop                                            #  141   0x32598  1      
  nop                                            #  142   0x32599  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  143   0x3259a  5      
  movl $0x10030d00, %edi                         #  144   0x3259f  5      
  movl %eax, 0xfffe75e(%rip)                     #  145   0x325a4  6      
  nop                                            #  146   0x325aa  1      
  nop                                            #  147   0x325ab  1      
  callq .__cxa_guard_release                     #  148   0x325ac  5      
  jmpq .L_32420                                  #  149   0x325b1  5      
  nop                                            #  150   0x325b6  1      
  nop                                            #  151   0x325b7  1      
.L_32780:                                        #        0x325b8  0      
  nop                                            #  152   0x325b8  1      
  nop                                            #  153   0x325b9  1      
  callq ._ZN2pp6Module3GetEv                     #  154   0x325ba  5      
  movl %eax, %edi                                #  155   0x325bf  2      
  movl $0x10020654, %esi                         #  156   0x325c1  5      
  nop                                            #  157   0x325c6  1      
  nop                                            #  158   0x325c7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  159   0x325c8  5      
  movl $0x10030ce0, %edi                         #  160   0x325cd  5      
  movl %eax, 0xfffe710(%rip)                     #  161   0x325d2  6      
  nop                                            #  162   0x325d8  1      
  nop                                            #  163   0x325d9  1      
  callq .__cxa_guard_release                     #  164   0x325da  5      
  jmpq .L_32560                                  #  165   0x325df  5      
  nop                                            #  166   0x325e4  1      
  nop                                            #  167   0x325e5  1      
.L_32800:                                        #        0x325e6  0      
  nop                                            #  168   0x325e6  1      
  nop                                            #  169   0x325e7  1      
  callq ._ZN2pp6Module3GetEv                     #  170   0x325e8  5      
  movl %eax, %edi                                #  171   0x325ed  2      
  movl $0x10020644, %esi                         #  172   0x325ef  5      
  nop                                            #  173   0x325f4  1      
  nop                                            #  174   0x325f5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  175   0x325f6  5      
  movl $0x10030d00, %edi                         #  176   0x325fb  5      
  movl %eax, 0xfffe702(%rip)                     #  177   0x32600  6      
  nop                                            #  178   0x32606  1      
  nop                                            #  179   0x32607  1      
  callq .__cxa_guard_release                     #  180   0x32608  5      
  jmpq .L_326c0                                  #  181   0x3260d  5      
  nop                                            #  182   0x32612  1      
  nop                                            #  183   0x32613  1      
.L_32880:                                        #        0x32614  0      
  nop                                            #  184   0x32614  1      
  nop                                            #  185   0x32615  1      
  callq ._ZN2pp6Module3GetEv                     #  186   0x32616  5      
  movl %eax, %edi                                #  187   0x3261b  2      
  movl $0x10020664, %esi                         #  188   0x3261d  5      
  nop                                            #  189   0x32622  1      
  nop                                            #  190   0x32623  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  191   0x32624  5      
  movl $0x10030cf0, %edi                         #  192   0x32629  5      
  movl %eax, 0xfffe6c4(%rip)                     #  193   0x3262e  6      
  nop                                            #  194   0x32634  1      
  nop                                            #  195   0x32635  1      
  callq .__cxa_guard_release                     #  196   0x32636  5      
  jmpq .L_32660                                  #  197   0x3263b  5      
  nop                                            #  198   0x32640  1      
  nop                                            #  199   0x32641  1      
.L_32900:                                        #        0x32642  0      
  movl %eax, %ebx                                #  200   0x32642  2      
  movl $0x10030d00, %edi                         #  201   0x32644  5      
  nop                                            #  202   0x32649  1      
  nop                                            #  203   0x3264a  1      
  callq .__cxa_guard_abort                       #  204   0x3264b  5      
  movl %ebx, %edi                                #  205   0x32650  2      
  nop                                            #  206   0x32652  1      
  nop                                            #  207   0x32653  1      
  callq ._Unwind_Resume                          #  208   0x32654  5      
.L_32940:                                        #        0x32659  0      
  movl %eax, %ebx                                #  209   0x32659  2      
  movl $0x10030cf0, %edi                         #  210   0x3265b  5      
  nop                                            #  211   0x32660  1      
  nop                                            #  212   0x32661  1      
  callq .__cxa_guard_abort                       #  213   0x32662  5      
  movl %ebx, %edi                                #  214   0x32667  2      
  nop                                            #  215   0x32669  1      
  nop                                            #  216   0x3266a  1      
  callq ._Unwind_Resume                          #  217   0x3266b  5      
  jmpq .L_32940                                  #  218   0x32670  5      
  nop                                            #  219   0x32675  1      
  nop                                            #  220   0x32676  1      
.L_329a0:                                        #        0x32677  0      
  movl %eax, %ebx                                #  221   0x32677  2      
  movl $0x10030ce0, %edi                         #  222   0x32679  5      
  nop                                            #  223   0x3267e  1      
  nop                                            #  224   0x3267f  1      
  callq .__cxa_guard_abort                       #  225   0x32680  5      
  movl %ebx, %edi                                #  226   0x32685  2      
  nop                                            #  227   0x32687  1      
  nop                                            #  228   0x32688  1      
  callq ._Unwind_Resume                          #  229   0x32689  5      
  jmpq .L_329a0                                  #  230   0x3268e  5      
  nop                                            #  231   0x32693  1      
  nop                                            #  232   0x32694  1      
  jmpq .L_32900                                  #  233   0x32695  5      
  nop                                            #  234   0x3269a  1      
  nop                                            #  235   0x3269b  1      
  nop                                            #  236   0x3269c  1      
                                                                          
.size _ZNK2pp7FileRef17GetFileSystemTypeEv, .-_ZNK2pp7FileRef17GetFileSystemTypeEv

