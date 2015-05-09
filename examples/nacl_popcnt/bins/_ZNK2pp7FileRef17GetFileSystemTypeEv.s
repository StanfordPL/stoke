  .text
  .globl _ZNK2pp7FileRef17GetFileSystemTypeEv
  .type _ZNK2pp7FileRef17GetFileSystemTypeEv, @function

#! file-offset 0x32320
#! rip-offset  0x32320
#! capacity    1632 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp7FileRef17GetFileSystemTypeEv:           #        0x32320  0      
  cmpb $0x0, 0xfffe9b9(%rip)                     #  1     0x32320  7      
  pushq %rbx                                     #  2     0x32327  2      
  movl %edi, %ebx                                #  3     0x32329  2      
  je .L_324e0                                    #  4     0x3232b  6      
  nop                                            #  5     0x32331  1      
  nop                                            #  6     0x32332  1      
.L_32340:                                        #        0x32333  0      
  movl 0xfffe9af(%rip), %eax                     #  7     0x32333  6      
  testq %rax, %rax                               #  8     0x32339  3      
  jne .L_32480                                   #  9     0x3233c  6      
  cmpb $0x0, 0xfffe9a7(%rip)                     #  10    0x32342  7      
  je .L_323e0                                    #  11    0x32349  6      
  nop                                            #  12    0x3234f  1      
.L_32360:                                        #        0x32350  0      
  movl 0xfffe9a2(%rip), %eax                     #  13    0x32350  6      
  testq %rax, %rax                               #  14    0x32356  3      
  jne .L_323a0                                   #  15    0x32359  6      
  cmpb $0x0, 0xfffe99a(%rip)                     #  16    0x3235f  7      
  je .L_32640                                    #  17    0x32366  6      
  nop                                            #  18    0x3236c  1      
.L_32380:                                        #        0x3236d  0      
  movl 0xfffe995(%rip), %eax                     #  19    0x3236d  6      
  testq %rax, %rax                               #  20    0x32373  3      
  jne .L_325e0                                   #  21    0x32376  6      
  popq %rbx                                      #  22    0x3237c  2      
  popq %r11                                      #  23    0x3237e  3      
  movb $0x1, %al                                 #  24    0x32381  2      
  andl $0xffffffe0, %r11d                        #  25    0x32383  7      
  addq %r15, %r11                                #  26    0x3238a  3      
  jmpq %r11                                      #  27    0x3238d  3      
  xchgw %ax, %ax                                 #  28    0x32390  3      
.L_323a0:                                        #        0x32393  0      
  cmpb $0x0, 0xfffe956(%rip)                     #  29    0x32393  7      
  je .L_32580                                    #  30    0x3239a  6      
  nop                                            #  31    0x323a0  1      
  nop                                            #  32    0x323a1  1      
.L_323c0:                                        #        0x323a2  0      
  movl %ebx, %ebx                                #  33    0x323a2  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  34    0x323a4  5      
  movl %eax, %eax                                #  35    0x323a9  2      
  movl 0x8(%r15,%rax,1), %eax                    #  36    0x323ab  5      
  popq %rbx                                      #  37    0x323b0  2      
  andl $0xffffffe0, %eax                         #  38    0x323b2  5      
  addq %r15, %rax                                #  39    0x323b7  3      
  jmpq %rax                                      #  40    0x323ba  2      
  nop                                            #  41    0x323bc  1      
.L_323e0:                                        #        0x323bd  0      
  movl $0x10030cf0, %edi                         #  42    0x323bd  5      
  nop                                            #  43    0x323c2  1      
  nop                                            #  44    0x323c3  1      
  callq .__cxa_guard_acquire                     #  45    0x323c4  5      
  testl %eax, %eax                               #  46    0x323c9  2      
  je .L_32360                                    #  47    0x323cb  6      
  nop                                            #  48    0x323d1  1      
  nop                                            #  49    0x323d2  1      
  callq ._ZN2pp6Module3GetEv                     #  50    0x323d3  5      
  movl %eax, %edi                                #  51    0x323d8  2      
  movl $0x10020664, %esi                         #  52    0x323da  5      
  nop                                            #  53    0x323df  1      
  nop                                            #  54    0x323e0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  55    0x323e1  5      
  movl $0x10030cf0, %edi                         #  56    0x323e6  5      
  movl %eax, 0xfffe907(%rip)                     #  57    0x323eb  6      
  nop                                            #  58    0x323f1  1      
  nop                                            #  59    0x323f2  1      
  callq .__cxa_guard_release                     #  60    0x323f3  5      
  jmpq .L_32360                                  #  61    0x323f8  5      
  nop                                            #  62    0x323fd  1      
  nop                                            #  63    0x323fe  1      
.L_32480:                                        #        0x323ff  0      
  cmpb $0x0, 0xfffe8da(%rip)                     #  64    0x323ff  7      
  jne .L_323c0                                   #  65    0x32406  6      
  movl $0x10030ce0, %edi                         #  66    0x3240c  5      
  nop                                            #  67    0x32411  1      
  callq .__cxa_guard_acquire                     #  68    0x32412  5      
  testl %eax, %eax                               #  69    0x32417  2      
  jne .L_326e0                                   #  70    0x32419  6      
  nop                                            #  71    0x3241f  1      
  nop                                            #  72    0x32420  1      
.L_324c0:                                        #        0x32421  0      
  movl 0xfffe8c1(%rip), %eax                     #  73    0x32421  6      
  movl %ebx, %ebx                                #  74    0x32427  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  75    0x32429  5      
  popq %rbx                                      #  76    0x3242e  2      
  movl %eax, %eax                                #  77    0x32430  2      
  movl 0x8(%r15,%rax,1), %eax                    #  78    0x32432  5      
  andl $0xffffffe0, %eax                         #  79    0x32437  5      
  addq %r15, %rax                                #  80    0x3243c  3      
  jmpq %rax                                      #  81    0x3243f  2      
  nop                                            #  82    0x32441  1      
.L_324e0:                                        #        0x32442  0      
  movl $0x10030ce0, %edi                         #  83    0x32442  5      
  nop                                            #  84    0x32447  1      
  nop                                            #  85    0x32448  1      
  callq .__cxa_guard_acquire                     #  86    0x32449  5      
  testl %eax, %eax                               #  87    0x3244e  2      
  je .L_32340                                    #  88    0x32450  6      
  nop                                            #  89    0x32456  1      
  nop                                            #  90    0x32457  1      
  callq ._ZN2pp6Module3GetEv                     #  91    0x32458  5      
  movl %eax, %edi                                #  92    0x3245d  2      
  movl $0x10020654, %esi                         #  93    0x3245f  5      
  nop                                            #  94    0x32464  1      
  nop                                            #  95    0x32465  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  96    0x32466  5      
  movl $0x10030ce0, %edi                         #  97    0x3246b  5      
  movl %eax, 0xfffe872(%rip)                     #  98    0x32470  6      
  nop                                            #  99    0x32476  1      
  nop                                            #  100   0x32477  1      
  callq .__cxa_guard_release                     #  101   0x32478  5      
  jmpq .L_32340                                  #  102   0x3247d  5      
  nop                                            #  103   0x32482  1      
  nop                                            #  104   0x32483  1      
.L_32580:                                        #        0x32484  0      
  movl $0x10030cf0, %edi                         #  105   0x32484  5      
  nop                                            #  106   0x32489  1      
  nop                                            #  107   0x3248a  1      
  callq .__cxa_guard_acquire                     #  108   0x3248b  5      
  testl %eax, %eax                               #  109   0x32490  2      
  jne .L_327e0                                   #  110   0x32492  6      
  nop                                            #  111   0x32498  1      
  nop                                            #  112   0x32499  1      
.L_325c0:                                        #        0x3249a  0      
  movl 0xfffe858(%rip), %eax                     #  113   0x3249a  6      
  jmpq .L_323c0                                  #  114   0x324a0  5      
  nop                                            #  115   0x324a5  1      
  nop                                            #  116   0x324a6  1      
.L_325e0:                                        #        0x324a7  0      
  cmpb $0x0, 0xfffe852(%rip)                     #  117   0x324a7  7      
  jne .L_323c0                                   #  118   0x324ae  6      
  movl $0x10030d00, %edi                         #  119   0x324b4  5      
  nop                                            #  120   0x324b9  1      
  callq .__cxa_guard_acquire                     #  121   0x324ba  5      
  testl %eax, %eax                               #  122   0x324bf  2      
  jne .L_32760                                   #  123   0x324c1  6      
  nop                                            #  124   0x324c7  1      
  nop                                            #  125   0x324c8  1      
.L_32620:                                        #        0x324c9  0      
  movl 0xfffe839(%rip), %eax                     #  126   0x324c9  6      
  jmpq .L_323c0                                  #  127   0x324cf  5      
  nop                                            #  128   0x324d4  1      
  nop                                            #  129   0x324d5  1      
.L_32640:                                        #        0x324d6  0      
  movl $0x10030d00, %edi                         #  130   0x324d6  5      
  nop                                            #  131   0x324db  1      
  nop                                            #  132   0x324dc  1      
  callq .__cxa_guard_acquire                     #  133   0x324dd  5      
  testl %eax, %eax                               #  134   0x324e2  2      
  je .L_32380                                    #  135   0x324e4  6      
  nop                                            #  136   0x324ea  1      
  nop                                            #  137   0x324eb  1      
  callq ._ZN2pp6Module3GetEv                     #  138   0x324ec  5      
  movl %eax, %edi                                #  139   0x324f1  2      
  movl $0x10020644, %esi                         #  140   0x324f3  5      
  nop                                            #  141   0x324f8  1      
  nop                                            #  142   0x324f9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  143   0x324fa  5      
  movl $0x10030d00, %edi                         #  144   0x324ff  5      
  movl %eax, 0xfffe7fe(%rip)                     #  145   0x32504  6      
  nop                                            #  146   0x3250a  1      
  nop                                            #  147   0x3250b  1      
  callq .__cxa_guard_release                     #  148   0x3250c  5      
  jmpq .L_32380                                  #  149   0x32511  5      
  nop                                            #  150   0x32516  1      
  nop                                            #  151   0x32517  1      
.L_326e0:                                        #        0x32518  0      
  nop                                            #  152   0x32518  1      
  nop                                            #  153   0x32519  1      
  callq ._ZN2pp6Module3GetEv                     #  154   0x3251a  5      
  movl %eax, %edi                                #  155   0x3251f  2      
  movl $0x10020654, %esi                         #  156   0x32521  5      
  nop                                            #  157   0x32526  1      
  nop                                            #  158   0x32527  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  159   0x32528  5      
  movl $0x10030ce0, %edi                         #  160   0x3252d  5      
  movl %eax, 0xfffe7b0(%rip)                     #  161   0x32532  6      
  nop                                            #  162   0x32538  1      
  nop                                            #  163   0x32539  1      
  callq .__cxa_guard_release                     #  164   0x3253a  5      
  jmpq .L_324c0                                  #  165   0x3253f  5      
  nop                                            #  166   0x32544  1      
  nop                                            #  167   0x32545  1      
.L_32760:                                        #        0x32546  0      
  nop                                            #  168   0x32546  1      
  nop                                            #  169   0x32547  1      
  callq ._ZN2pp6Module3GetEv                     #  170   0x32548  5      
  movl %eax, %edi                                #  171   0x3254d  2      
  movl $0x10020644, %esi                         #  172   0x3254f  5      
  nop                                            #  173   0x32554  1      
  nop                                            #  174   0x32555  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  175   0x32556  5      
  movl $0x10030d00, %edi                         #  176   0x3255b  5      
  movl %eax, 0xfffe7a2(%rip)                     #  177   0x32560  6      
  nop                                            #  178   0x32566  1      
  nop                                            #  179   0x32567  1      
  callq .__cxa_guard_release                     #  180   0x32568  5      
  jmpq .L_32620                                  #  181   0x3256d  5      
  nop                                            #  182   0x32572  1      
  nop                                            #  183   0x32573  1      
.L_327e0:                                        #        0x32574  0      
  nop                                            #  184   0x32574  1      
  nop                                            #  185   0x32575  1      
  callq ._ZN2pp6Module3GetEv                     #  186   0x32576  5      
  movl %eax, %edi                                #  187   0x3257b  2      
  movl $0x10020664, %esi                         #  188   0x3257d  5      
  nop                                            #  189   0x32582  1      
  nop                                            #  190   0x32583  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  191   0x32584  5      
  movl $0x10030cf0, %edi                         #  192   0x32589  5      
  movl %eax, 0xfffe764(%rip)                     #  193   0x3258e  6      
  nop                                            #  194   0x32594  1      
  nop                                            #  195   0x32595  1      
  callq .__cxa_guard_release                     #  196   0x32596  5      
  jmpq .L_325c0                                  #  197   0x3259b  5      
  nop                                            #  198   0x325a0  1      
  nop                                            #  199   0x325a1  1      
.L_32860:                                        #        0x325a2  0      
  movl %eax, %ebx                                #  200   0x325a2  2      
  movl $0x10030d00, %edi                         #  201   0x325a4  5      
  nop                                            #  202   0x325a9  1      
  nop                                            #  203   0x325aa  1      
  callq .__cxa_guard_abort                       #  204   0x325ab  5      
  movl %ebx, %edi                                #  205   0x325b0  2      
  nop                                            #  206   0x325b2  1      
  nop                                            #  207   0x325b3  1      
  callq ._Unwind_Resume                          #  208   0x325b4  5      
.L_328a0:                                        #        0x325b9  0      
  movl %eax, %ebx                                #  209   0x325b9  2      
  movl $0x10030cf0, %edi                         #  210   0x325bb  5      
  nop                                            #  211   0x325c0  1      
  nop                                            #  212   0x325c1  1      
  callq .__cxa_guard_abort                       #  213   0x325c2  5      
  movl %ebx, %edi                                #  214   0x325c7  2      
  nop                                            #  215   0x325c9  1      
  nop                                            #  216   0x325ca  1      
  callq ._Unwind_Resume                          #  217   0x325cb  5      
  jmpq .L_328a0                                  #  218   0x325d0  5      
  nop                                            #  219   0x325d5  1      
  nop                                            #  220   0x325d6  1      
.L_32900:                                        #        0x325d7  0      
  movl %eax, %ebx                                #  221   0x325d7  2      
  movl $0x10030ce0, %edi                         #  222   0x325d9  5      
  nop                                            #  223   0x325de  1      
  nop                                            #  224   0x325df  1      
  callq .__cxa_guard_abort                       #  225   0x325e0  5      
  movl %ebx, %edi                                #  226   0x325e5  2      
  nop                                            #  227   0x325e7  1      
  nop                                            #  228   0x325e8  1      
  callq ._Unwind_Resume                          #  229   0x325e9  5      
  jmpq .L_32900                                  #  230   0x325ee  5      
  nop                                            #  231   0x325f3  1      
  nop                                            #  232   0x325f4  1      
  jmpq .L_32860                                  #  233   0x325f5  5      
  nop                                            #  234   0x325fa  1      
  nop                                            #  235   0x325fb  1      
  nop                                            #  236   0x325fc  1      
                                                                          
.size _ZNK2pp7FileRef17GetFileSystemTypeEv, .-_ZNK2pp7FileRef17GetFileSystemTypeEv

