  .text
  .globl _ZNK2pp7FileRef17GetFileSystemTypeEv
  .type _ZNK2pp7FileRef17GetFileSystemTypeEv, @function

#! file-offset 0x32340
#! rip-offset  0x32340
#! capacity    1632 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef17GetFileSystemTypeEv:           #        0x32340  0      
  cmpb $0x0, 0xfffe999(%rip)                     #  1     0x32340  7      
  pushq %rbx                                     #  2     0x32347  2      
  movl %edi, %ebx                                #  3     0x32349  2      
  je .L_32500                                    #  4     0x3234b  6      
  nop                                            #  5     0x32351  1      
  nop                                            #  6     0x32352  1      
.L_32360:                                        #        0x32353  0      
  movl 0xfffe98f(%rip), %eax                     #  7     0x32353  6      
  testq %rax, %rax                               #  8     0x32359  3      
  jne .L_324a0                                   #  9     0x3235c  6      
  cmpb $0x0, 0xfffe987(%rip)                     #  10    0x32362  7      
  je .L_32400                                    #  11    0x32369  6      
  nop                                            #  12    0x3236f  1      
.L_32380:                                        #        0x32370  0      
  movl 0xfffe982(%rip), %eax                     #  13    0x32370  6      
  testq %rax, %rax                               #  14    0x32376  3      
  jne .L_323c0                                   #  15    0x32379  6      
  cmpb $0x0, 0xfffe97a(%rip)                     #  16    0x3237f  7      
  je .L_32660                                    #  17    0x32386  6      
  nop                                            #  18    0x3238c  1      
.L_323a0:                                        #        0x3238d  0      
  movl 0xfffe975(%rip), %eax                     #  19    0x3238d  6      
  testq %rax, %rax                               #  20    0x32393  3      
  jne .L_32600                                   #  21    0x32396  6      
  popq %rbx                                      #  22    0x3239c  2      
  popq %r11                                      #  23    0x3239e  3      
  movb $0x1, %al                                 #  24    0x323a1  2      
  andl $0xffffffe0, %r11d                        #  25    0x323a3  7      
  addq %r15, %r11                                #  26    0x323aa  3      
  jmpq %r11                                      #  27    0x323ad  3      
  xchgw %ax, %ax                                 #  28    0x323b0  3      
.L_323c0:                                        #        0x323b3  0      
  cmpb $0x0, 0xfffe936(%rip)                     #  29    0x323b3  7      
  je .L_325a0                                    #  30    0x323ba  6      
  nop                                            #  31    0x323c0  1      
  nop                                            #  32    0x323c1  1      
.L_323e0:                                        #        0x323c2  0      
  movl %ebx, %ebx                                #  33    0x323c2  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  34    0x323c4  5      
  movl %eax, %eax                                #  35    0x323c9  2      
  movl 0x8(%r15,%rax,1), %eax                    #  36    0x323cb  5      
  popq %rbx                                      #  37    0x323d0  2      
  andl $0xffffffe0, %eax                         #  38    0x323d2  5      
  addq %r15, %rax                                #  39    0x323d7  3      
  jmpq %rax                                      #  40    0x323da  2      
  nop                                            #  41    0x323dc  1      
.L_32400:                                        #        0x323dd  0      
  movl $0x10030cf0, %edi                         #  42    0x323dd  5      
  nop                                            #  43    0x323e2  1      
  nop                                            #  44    0x323e3  1      
  callq .__cxa_guard_acquire                     #  45    0x323e4  5      
  testl %eax, %eax                               #  46    0x323e9  2      
  je .L_32380                                    #  47    0x323eb  6      
  nop                                            #  48    0x323f1  1      
  nop                                            #  49    0x323f2  1      
  callq ._ZN2pp6Module3GetEv                     #  50    0x323f3  5      
  movl %eax, %edi                                #  51    0x323f8  2      
  movl $0x10020664, %esi                         #  52    0x323fa  5      
  nop                                            #  53    0x323ff  1      
  nop                                            #  54    0x32400  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  55    0x32401  5      
  movl $0x10030cf0, %edi                         #  56    0x32406  5      
  movl %eax, 0xfffe8e7(%rip)                     #  57    0x3240b  6      
  nop                                            #  58    0x32411  1      
  nop                                            #  59    0x32412  1      
  callq .__cxa_guard_release                     #  60    0x32413  5      
  jmpq .L_32380                                  #  61    0x32418  5      
  nop                                            #  62    0x3241d  1      
  nop                                            #  63    0x3241e  1      
.L_324a0:                                        #        0x3241f  0      
  cmpb $0x0, 0xfffe8ba(%rip)                     #  64    0x3241f  7      
  jne .L_323e0                                   #  65    0x32426  6      
  movl $0x10030ce0, %edi                         #  66    0x3242c  5      
  nop                                            #  67    0x32431  1      
  callq .__cxa_guard_acquire                     #  68    0x32432  5      
  testl %eax, %eax                               #  69    0x32437  2      
  jne .L_32700                                   #  70    0x32439  6      
  nop                                            #  71    0x3243f  1      
  nop                                            #  72    0x32440  1      
.L_324e0:                                        #        0x32441  0      
  movl 0xfffe8a1(%rip), %eax                     #  73    0x32441  6      
  movl %ebx, %ebx                                #  74    0x32447  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  75    0x32449  5      
  popq %rbx                                      #  76    0x3244e  2      
  movl %eax, %eax                                #  77    0x32450  2      
  movl 0x8(%r15,%rax,1), %eax                    #  78    0x32452  5      
  andl $0xffffffe0, %eax                         #  79    0x32457  5      
  addq %r15, %rax                                #  80    0x3245c  3      
  jmpq %rax                                      #  81    0x3245f  2      
  nop                                            #  82    0x32461  1      
.L_32500:                                        #        0x32462  0      
  movl $0x10030ce0, %edi                         #  83    0x32462  5      
  nop                                            #  84    0x32467  1      
  nop                                            #  85    0x32468  1      
  callq .__cxa_guard_acquire                     #  86    0x32469  5      
  testl %eax, %eax                               #  87    0x3246e  2      
  je .L_32360                                    #  88    0x32470  6      
  nop                                            #  89    0x32476  1      
  nop                                            #  90    0x32477  1      
  callq ._ZN2pp6Module3GetEv                     #  91    0x32478  5      
  movl %eax, %edi                                #  92    0x3247d  2      
  movl $0x10020654, %esi                         #  93    0x3247f  5      
  nop                                            #  94    0x32484  1      
  nop                                            #  95    0x32485  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  96    0x32486  5      
  movl $0x10030ce0, %edi                         #  97    0x3248b  5      
  movl %eax, 0xfffe852(%rip)                     #  98    0x32490  6      
  nop                                            #  99    0x32496  1      
  nop                                            #  100   0x32497  1      
  callq .__cxa_guard_release                     #  101   0x32498  5      
  jmpq .L_32360                                  #  102   0x3249d  5      
  nop                                            #  103   0x324a2  1      
  nop                                            #  104   0x324a3  1      
.L_325a0:                                        #        0x324a4  0      
  movl $0x10030cf0, %edi                         #  105   0x324a4  5      
  nop                                            #  106   0x324a9  1      
  nop                                            #  107   0x324aa  1      
  callq .__cxa_guard_acquire                     #  108   0x324ab  5      
  testl %eax, %eax                               #  109   0x324b0  2      
  jne .L_32800                                   #  110   0x324b2  6      
  nop                                            #  111   0x324b8  1      
  nop                                            #  112   0x324b9  1      
.L_325e0:                                        #        0x324ba  0      
  movl 0xfffe838(%rip), %eax                     #  113   0x324ba  6      
  jmpq .L_323e0                                  #  114   0x324c0  5      
  nop                                            #  115   0x324c5  1      
  nop                                            #  116   0x324c6  1      
.L_32600:                                        #        0x324c7  0      
  cmpb $0x0, 0xfffe832(%rip)                     #  117   0x324c7  7      
  jne .L_323e0                                   #  118   0x324ce  6      
  movl $0x10030d00, %edi                         #  119   0x324d4  5      
  nop                                            #  120   0x324d9  1      
  callq .__cxa_guard_acquire                     #  121   0x324da  5      
  testl %eax, %eax                               #  122   0x324df  2      
  jne .L_32780                                   #  123   0x324e1  6      
  nop                                            #  124   0x324e7  1      
  nop                                            #  125   0x324e8  1      
.L_32640:                                        #        0x324e9  0      
  movl 0xfffe819(%rip), %eax                     #  126   0x324e9  6      
  jmpq .L_323e0                                  #  127   0x324ef  5      
  nop                                            #  128   0x324f4  1      
  nop                                            #  129   0x324f5  1      
.L_32660:                                        #        0x324f6  0      
  movl $0x10030d00, %edi                         #  130   0x324f6  5      
  nop                                            #  131   0x324fb  1      
  nop                                            #  132   0x324fc  1      
  callq .__cxa_guard_acquire                     #  133   0x324fd  5      
  testl %eax, %eax                               #  134   0x32502  2      
  je .L_323a0                                    #  135   0x32504  6      
  nop                                            #  136   0x3250a  1      
  nop                                            #  137   0x3250b  1      
  callq ._ZN2pp6Module3GetEv                     #  138   0x3250c  5      
  movl %eax, %edi                                #  139   0x32511  2      
  movl $0x10020644, %esi                         #  140   0x32513  5      
  nop                                            #  141   0x32518  1      
  nop                                            #  142   0x32519  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  143   0x3251a  5      
  movl $0x10030d00, %edi                         #  144   0x3251f  5      
  movl %eax, 0xfffe7de(%rip)                     #  145   0x32524  6      
  nop                                            #  146   0x3252a  1      
  nop                                            #  147   0x3252b  1      
  callq .__cxa_guard_release                     #  148   0x3252c  5      
  jmpq .L_323a0                                  #  149   0x32531  5      
  nop                                            #  150   0x32536  1      
  nop                                            #  151   0x32537  1      
.L_32700:                                        #        0x32538  0      
  nop                                            #  152   0x32538  1      
  nop                                            #  153   0x32539  1      
  callq ._ZN2pp6Module3GetEv                     #  154   0x3253a  5      
  movl %eax, %edi                                #  155   0x3253f  2      
  movl $0x10020654, %esi                         #  156   0x32541  5      
  nop                                            #  157   0x32546  1      
  nop                                            #  158   0x32547  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  159   0x32548  5      
  movl $0x10030ce0, %edi                         #  160   0x3254d  5      
  movl %eax, 0xfffe790(%rip)                     #  161   0x32552  6      
  nop                                            #  162   0x32558  1      
  nop                                            #  163   0x32559  1      
  callq .__cxa_guard_release                     #  164   0x3255a  5      
  jmpq .L_324e0                                  #  165   0x3255f  5      
  nop                                            #  166   0x32564  1      
  nop                                            #  167   0x32565  1      
.L_32780:                                        #        0x32566  0      
  nop                                            #  168   0x32566  1      
  nop                                            #  169   0x32567  1      
  callq ._ZN2pp6Module3GetEv                     #  170   0x32568  5      
  movl %eax, %edi                                #  171   0x3256d  2      
  movl $0x10020644, %esi                         #  172   0x3256f  5      
  nop                                            #  173   0x32574  1      
  nop                                            #  174   0x32575  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  175   0x32576  5      
  movl $0x10030d00, %edi                         #  176   0x3257b  5      
  movl %eax, 0xfffe782(%rip)                     #  177   0x32580  6      
  nop                                            #  178   0x32586  1      
  nop                                            #  179   0x32587  1      
  callq .__cxa_guard_release                     #  180   0x32588  5      
  jmpq .L_32640                                  #  181   0x3258d  5      
  nop                                            #  182   0x32592  1      
  nop                                            #  183   0x32593  1      
.L_32800:                                        #        0x32594  0      
  nop                                            #  184   0x32594  1      
  nop                                            #  185   0x32595  1      
  callq ._ZN2pp6Module3GetEv                     #  186   0x32596  5      
  movl %eax, %edi                                #  187   0x3259b  2      
  movl $0x10020664, %esi                         #  188   0x3259d  5      
  nop                                            #  189   0x325a2  1      
  nop                                            #  190   0x325a3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  191   0x325a4  5      
  movl $0x10030cf0, %edi                         #  192   0x325a9  5      
  movl %eax, 0xfffe744(%rip)                     #  193   0x325ae  6      
  nop                                            #  194   0x325b4  1      
  nop                                            #  195   0x325b5  1      
  callq .__cxa_guard_release                     #  196   0x325b6  5      
  jmpq .L_325e0                                  #  197   0x325bb  5      
  nop                                            #  198   0x325c0  1      
  nop                                            #  199   0x325c1  1      
.L_32880:                                        #        0x325c2  0      
  movl %eax, %ebx                                #  200   0x325c2  2      
  movl $0x10030d00, %edi                         #  201   0x325c4  5      
  nop                                            #  202   0x325c9  1      
  nop                                            #  203   0x325ca  1      
  callq .__cxa_guard_abort                       #  204   0x325cb  5      
  movl %ebx, %edi                                #  205   0x325d0  2      
  nop                                            #  206   0x325d2  1      
  nop                                            #  207   0x325d3  1      
  callq ._Unwind_Resume                          #  208   0x325d4  5      
.L_328c0:                                        #        0x325d9  0      
  movl %eax, %ebx                                #  209   0x325d9  2      
  movl $0x10030cf0, %edi                         #  210   0x325db  5      
  nop                                            #  211   0x325e0  1      
  nop                                            #  212   0x325e1  1      
  callq .__cxa_guard_abort                       #  213   0x325e2  5      
  movl %ebx, %edi                                #  214   0x325e7  2      
  nop                                            #  215   0x325e9  1      
  nop                                            #  216   0x325ea  1      
  callq ._Unwind_Resume                          #  217   0x325eb  5      
  jmpq .L_328c0                                  #  218   0x325f0  5      
  nop                                            #  219   0x325f5  1      
  nop                                            #  220   0x325f6  1      
.L_32920:                                        #        0x325f7  0      
  movl %eax, %ebx                                #  221   0x325f7  2      
  movl $0x10030ce0, %edi                         #  222   0x325f9  5      
  nop                                            #  223   0x325fe  1      
  nop                                            #  224   0x325ff  1      
  callq .__cxa_guard_abort                       #  225   0x32600  5      
  movl %ebx, %edi                                #  226   0x32605  2      
  nop                                            #  227   0x32607  1      
  nop                                            #  228   0x32608  1      
  callq ._Unwind_Resume                          #  229   0x32609  5      
  jmpq .L_32920                                  #  230   0x3260e  5      
  nop                                            #  231   0x32613  1      
  nop                                            #  232   0x32614  1      
  jmpq .L_32880                                  #  233   0x32615  5      
  nop                                            #  234   0x3261a  1      
  nop                                            #  235   0x3261b  1      
  nop                                            #  236   0x3261c  1      
                                                                          
.size _ZNK2pp7FileRef17GetFileSystemTypeEv, .-_ZNK2pp7FileRef17GetFileSystemTypeEv

