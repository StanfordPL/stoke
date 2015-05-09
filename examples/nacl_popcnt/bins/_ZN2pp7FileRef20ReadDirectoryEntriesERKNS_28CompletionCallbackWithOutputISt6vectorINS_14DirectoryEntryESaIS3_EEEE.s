  .text
  .globl _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE
  .type _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE, @function

#! file-offset 0x311a0
#! rip-offset  0x311a0
#! capacity    1440 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE:  #        0x311a0  0      
  pushq %r12                                                                                                         #  1     0x311a0  3      
  movl %edi, %r12d                                                                                                   #  2     0x311a3  3      
  pushq %rbx                                                                                                         #  3     0x311a6  2      
  movl %esi, %ebx                                                                                                    #  4     0x311a8  2      
  subl $0x28, %esp                                                                                                   #  5     0x311aa  3      
  addq %r15, %rsp                                                                                                    #  6     0x311ad  3      
  cmpb $0x0, 0xffffb29(%rip)                                                                                         #  7     0x311b0  7      
  je .L_313c0                                                                                                        #  8     0x311b7  6      
  nop                                                                                                                #  9     0x311bd  1      
.L_311c0:                                                                                                            #        0x311be  0      
  movl 0xffffb24(%rip), %eax                                                                                         #  10    0x311be  6      
  testq %rax, %rax                                                                                                   #  11    0x311c4  3      
  jne .L_31360                                                                                                       #  12    0x311c7  6      
  cmpb $0x0, 0xffffb1c(%rip)                                                                                         #  13    0x311cd  7      
  je .L_312c0                                                                                                        #  14    0x311d4  6      
  nop                                                                                                                #  15    0x311da  1      
.L_311e0:                                                                                                            #        0x311db  0      
  movl 0xffffb17(%rip), %eax                                                                                         #  16    0x311db  6      
  testq %rax, %rax                                                                                                   #  17    0x311e1  3      
  jne .L_31240                                                                                                       #  18    0x311e4  6      
  movl %ebx, %ebx                                                                                                    #  19    0x311ea  2      
  movl (%r15,%rbx,1), %esi                                                                                           #  20    0x311ec  4      
  testl %esi, %esi                                                                                                   #  21    0x311f0  2      
  je .L_31220                                                                                                        #  22    0x311f2  6      
  movl %ebx, %ebx                                                                                                    #  23    0x311f8  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                                                                       #  24    0x311fa  6      
  nop                                                                                                                #  25    0x31200  1      
  je .L_31460                                                                                                        #  26    0x31201  6      
  nop                                                                                                                #  27    0x31207  1      
  nop                                                                                                                #  28    0x31208  1      
.L_31220:                                                                                                            #        0x31209  0      
  addl $0x28, %esp                                                                                                   #  29    0x31209  3      
  addq %r15, %rsp                                                                                                    #  30    0x3120c  3      
  movl $0xfffffffa, %eax                                                                                             #  31    0x3120f  5      
  popq %rbx                                                                                                          #  32    0x31214  2      
  popq %r12                                                                                                          #  33    0x31216  3      
  popq %r11                                                                                                          #  34    0x31219  3      
  andl $0xffffffe0, %r11d                                                                                            #  35    0x3121c  7      
  addq %r15, %r11                                                                                                    #  36    0x31223  3      
  jmpq %r11                                                                                                          #  37    0x31226  3      
  nop                                                                                                                #  38    0x31229  1      
.L_31240:                                                                                                            #        0x3122a  0      
  cmpb $0x0, 0xffffabf(%rip)                                                                                         #  39    0x3122a  7      
  je .L_314c0                                                                                                        #  40    0x31231  6      
  nop                                                                                                                #  41    0x31237  1      
  nop                                                                                                                #  42    0x31238  1      
.L_31260:                                                                                                            #        0x31239  0      
  movl %ebx, %ebx                                                                                                    #  43    0x31239  2      
  movq (%r15,%rbx,1), %rdx                                                                                           #  44    0x3123b  4      
  movl %eax, %eax                                                                                                    #  45    0x3123f  2      
  movl 0x2c(%r15,%rax,1), %eax                                                                                       #  46    0x31241  5      
  movq %rdx, (%rsp)                                                                                                  #  47    0x31246  4      
  movl %ebx, %ebx                                                                                                    #  48    0x3124a  2      
  movl 0x8(%r15,%rbx,1), %ecx                                                                                        #  49    0x3124c  5      
  movl %ecx, 0x8(%rsp)                                                                                               #  50    0x31251  4      
  nop                                                                                                                #  51    0x31255  1      
.L_31280:                                                                                                            #        0x31256  0      
  movl %ebx, %ebx                                                                                                    #  52    0x31256  2      
  movl 0xc(%r15,%rbx,1), %ebx                                                                                        #  53    0x31258  5      
  movl %r12d, %r12d                                                                                                  #  54    0x3125d  3      
  movl 0x4(%r15,%r12,1), %edi                                                                                        #  55    0x31260  5      
  movl %ebx, %ebx                                                                                                    #  56    0x31265  2      
  movl 0x4(%r15,%rbx,1), %esi                                                                                        #  57    0x31267  5      
  movl %ebx, %ebx                                                                                                    #  58    0x3126c  2      
  movl 0x8(%r15,%rbx,1), %ebx                                                                                        #  59    0x3126e  5      
  nop                                                                                                                #  60    0x31273  1      
  addl $0x28, %esp                                                                                                   #  61    0x31274  3      
  addq %r15, %rsp                                                                                                    #  62    0x31277  3      
  shlq $0x20, %rbx                                                                                                   #  63    0x3127a  4      
  orq %rbx, %rsi                                                                                                     #  64    0x3127e  3      
  popq %rbx                                                                                                          #  65    0x31281  2      
  popq %r12                                                                                                          #  66    0x31283  3      
  andl $0xffffffe0, %eax                                                                                             #  67    0x31286  5      
  addq %r15, %rax                                                                                                    #  68    0x3128b  3      
  jmpq %rax                                                                                                          #  69    0x3128e  2      
  nop                                                                                                                #  70    0x31290  1      
.L_312c0:                                                                                                            #        0x31291  0      
  movl $0x10030cf0, %edi                                                                                             #  71    0x31291  5      
  nop                                                                                                                #  72    0x31296  1      
  nop                                                                                                                #  73    0x31297  1      
  callq .__cxa_guard_acquire                                                                                         #  74    0x31298  5      
  testl %eax, %eax                                                                                                   #  75    0x3129d  2      
  je .L_311e0                                                                                                        #  76    0x3129f  6      
  nop                                                                                                                #  77    0x312a5  1      
  nop                                                                                                                #  78    0x312a6  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  79    0x312a7  5      
  movl %eax, %edi                                                                                                    #  80    0x312ac  2      
  movl $0x10020664, %esi                                                                                             #  81    0x312ae  5      
  nop                                                                                                                #  82    0x312b3  1      
  nop                                                                                                                #  83    0x312b4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  84    0x312b5  5      
  movl $0x10030cf0, %edi                                                                                             #  85    0x312ba  5      
  movl %eax, 0xffffa33(%rip)                                                                                         #  86    0x312bf  6      
  nop                                                                                                                #  87    0x312c5  1      
  nop                                                                                                                #  88    0x312c6  1      
  callq .__cxa_guard_release                                                                                         #  89    0x312c7  5      
  jmpq .L_311e0                                                                                                      #  90    0x312cc  5      
  nop                                                                                                                #  91    0x312d1  1      
  nop                                                                                                                #  92    0x312d2  1      
.L_31360:                                                                                                            #        0x312d3  0      
  cmpb $0x0, 0xffffa06(%rip)                                                                                         #  93    0x312d3  7      
  je .L_31520                                                                                                        #  94    0x312da  6      
  nop                                                                                                                #  95    0x312e0  1      
  nop                                                                                                                #  96    0x312e1  1      
.L_31380:                                                                                                            #        0x312e2  0      
  movl %ebx, %ebx                                                                                                    #  97    0x312e2  2      
  movq (%r15,%rbx,1), %rdx                                                                                           #  98    0x312e4  4      
  movl %eax, %eax                                                                                                    #  99    0x312e8  2      
  movl 0x2c(%r15,%rax,1), %eax                                                                                       #  100   0x312ea  5      
  movq %rdx, 0x10(%rsp)                                                                                              #  101   0x312ef  5      
  movl %ebx, %ebx                                                                                                    #  102   0x312f4  2      
  movl 0x8(%r15,%rbx,1), %ecx                                                                                        #  103   0x312f6  5      
  movl %ecx, 0x18(%rsp)                                                                                              #  104   0x312fb  4      
  nop                                                                                                                #  105   0x312ff  1      
  jmpq .L_31280                                                                                                      #  106   0x31300  5      
  nop                                                                                                                #  107   0x31305  1      
  nop                                                                                                                #  108   0x31306  1      
.L_313c0:                                                                                                            #        0x31307  0      
  movl $0x10030ce0, %edi                                                                                             #  109   0x31307  5      
  nop                                                                                                                #  110   0x3130c  1      
  nop                                                                                                                #  111   0x3130d  1      
  callq .__cxa_guard_acquire                                                                                         #  112   0x3130e  5      
  testl %eax, %eax                                                                                                   #  113   0x31313  2      
  je .L_311c0                                                                                                        #  114   0x31315  6      
  nop                                                                                                                #  115   0x3131b  1      
  nop                                                                                                                #  116   0x3131c  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  117   0x3131d  5      
  movl %eax, %edi                                                                                                    #  118   0x31322  2      
  movl $0x10020654, %esi                                                                                             #  119   0x31324  5      
  nop                                                                                                                #  120   0x31329  1      
  nop                                                                                                                #  121   0x3132a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  122   0x3132b  5      
  movl $0x10030ce0, %edi                                                                                             #  123   0x31330  5      
  movl %eax, 0xffff9ad(%rip)                                                                                         #  124   0x31335  6      
  nop                                                                                                                #  125   0x3133b  1      
  nop                                                                                                                #  126   0x3133c  1      
  callq .__cxa_guard_release                                                                                         #  127   0x3133d  5      
  jmpq .L_311c0                                                                                                      #  128   0x31342  5      
  nop                                                                                                                #  129   0x31347  1      
  nop                                                                                                                #  130   0x31348  1      
.L_31460:                                                                                                            #        0x31349  0      
  nop                                                                                                                #  131   0x31349  1      
  nop                                                                                                                #  132   0x3134a  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  133   0x3134b  5      
  movl %eax, %eax                                                                                                    #  134   0x31350  2      
  movl %ebx, %edx                                                                                                    #  135   0x31352  2      
  movl $0xfffffffa, %ecx                                                                                             #  136   0x31354  5      
  movl %eax, %eax                                                                                                    #  137   0x31359  2      
  movl 0x24(%r15,%rax,1), %edi                                                                                       #  138   0x3135b  5      
  xorl %esi, %esi                                                                                                    #  139   0x31360  2      
  nop                                                                                                                #  140   0x31362  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi                                                  #  141   0x31363  5      
  addl $0x28, %esp                                                                                                   #  142   0x31368  3      
  addq %r15, %rsp                                                                                                    #  143   0x3136b  3      
  movl $0xffffffff, %eax                                                                                             #  144   0x3136e  5      
  popq %rbx                                                                                                          #  145   0x31373  2      
  popq %r12                                                                                                          #  146   0x31375  3      
  popq %r11                                                                                                          #  147   0x31378  3      
  andl $0xffffffe0, %r11d                                                                                            #  148   0x3137b  7      
  addq %r15, %r11                                                                                                    #  149   0x31382  3      
  jmpq %r11                                                                                                          #  150   0x31385  3      
  nop                                                                                                                #  151   0x31388  1      
.L_314c0:                                                                                                            #        0x31389  0      
  movl $0x10030cf0, %edi                                                                                             #  152   0x31389  5      
  nop                                                                                                                #  153   0x3138e  1      
  nop                                                                                                                #  154   0x3138f  1      
  callq .__cxa_guard_acquire                                                                                         #  155   0x31390  5      
  testl %eax, %eax                                                                                                   #  156   0x31395  2      
  jne .L_31600                                                                                                       #  157   0x31397  6      
  nop                                                                                                                #  158   0x3139d  1      
  nop                                                                                                                #  159   0x3139e  1      
.L_31500:                                                                                                            #        0x3139f  0      
  movl 0xffff953(%rip), %eax                                                                                         #  160   0x3139f  6      
  jmpq .L_31260                                                                                                      #  161   0x313a5  5      
  nop                                                                                                                #  162   0x313aa  1      
  nop                                                                                                                #  163   0x313ab  1      
.L_31520:                                                                                                            #        0x313ac  0      
  movl $0x10030ce0, %edi                                                                                             #  164   0x313ac  5      
  nop                                                                                                                #  165   0x313b1  1      
  nop                                                                                                                #  166   0x313b2  1      
  callq .__cxa_guard_acquire                                                                                         #  167   0x313b3  5      
  testl %eax, %eax                                                                                                   #  168   0x313b8  2      
  jne .L_31580                                                                                                       #  169   0x313ba  6      
  nop                                                                                                                #  170   0x313c0  1      
  nop                                                                                                                #  171   0x313c1  1      
.L_31560:                                                                                                            #        0x313c2  0      
  movl 0xffff920(%rip), %eax                                                                                         #  172   0x313c2  6      
  jmpq .L_31380                                                                                                      #  173   0x313c8  5      
  nop                                                                                                                #  174   0x313cd  1      
  nop                                                                                                                #  175   0x313ce  1      
.L_31580:                                                                                                            #        0x313cf  0      
  nop                                                                                                                #  176   0x313cf  1      
  nop                                                                                                                #  177   0x313d0  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  178   0x313d1  5      
  movl %eax, %edi                                                                                                    #  179   0x313d6  2      
  movl $0x10020654, %esi                                                                                             #  180   0x313d8  5      
  nop                                                                                                                #  181   0x313dd  1      
  nop                                                                                                                #  182   0x313de  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  183   0x313df  5      
  movl $0x10030ce0, %edi                                                                                             #  184   0x313e4  5      
  movl %eax, 0xffff8f9(%rip)                                                                                         #  185   0x313e9  6      
  nop                                                                                                                #  186   0x313ef  1      
  nop                                                                                                                #  187   0x313f0  1      
  callq .__cxa_guard_release                                                                                         #  188   0x313f1  5      
  jmpq .L_31560                                                                                                      #  189   0x313f6  5      
  nop                                                                                                                #  190   0x313fb  1      
  nop                                                                                                                #  191   0x313fc  1      
.L_31600:                                                                                                            #        0x313fd  0      
  nop                                                                                                                #  192   0x313fd  1      
  nop                                                                                                                #  193   0x313fe  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  194   0x313ff  5      
  movl %eax, %edi                                                                                                    #  195   0x31404  2      
  movl $0x10020664, %esi                                                                                             #  196   0x31406  5      
  nop                                                                                                                #  197   0x3140b  1      
  nop                                                                                                                #  198   0x3140c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  199   0x3140d  5      
  movl $0x10030cf0, %edi                                                                                             #  200   0x31412  5      
  movl %eax, 0xffff8db(%rip)                                                                                         #  201   0x31417  6      
  nop                                                                                                                #  202   0x3141d  1      
  nop                                                                                                                #  203   0x3141e  1      
  callq .__cxa_guard_release                                                                                         #  204   0x3141f  5      
  jmpq .L_31500                                                                                                      #  205   0x31424  5      
  nop                                                                                                                #  206   0x31429  1      
  nop                                                                                                                #  207   0x3142a  1      
.L_31680:                                                                                                            #        0x3142b  0      
  movl %eax, %ebx                                                                                                    #  208   0x3142b  2      
  movl $0x10030ce0, %edi                                                                                             #  209   0x3142d  5      
  nop                                                                                                                #  210   0x31432  1      
  nop                                                                                                                #  211   0x31433  1      
  callq .__cxa_guard_abort                                                                                           #  212   0x31434  5      
  movl %ebx, %edi                                                                                                    #  213   0x31439  2      
  nop                                                                                                                #  214   0x3143b  1      
  nop                                                                                                                #  215   0x3143c  1      
  callq ._Unwind_Resume                                                                                              #  216   0x3143d  5      
.L_316c0:                                                                                                            #        0x31442  0      
  movl %eax, %ebx                                                                                                    #  217   0x31442  2      
  movl $0x10030cf0, %edi                                                                                             #  218   0x31444  5      
  nop                                                                                                                #  219   0x31449  1      
  nop                                                                                                                #  220   0x3144a  1      
  callq .__cxa_guard_abort                                                                                           #  221   0x3144b  5      
  movl %ebx, %edi                                                                                                    #  222   0x31450  2      
  nop                                                                                                                #  223   0x31452  1      
  nop                                                                                                                #  224   0x31453  1      
  callq ._Unwind_Resume                                                                                              #  225   0x31454  5      
  jmpq .L_31680                                                                                                      #  226   0x31459  5      
  nop                                                                                                                #  227   0x3145e  1      
  nop                                                                                                                #  228   0x3145f  1      
  jmpq .L_316c0                                                                                                      #  229   0x31460  5      
  nop                                                                                                                #  230   0x31465  1      
  nop                                                                                                                #  231   0x31466  1      
                                                                                                                                              
.size _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE, .-_ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE

