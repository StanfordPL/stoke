  .text
  .globl _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE
  .type _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE, @function

#! file-offset 0x31760
#! rip-offset  0x31760
#! capacity    1408 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE:  #        0x31760  0      
  pushq %r12                                                                #  1     0x31760  3      
  movl %edi, %r12d                                                          #  2     0x31763  3      
  pushq %rbx                                                                #  3     0x31766  2      
  movl %esi, %ebx                                                           #  4     0x31768  2      
  subl $0x28, %esp                                                          #  5     0x3176a  3      
  addq %r15, %rsp                                                           #  6     0x3176d  3      
  cmpb $0x0, 0xffff569(%rip)                                                #  7     0x31770  7      
  je .L_31960                                                               #  8     0x31777  6      
  nop                                                                       #  9     0x3177d  1      
.L_31780:                                                                   #        0x3177e  0      
  movl 0xffff564(%rip), %eax                                                #  10    0x3177e  6      
  testq %rax, %rax                                                          #  11    0x31784  3      
  jne .L_31900                                                              #  12    0x31787  6      
  cmpb $0x0, 0xffff55c(%rip)                                                #  13    0x3178d  7      
  je .L_31860                                                               #  14    0x31794  6      
  nop                                                                       #  15    0x3179a  1      
.L_317a0:                                                                   #        0x3179b  0      
  movl 0xffff557(%rip), %eax                                                #  16    0x3179b  6      
  testq %rax, %rax                                                          #  17    0x317a1  3      
  jne .L_31800                                                              #  18    0x317a4  6      
  movl %ebx, %ebx                                                           #  19    0x317aa  2      
  movl (%r15,%rbx,1), %edi                                                  #  20    0x317ac  4      
  testl %edi, %edi                                                          #  21    0x317b0  2      
  je .L_317e0                                                               #  22    0x317b2  6      
  movl %ebx, %ebx                                                           #  23    0x317b8  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                              #  24    0x317ba  6      
  nop                                                                       #  25    0x317c0  1      
  je .L_31a00                                                               #  26    0x317c1  6      
  nop                                                                       #  27    0x317c7  1      
  nop                                                                       #  28    0x317c8  1      
.L_317e0:                                                                   #        0x317c9  0      
  addl $0x28, %esp                                                          #  29    0x317c9  3      
  addq %r15, %rsp                                                           #  30    0x317cc  3      
  movl $0xfffffffa, %eax                                                    #  31    0x317cf  5      
  popq %rbx                                                                 #  32    0x317d4  2      
  popq %r12                                                                 #  33    0x317d6  3      
  popq %r11                                                                 #  34    0x317d9  3      
  andl $0xffffffe0, %r11d                                                   #  35    0x317dc  7      
  addq %r15, %r11                                                           #  36    0x317e3  3      
  jmpq %r11                                                                 #  37    0x317e6  3      
  nop                                                                       #  38    0x317e9  1      
.L_31800:                                                                   #        0x317ea  0      
  cmpb $0x0, 0xffff4ff(%rip)                                                #  39    0x317ea  7      
  je .L_31a60                                                               #  40    0x317f1  6      
  nop                                                                       #  41    0x317f7  1      
  nop                                                                       #  42    0x317f8  1      
.L_31820:                                                                   #        0x317f9  0      
  movl %ebx, %ebx                                                           #  43    0x317f9  2      
  movq (%r15,%rbx,1), %rdx                                                  #  44    0x317fb  4      
  movl %eax, %eax                                                           #  45    0x317ff  2      
  movl 0x28(%r15,%rax,1), %eax                                              #  46    0x31801  5      
  movq %rdx, (%rsp)                                                         #  47    0x31806  4      
  movl %ebx, %ebx                                                           #  48    0x3180a  2      
  movl 0x8(%r15,%rbx,1), %ecx                                               #  49    0x3180c  5      
  movl %ecx, 0x8(%rsp)                                                      #  50    0x31811  4      
  nop                                                                       #  51    0x31815  1      
.L_31840:                                                                   #        0x31816  0      
  movl %ebx, %ebx                                                           #  52    0x31816  2      
  movl 0xc(%r15,%rbx,1), %esi                                               #  53    0x31818  5      
  movl %r12d, %r12d                                                         #  54    0x3181d  3      
  movl 0x4(%r15,%r12,1), %edi                                               #  55    0x31820  5      
  addl $0x28, %esp                                                          #  56    0x31825  3      
  addq %r15, %rsp                                                           #  57    0x31828  3      
  popq %rbx                                                                 #  58    0x3182b  2      
  popq %r12                                                                 #  59    0x3182d  3      
  andl $0xffffffe0, %eax                                                    #  60    0x31830  5      
  addq %r15, %rax                                                           #  61    0x31835  3      
  jmpq %rax                                                                 #  62    0x31838  2      
.L_31860:                                                                   #        0x3183a  0      
  movl $0x10030cf0, %edi                                                    #  63    0x3183a  5      
  nop                                                                       #  64    0x3183f  1      
  nop                                                                       #  65    0x31840  1      
  callq .__cxa_guard_acquire                                                #  66    0x31841  5      
  testl %eax, %eax                                                          #  67    0x31846  2      
  je .L_317a0                                                               #  68    0x31848  6      
  nop                                                                       #  69    0x3184e  1      
  nop                                                                       #  70    0x3184f  1      
  callq ._ZN2pp6Module3GetEv                                                #  71    0x31850  5      
  movl %eax, %edi                                                           #  72    0x31855  2      
  movl $0x10020664, %esi                                                    #  73    0x31857  5      
  nop                                                                       #  74    0x3185c  1      
  nop                                                                       #  75    0x3185d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  76    0x3185e  5      
  movl $0x10030cf0, %edi                                                    #  77    0x31863  5      
  movl %eax, 0xffff48a(%rip)                                                #  78    0x31868  6      
  nop                                                                       #  79    0x3186e  1      
  nop                                                                       #  80    0x3186f  1      
  callq .__cxa_guard_release                                                #  81    0x31870  5      
  jmpq .L_317a0                                                             #  82    0x31875  5      
  nop                                                                       #  83    0x3187a  1      
  nop                                                                       #  84    0x3187b  1      
.L_31900:                                                                   #        0x3187c  0      
  cmpb $0x0, 0xffff45d(%rip)                                                #  85    0x3187c  7      
  je .L_31ac0                                                               #  86    0x31883  6      
  nop                                                                       #  87    0x31889  1      
  nop                                                                       #  88    0x3188a  1      
.L_31920:                                                                   #        0x3188b  0      
  movl %ebx, %ebx                                                           #  89    0x3188b  2      
  movq (%r15,%rbx,1), %rdx                                                  #  90    0x3188d  4      
  movl %eax, %eax                                                           #  91    0x31891  2      
  movl 0x28(%r15,%rax,1), %eax                                              #  92    0x31893  5      
  movq %rdx, 0x10(%rsp)                                                     #  93    0x31898  5      
  movl %ebx, %ebx                                                           #  94    0x3189d  2      
  movl 0x8(%r15,%rbx,1), %ecx                                               #  95    0x3189f  5      
  movl %ecx, 0x18(%rsp)                                                     #  96    0x318a4  4      
  nop                                                                       #  97    0x318a8  1      
  jmpq .L_31840                                                             #  98    0x318a9  5      
  nop                                                                       #  99    0x318ae  1      
  nop                                                                       #  100   0x318af  1      
.L_31960:                                                                   #        0x318b0  0      
  movl $0x10030ce0, %edi                                                    #  101   0x318b0  5      
  nop                                                                       #  102   0x318b5  1      
  nop                                                                       #  103   0x318b6  1      
  callq .__cxa_guard_acquire                                                #  104   0x318b7  5      
  testl %eax, %eax                                                          #  105   0x318bc  2      
  je .L_31780                                                               #  106   0x318be  6      
  nop                                                                       #  107   0x318c4  1      
  nop                                                                       #  108   0x318c5  1      
  callq ._ZN2pp6Module3GetEv                                                #  109   0x318c6  5      
  movl %eax, %edi                                                           #  110   0x318cb  2      
  movl $0x10020654, %esi                                                    #  111   0x318cd  5      
  nop                                                                       #  112   0x318d2  1      
  nop                                                                       #  113   0x318d3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  114   0x318d4  5      
  movl $0x10030ce0, %edi                                                    #  115   0x318d9  5      
  movl %eax, 0xffff404(%rip)                                                #  116   0x318de  6      
  nop                                                                       #  117   0x318e4  1      
  nop                                                                       #  118   0x318e5  1      
  callq .__cxa_guard_release                                                #  119   0x318e6  5      
  jmpq .L_31780                                                             #  120   0x318eb  5      
  nop                                                                       #  121   0x318f0  1      
  nop                                                                       #  122   0x318f1  1      
.L_31a00:                                                                   #        0x318f2  0      
  nop                                                                       #  123   0x318f2  1      
  nop                                                                       #  124   0x318f3  1      
  callq ._ZN2pp6Module3GetEv                                                #  125   0x318f4  5      
  movl %eax, %eax                                                           #  126   0x318f9  2      
  movl %ebx, %edx                                                           #  127   0x318fb  2      
  movl $0xfffffffa, %ecx                                                    #  128   0x318fd  5      
  movl %eax, %eax                                                           #  129   0x31902  2      
  movl 0x24(%r15,%rax,1), %edi                                              #  130   0x31904  5      
  xorl %esi, %esi                                                           #  131   0x31909  2      
  nop                                                                       #  132   0x3190b  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi         #  133   0x3190c  5      
  addl $0x28, %esp                                                          #  134   0x31911  3      
  addq %r15, %rsp                                                           #  135   0x31914  3      
  movl $0xffffffff, %eax                                                    #  136   0x31917  5      
  popq %rbx                                                                 #  137   0x3191c  2      
  popq %r12                                                                 #  138   0x3191e  3      
  popq %r11                                                                 #  139   0x31921  3      
  andl $0xffffffe0, %r11d                                                   #  140   0x31924  7      
  addq %r15, %r11                                                           #  141   0x3192b  3      
  jmpq %r11                                                                 #  142   0x3192e  3      
  nop                                                                       #  143   0x31931  1      
.L_31a60:                                                                   #        0x31932  0      
  movl $0x10030cf0, %edi                                                    #  144   0x31932  5      
  nop                                                                       #  145   0x31937  1      
  nop                                                                       #  146   0x31938  1      
  callq .__cxa_guard_acquire                                                #  147   0x31939  5      
  testl %eax, %eax                                                          #  148   0x3193e  2      
  jne .L_31ba0                                                              #  149   0x31940  6      
  nop                                                                       #  150   0x31946  1      
  nop                                                                       #  151   0x31947  1      
.L_31aa0:                                                                   #        0x31948  0      
  movl 0xffff3aa(%rip), %eax                                                #  152   0x31948  6      
  jmpq .L_31820                                                             #  153   0x3194e  5      
  nop                                                                       #  154   0x31953  1      
  nop                                                                       #  155   0x31954  1      
.L_31ac0:                                                                   #        0x31955  0      
  movl $0x10030ce0, %edi                                                    #  156   0x31955  5      
  nop                                                                       #  157   0x3195a  1      
  nop                                                                       #  158   0x3195b  1      
  callq .__cxa_guard_acquire                                                #  159   0x3195c  5      
  testl %eax, %eax                                                          #  160   0x31961  2      
  jne .L_31b20                                                              #  161   0x31963  6      
  nop                                                                       #  162   0x31969  1      
  nop                                                                       #  163   0x3196a  1      
.L_31b00:                                                                   #        0x3196b  0      
  movl 0xffff377(%rip), %eax                                                #  164   0x3196b  6      
  jmpq .L_31920                                                             #  165   0x31971  5      
  nop                                                                       #  166   0x31976  1      
  nop                                                                       #  167   0x31977  1      
.L_31b20:                                                                   #        0x31978  0      
  nop                                                                       #  168   0x31978  1      
  nop                                                                       #  169   0x31979  1      
  callq ._ZN2pp6Module3GetEv                                                #  170   0x3197a  5      
  movl %eax, %edi                                                           #  171   0x3197f  2      
  movl $0x10020654, %esi                                                    #  172   0x31981  5      
  nop                                                                       #  173   0x31986  1      
  nop                                                                       #  174   0x31987  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  175   0x31988  5      
  movl $0x10030ce0, %edi                                                    #  176   0x3198d  5      
  movl %eax, 0xffff350(%rip)                                                #  177   0x31992  6      
  nop                                                                       #  178   0x31998  1      
  nop                                                                       #  179   0x31999  1      
  callq .__cxa_guard_release                                                #  180   0x3199a  5      
  jmpq .L_31b00                                                             #  181   0x3199f  5      
  nop                                                                       #  182   0x319a4  1      
  nop                                                                       #  183   0x319a5  1      
.L_31ba0:                                                                   #        0x319a6  0      
  nop                                                                       #  184   0x319a6  1      
  nop                                                                       #  185   0x319a7  1      
  callq ._ZN2pp6Module3GetEv                                                #  186   0x319a8  5      
  movl %eax, %edi                                                           #  187   0x319ad  2      
  movl $0x10020664, %esi                                                    #  188   0x319af  5      
  nop                                                                       #  189   0x319b4  1      
  nop                                                                       #  190   0x319b5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  191   0x319b6  5      
  movl $0x10030cf0, %edi                                                    #  192   0x319bb  5      
  movl %eax, 0xffff332(%rip)                                                #  193   0x319c0  6      
  nop                                                                       #  194   0x319c6  1      
  nop                                                                       #  195   0x319c7  1      
  callq .__cxa_guard_release                                                #  196   0x319c8  5      
  jmpq .L_31aa0                                                             #  197   0x319cd  5      
  nop                                                                       #  198   0x319d2  1      
  nop                                                                       #  199   0x319d3  1      
.L_31c20:                                                                   #        0x319d4  0      
  movl %eax, %ebx                                                           #  200   0x319d4  2      
  movl $0x10030ce0, %edi                                                    #  201   0x319d6  5      
  nop                                                                       #  202   0x319db  1      
  nop                                                                       #  203   0x319dc  1      
  callq .__cxa_guard_abort                                                  #  204   0x319dd  5      
  movl %ebx, %edi                                                           #  205   0x319e2  2      
  nop                                                                       #  206   0x319e4  1      
  nop                                                                       #  207   0x319e5  1      
  callq ._Unwind_Resume                                                     #  208   0x319e6  5      
.L_31c60:                                                                   #        0x319eb  0      
  movl %eax, %ebx                                                           #  209   0x319eb  2      
  movl $0x10030cf0, %edi                                                    #  210   0x319ed  5      
  nop                                                                       #  211   0x319f2  1      
  nop                                                                       #  212   0x319f3  1      
  callq .__cxa_guard_abort                                                  #  213   0x319f4  5      
  movl %ebx, %edi                                                           #  214   0x319f9  2      
  nop                                                                       #  215   0x319fb  1      
  nop                                                                       #  216   0x319fc  1      
  callq ._Unwind_Resume                                                     #  217   0x319fd  5      
  jmpq .L_31c20                                                             #  218   0x31a02  5      
  nop                                                                       #  219   0x31a07  1      
  nop                                                                       #  220   0x31a08  1      
  jmpq .L_31c60                                                             #  221   0x31a09  5      
  nop                                                                       #  222   0x31a0e  1      
  nop                                                                       #  223   0x31a0f  1      
                                                                                                     
.size _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE, .-_ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE

