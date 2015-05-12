  .text
  .globl _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE
  .type _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE, @function

#! file-offset 0x311c0
#! rip-offset  0x311c0
#! capacity    1440 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE:  #        0x311c0  0      
  pushq %r12                                                                                                         #  1     0x311c0  3      
  movl %edi, %r12d                                                                                                   #  2     0x311c3  3      
  pushq %rbx                                                                                                         #  3     0x311c6  2      
  movl %esi, %ebx                                                                                                    #  4     0x311c8  2      
  subl $0x28, %esp                                                                                                   #  5     0x311ca  3      
  addq %r15, %rsp                                                                                                    #  6     0x311cd  3      
  cmpb $0x0, 0xffffb09(%rip)                                                                                         #  7     0x311d0  7      
  je .L_313e0                                                                                                        #  8     0x311d7  6      
  nop                                                                                                                #  9     0x311dd  1      
.L_311e0:                                                                                                            #        0x311de  0      
  movl 0xffffb04(%rip), %eax                                                                                         #  10    0x311de  6      
  testq %rax, %rax                                                                                                   #  11    0x311e4  3      
  jne .L_31380                                                                                                       #  12    0x311e7  6      
  cmpb $0x0, 0xffffafc(%rip)                                                                                         #  13    0x311ed  7      
  je .L_312e0                                                                                                        #  14    0x311f4  6      
  nop                                                                                                                #  15    0x311fa  1      
.L_31200:                                                                                                            #        0x311fb  0      
  movl 0xffffaf7(%rip), %eax                                                                                         #  16    0x311fb  6      
  testq %rax, %rax                                                                                                   #  17    0x31201  3      
  jne .L_31260                                                                                                       #  18    0x31204  6      
  movl %ebx, %ebx                                                                                                    #  19    0x3120a  2      
  movl (%r15,%rbx,1), %esi                                                                                           #  20    0x3120c  4      
  testl %esi, %esi                                                                                                   #  21    0x31210  2      
  je .L_31240                                                                                                        #  22    0x31212  6      
  movl %ebx, %ebx                                                                                                    #  23    0x31218  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                                                                       #  24    0x3121a  6      
  nop                                                                                                                #  25    0x31220  1      
  je .L_31480                                                                                                        #  26    0x31221  6      
  nop                                                                                                                #  27    0x31227  1      
  nop                                                                                                                #  28    0x31228  1      
.L_31240:                                                                                                            #        0x31229  0      
  addl $0x28, %esp                                                                                                   #  29    0x31229  3      
  addq %r15, %rsp                                                                                                    #  30    0x3122c  3      
  movl $0xfffffffa, %eax                                                                                             #  31    0x3122f  5      
  popq %rbx                                                                                                          #  32    0x31234  2      
  popq %r12                                                                                                          #  33    0x31236  3      
  popq %r11                                                                                                          #  34    0x31239  3      
  andl $0xffffffe0, %r11d                                                                                            #  35    0x3123c  7      
  addq %r15, %r11                                                                                                    #  36    0x31243  3      
  jmpq %r11                                                                                                          #  37    0x31246  3      
  nop                                                                                                                #  38    0x31249  1      
.L_31260:                                                                                                            #        0x3124a  0      
  cmpb $0x0, 0xffffa9f(%rip)                                                                                         #  39    0x3124a  7      
  je .L_314e0                                                                                                        #  40    0x31251  6      
  nop                                                                                                                #  41    0x31257  1      
  nop                                                                                                                #  42    0x31258  1      
.L_31280:                                                                                                            #        0x31259  0      
  movl %ebx, %ebx                                                                                                    #  43    0x31259  2      
  movq (%r15,%rbx,1), %rdx                                                                                           #  44    0x3125b  4      
  movl %eax, %eax                                                                                                    #  45    0x3125f  2      
  movl 0x2c(%r15,%rax,1), %eax                                                                                       #  46    0x31261  5      
  movq %rdx, (%rsp)                                                                                                  #  47    0x31266  4      
  movl %ebx, %ebx                                                                                                    #  48    0x3126a  2      
  movl 0x8(%r15,%rbx,1), %ecx                                                                                        #  49    0x3126c  5      
  movl %ecx, 0x8(%rsp)                                                                                               #  50    0x31271  4      
  nop                                                                                                                #  51    0x31275  1      
.L_312a0:                                                                                                            #        0x31276  0      
  movl %ebx, %ebx                                                                                                    #  52    0x31276  2      
  movl 0xc(%r15,%rbx,1), %ebx                                                                                        #  53    0x31278  5      
  movl %r12d, %r12d                                                                                                  #  54    0x3127d  3      
  movl 0x4(%r15,%r12,1), %edi                                                                                        #  55    0x31280  5      
  movl %ebx, %ebx                                                                                                    #  56    0x31285  2      
  movl 0x4(%r15,%rbx,1), %esi                                                                                        #  57    0x31287  5      
  movl %ebx, %ebx                                                                                                    #  58    0x3128c  2      
  movl 0x8(%r15,%rbx,1), %ebx                                                                                        #  59    0x3128e  5      
  nop                                                                                                                #  60    0x31293  1      
  addl $0x28, %esp                                                                                                   #  61    0x31294  3      
  addq %r15, %rsp                                                                                                    #  62    0x31297  3      
  shlq $0x20, %rbx                                                                                                   #  63    0x3129a  4      
  orq %rbx, %rsi                                                                                                     #  64    0x3129e  3      
  popq %rbx                                                                                                          #  65    0x312a1  2      
  popq %r12                                                                                                          #  66    0x312a3  3      
  andl $0xffffffe0, %eax                                                                                             #  67    0x312a6  5      
  addq %r15, %rax                                                                                                    #  68    0x312ab  3      
  jmpq %rax                                                                                                          #  69    0x312ae  2      
  nop                                                                                                                #  70    0x312b0  1      
.L_312e0:                                                                                                            #        0x312b1  0      
  movl $0x10030cf0, %edi                                                                                             #  71    0x312b1  5      
  nop                                                                                                                #  72    0x312b6  1      
  nop                                                                                                                #  73    0x312b7  1      
  callq .__cxa_guard_acquire                                                                                         #  74    0x312b8  5      
  testl %eax, %eax                                                                                                   #  75    0x312bd  2      
  je .L_31200                                                                                                        #  76    0x312bf  6      
  nop                                                                                                                #  77    0x312c5  1      
  nop                                                                                                                #  78    0x312c6  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  79    0x312c7  5      
  movl %eax, %edi                                                                                                    #  80    0x312cc  2      
  movl $0x10020664, %esi                                                                                             #  81    0x312ce  5      
  nop                                                                                                                #  82    0x312d3  1      
  nop                                                                                                                #  83    0x312d4  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  84    0x312d5  5      
  movl $0x10030cf0, %edi                                                                                             #  85    0x312da  5      
  movl %eax, 0xffffa13(%rip)                                                                                         #  86    0x312df  6      
  nop                                                                                                                #  87    0x312e5  1      
  nop                                                                                                                #  88    0x312e6  1      
  callq .__cxa_guard_release                                                                                         #  89    0x312e7  5      
  jmpq .L_31200                                                                                                      #  90    0x312ec  5      
  nop                                                                                                                #  91    0x312f1  1      
  nop                                                                                                                #  92    0x312f2  1      
.L_31380:                                                                                                            #        0x312f3  0      
  cmpb $0x0, 0xffff9e6(%rip)                                                                                         #  93    0x312f3  7      
  je .L_31540                                                                                                        #  94    0x312fa  6      
  nop                                                                                                                #  95    0x31300  1      
  nop                                                                                                                #  96    0x31301  1      
.L_313a0:                                                                                                            #        0x31302  0      
  movl %ebx, %ebx                                                                                                    #  97    0x31302  2      
  movq (%r15,%rbx,1), %rdx                                                                                           #  98    0x31304  4      
  movl %eax, %eax                                                                                                    #  99    0x31308  2      
  movl 0x2c(%r15,%rax,1), %eax                                                                                       #  100   0x3130a  5      
  movq %rdx, 0x10(%rsp)                                                                                              #  101   0x3130f  5      
  movl %ebx, %ebx                                                                                                    #  102   0x31314  2      
  movl 0x8(%r15,%rbx,1), %ecx                                                                                        #  103   0x31316  5      
  movl %ecx, 0x18(%rsp)                                                                                              #  104   0x3131b  4      
  nop                                                                                                                #  105   0x3131f  1      
  jmpq .L_312a0                                                                                                      #  106   0x31320  5      
  nop                                                                                                                #  107   0x31325  1      
  nop                                                                                                                #  108   0x31326  1      
.L_313e0:                                                                                                            #        0x31327  0      
  movl $0x10030ce0, %edi                                                                                             #  109   0x31327  5      
  nop                                                                                                                #  110   0x3132c  1      
  nop                                                                                                                #  111   0x3132d  1      
  callq .__cxa_guard_acquire                                                                                         #  112   0x3132e  5      
  testl %eax, %eax                                                                                                   #  113   0x31333  2      
  je .L_311e0                                                                                                        #  114   0x31335  6      
  nop                                                                                                                #  115   0x3133b  1      
  nop                                                                                                                #  116   0x3133c  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  117   0x3133d  5      
  movl %eax, %edi                                                                                                    #  118   0x31342  2      
  movl $0x10020654, %esi                                                                                             #  119   0x31344  5      
  nop                                                                                                                #  120   0x31349  1      
  nop                                                                                                                #  121   0x3134a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  122   0x3134b  5      
  movl $0x10030ce0, %edi                                                                                             #  123   0x31350  5      
  movl %eax, 0xffff98d(%rip)                                                                                         #  124   0x31355  6      
  nop                                                                                                                #  125   0x3135b  1      
  nop                                                                                                                #  126   0x3135c  1      
  callq .__cxa_guard_release                                                                                         #  127   0x3135d  5      
  jmpq .L_311e0                                                                                                      #  128   0x31362  5      
  nop                                                                                                                #  129   0x31367  1      
  nop                                                                                                                #  130   0x31368  1      
.L_31480:                                                                                                            #        0x31369  0      
  nop                                                                                                                #  131   0x31369  1      
  nop                                                                                                                #  132   0x3136a  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  133   0x3136b  5      
  movl %eax, %eax                                                                                                    #  134   0x31370  2      
  movl %ebx, %edx                                                                                                    #  135   0x31372  2      
  movl $0xfffffffa, %ecx                                                                                             #  136   0x31374  5      
  movl %eax, %eax                                                                                                    #  137   0x31379  2      
  movl 0x24(%r15,%rax,1), %edi                                                                                       #  138   0x3137b  5      
  xorl %esi, %esi                                                                                                    #  139   0x31380  2      
  nop                                                                                                                #  140   0x31382  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi                                                  #  141   0x31383  5      
  addl $0x28, %esp                                                                                                   #  142   0x31388  3      
  addq %r15, %rsp                                                                                                    #  143   0x3138b  3      
  movl $0xffffffff, %eax                                                                                             #  144   0x3138e  5      
  popq %rbx                                                                                                          #  145   0x31393  2      
  popq %r12                                                                                                          #  146   0x31395  3      
  popq %r11                                                                                                          #  147   0x31398  3      
  andl $0xffffffe0, %r11d                                                                                            #  148   0x3139b  7      
  addq %r15, %r11                                                                                                    #  149   0x313a2  3      
  jmpq %r11                                                                                                          #  150   0x313a5  3      
  nop                                                                                                                #  151   0x313a8  1      
.L_314e0:                                                                                                            #        0x313a9  0      
  movl $0x10030cf0, %edi                                                                                             #  152   0x313a9  5      
  nop                                                                                                                #  153   0x313ae  1      
  nop                                                                                                                #  154   0x313af  1      
  callq .__cxa_guard_acquire                                                                                         #  155   0x313b0  5      
  testl %eax, %eax                                                                                                   #  156   0x313b5  2      
  jne .L_31620                                                                                                       #  157   0x313b7  6      
  nop                                                                                                                #  158   0x313bd  1      
  nop                                                                                                                #  159   0x313be  1      
.L_31520:                                                                                                            #        0x313bf  0      
  movl 0xffff933(%rip), %eax                                                                                         #  160   0x313bf  6      
  jmpq .L_31280                                                                                                      #  161   0x313c5  5      
  nop                                                                                                                #  162   0x313ca  1      
  nop                                                                                                                #  163   0x313cb  1      
.L_31540:                                                                                                            #        0x313cc  0      
  movl $0x10030ce0, %edi                                                                                             #  164   0x313cc  5      
  nop                                                                                                                #  165   0x313d1  1      
  nop                                                                                                                #  166   0x313d2  1      
  callq .__cxa_guard_acquire                                                                                         #  167   0x313d3  5      
  testl %eax, %eax                                                                                                   #  168   0x313d8  2      
  jne .L_315a0                                                                                                       #  169   0x313da  6      
  nop                                                                                                                #  170   0x313e0  1      
  nop                                                                                                                #  171   0x313e1  1      
.L_31580:                                                                                                            #        0x313e2  0      
  movl 0xffff900(%rip), %eax                                                                                         #  172   0x313e2  6      
  jmpq .L_313a0                                                                                                      #  173   0x313e8  5      
  nop                                                                                                                #  174   0x313ed  1      
  nop                                                                                                                #  175   0x313ee  1      
.L_315a0:                                                                                                            #        0x313ef  0      
  nop                                                                                                                #  176   0x313ef  1      
  nop                                                                                                                #  177   0x313f0  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  178   0x313f1  5      
  movl %eax, %edi                                                                                                    #  179   0x313f6  2      
  movl $0x10020654, %esi                                                                                             #  180   0x313f8  5      
  nop                                                                                                                #  181   0x313fd  1      
  nop                                                                                                                #  182   0x313fe  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  183   0x313ff  5      
  movl $0x10030ce0, %edi                                                                                             #  184   0x31404  5      
  movl %eax, 0xffff8d9(%rip)                                                                                         #  185   0x31409  6      
  nop                                                                                                                #  186   0x3140f  1      
  nop                                                                                                                #  187   0x31410  1      
  callq .__cxa_guard_release                                                                                         #  188   0x31411  5      
  jmpq .L_31580                                                                                                      #  189   0x31416  5      
  nop                                                                                                                #  190   0x3141b  1      
  nop                                                                                                                #  191   0x3141c  1      
.L_31620:                                                                                                            #        0x3141d  0      
  nop                                                                                                                #  192   0x3141d  1      
  nop                                                                                                                #  193   0x3141e  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  194   0x3141f  5      
  movl %eax, %edi                                                                                                    #  195   0x31424  2      
  movl $0x10020664, %esi                                                                                             #  196   0x31426  5      
  nop                                                                                                                #  197   0x3142b  1      
  nop                                                                                                                #  198   0x3142c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  199   0x3142d  5      
  movl $0x10030cf0, %edi                                                                                             #  200   0x31432  5      
  movl %eax, 0xffff8bb(%rip)                                                                                         #  201   0x31437  6      
  nop                                                                                                                #  202   0x3143d  1      
  nop                                                                                                                #  203   0x3143e  1      
  callq .__cxa_guard_release                                                                                         #  204   0x3143f  5      
  jmpq .L_31520                                                                                                      #  205   0x31444  5      
  nop                                                                                                                #  206   0x31449  1      
  nop                                                                                                                #  207   0x3144a  1      
.L_316a0:                                                                                                            #        0x3144b  0      
  movl %eax, %ebx                                                                                                    #  208   0x3144b  2      
  movl $0x10030ce0, %edi                                                                                             #  209   0x3144d  5      
  nop                                                                                                                #  210   0x31452  1      
  nop                                                                                                                #  211   0x31453  1      
  callq .__cxa_guard_abort                                                                                           #  212   0x31454  5      
  movl %ebx, %edi                                                                                                    #  213   0x31459  2      
  nop                                                                                                                #  214   0x3145b  1      
  nop                                                                                                                #  215   0x3145c  1      
  callq ._Unwind_Resume                                                                                              #  216   0x3145d  5      
.L_316e0:                                                                                                            #        0x31462  0      
  movl %eax, %ebx                                                                                                    #  217   0x31462  2      
  movl $0x10030cf0, %edi                                                                                             #  218   0x31464  5      
  nop                                                                                                                #  219   0x31469  1      
  nop                                                                                                                #  220   0x3146a  1      
  callq .__cxa_guard_abort                                                                                           #  221   0x3146b  5      
  movl %ebx, %edi                                                                                                    #  222   0x31470  2      
  nop                                                                                                                #  223   0x31472  1      
  nop                                                                                                                #  224   0x31473  1      
  callq ._Unwind_Resume                                                                                              #  225   0x31474  5      
  jmpq .L_316a0                                                                                                      #  226   0x31479  5      
  nop                                                                                                                #  227   0x3147e  1      
  nop                                                                                                                #  228   0x3147f  1      
  jmpq .L_316e0                                                                                                      #  229   0x31480  5      
  nop                                                                                                                #  230   0x31485  1      
  nop                                                                                                                #  231   0x31486  1      
                                                                                                                                              
.size _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE, .-_ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE

