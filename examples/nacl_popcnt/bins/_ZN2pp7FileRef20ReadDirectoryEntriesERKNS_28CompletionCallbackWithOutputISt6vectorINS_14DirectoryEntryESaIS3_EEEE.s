  .text
  .globl _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE
  .type _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE, @function

#! file-offset 0x31240
#! rip-offset  0x31240
#! capacity    1440 bytes

# Text                                                                                                               #  Line  RIP      Bytes  
._ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE:  #        0x31240  0      
  pushq %r12                                                                                                         #  1     0x31240  3      
  movl %edi, %r12d                                                                                                   #  2     0x31243  3      
  pushq %rbx                                                                                                         #  3     0x31246  2      
  movl %esi, %ebx                                                                                                    #  4     0x31248  2      
  subl $0x28, %esp                                                                                                   #  5     0x3124a  3      
  addq %r15, %rsp                                                                                                    #  6     0x3124d  3      
  cmpb $0x0, 0xffffa89(%rip)                                                                                         #  7     0x31250  7      
  je .L_31460                                                                                                        #  8     0x31257  6      
  nop                                                                                                                #  9     0x3125d  1      
.L_31260:                                                                                                            #        0x3125e  0      
  movl 0xffffa84(%rip), %eax                                                                                         #  10    0x3125e  6      
  testq %rax, %rax                                                                                                   #  11    0x31264  3      
  jne .L_31400                                                                                                       #  12    0x31267  6      
  cmpb $0x0, 0xffffa7c(%rip)                                                                                         #  13    0x3126d  7      
  je .L_31360                                                                                                        #  14    0x31274  6      
  nop                                                                                                                #  15    0x3127a  1      
.L_31280:                                                                                                            #        0x3127b  0      
  movl 0xffffa77(%rip), %eax                                                                                         #  16    0x3127b  6      
  testq %rax, %rax                                                                                                   #  17    0x31281  3      
  jne .L_312e0                                                                                                       #  18    0x31284  6      
  movl %ebx, %ebx                                                                                                    #  19    0x3128a  2      
  movl (%r15,%rbx,1), %esi                                                                                           #  20    0x3128c  4      
  testl %esi, %esi                                                                                                   #  21    0x31290  2      
  je .L_312c0                                                                                                        #  22    0x31292  6      
  movl %ebx, %ebx                                                                                                    #  23    0x31298  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                                                                       #  24    0x3129a  6      
  nop                                                                                                                #  25    0x312a0  1      
  je .L_31500                                                                                                        #  26    0x312a1  6      
  nop                                                                                                                #  27    0x312a7  1      
  nop                                                                                                                #  28    0x312a8  1      
.L_312c0:                                                                                                            #        0x312a9  0      
  addl $0x28, %esp                                                                                                   #  29    0x312a9  3      
  addq %r15, %rsp                                                                                                    #  30    0x312ac  3      
  movl $0xfffffffa, %eax                                                                                             #  31    0x312af  5      
  popq %rbx                                                                                                          #  32    0x312b4  2      
  popq %r12                                                                                                          #  33    0x312b6  3      
  popq %r11                                                                                                          #  34    0x312b9  3      
  andl $0xffffffe0, %r11d                                                                                            #  35    0x312bc  7      
  addq %r15, %r11                                                                                                    #  36    0x312c3  3      
  jmpq %r11                                                                                                          #  37    0x312c6  3      
  nop                                                                                                                #  38    0x312c9  1      
.L_312e0:                                                                                                            #        0x312ca  0      
  cmpb $0x0, 0xffffa1f(%rip)                                                                                         #  39    0x312ca  7      
  je .L_31560                                                                                                        #  40    0x312d1  6      
  nop                                                                                                                #  41    0x312d7  1      
  nop                                                                                                                #  42    0x312d8  1      
.L_31300:                                                                                                            #        0x312d9  0      
  movl %ebx, %ebx                                                                                                    #  43    0x312d9  2      
  movq (%r15,%rbx,1), %rdx                                                                                           #  44    0x312db  4      
  movl %eax, %eax                                                                                                    #  45    0x312df  2      
  movl 0x2c(%r15,%rax,1), %eax                                                                                       #  46    0x312e1  5      
  movq %rdx, (%rsp)                                                                                                  #  47    0x312e6  4      
  movl %ebx, %ebx                                                                                                    #  48    0x312ea  2      
  movl 0x8(%r15,%rbx,1), %ecx                                                                                        #  49    0x312ec  5      
  movl %ecx, 0x8(%rsp)                                                                                               #  50    0x312f1  4      
  nop                                                                                                                #  51    0x312f5  1      
.L_31320:                                                                                                            #        0x312f6  0      
  movl %ebx, %ebx                                                                                                    #  52    0x312f6  2      
  movl 0xc(%r15,%rbx,1), %ebx                                                                                        #  53    0x312f8  5      
  movl %r12d, %r12d                                                                                                  #  54    0x312fd  3      
  movl 0x4(%r15,%r12,1), %edi                                                                                        #  55    0x31300  5      
  movl %ebx, %ebx                                                                                                    #  56    0x31305  2      
  movl 0x4(%r15,%rbx,1), %esi                                                                                        #  57    0x31307  5      
  movl %ebx, %ebx                                                                                                    #  58    0x3130c  2      
  movl 0x8(%r15,%rbx,1), %ebx                                                                                        #  59    0x3130e  5      
  nop                                                                                                                #  60    0x31313  1      
  addl $0x28, %esp                                                                                                   #  61    0x31314  3      
  addq %r15, %rsp                                                                                                    #  62    0x31317  3      
  shlq $0x20, %rbx                                                                                                   #  63    0x3131a  4      
  orq %rbx, %rsi                                                                                                     #  64    0x3131e  3      
  popq %rbx                                                                                                          #  65    0x31321  2      
  popq %r12                                                                                                          #  66    0x31323  3      
  andl $0xffffffe0, %eax                                                                                             #  67    0x31326  5      
  addq %r15, %rax                                                                                                    #  68    0x3132b  3      
  jmpq %rax                                                                                                          #  69    0x3132e  2      
  nop                                                                                                                #  70    0x31330  1      
.L_31360:                                                                                                            #        0x31331  0      
  movl $0x10030cf0, %edi                                                                                             #  71    0x31331  5      
  nop                                                                                                                #  72    0x31336  1      
  nop                                                                                                                #  73    0x31337  1      
  callq .__cxa_guard_acquire                                                                                         #  74    0x31338  5      
  testl %eax, %eax                                                                                                   #  75    0x3133d  2      
  je .L_31280                                                                                                        #  76    0x3133f  6      
  nop                                                                                                                #  77    0x31345  1      
  nop                                                                                                                #  78    0x31346  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  79    0x31347  5      
  movl %eax, %edi                                                                                                    #  80    0x3134c  2      
  movl $0x10020664, %esi                                                                                             #  81    0x3134e  5      
  nop                                                                                                                #  82    0x31353  1      
  nop                                                                                                                #  83    0x31354  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  84    0x31355  5      
  movl $0x10030cf0, %edi                                                                                             #  85    0x3135a  5      
  movl %eax, 0xffff993(%rip)                                                                                         #  86    0x3135f  6      
  nop                                                                                                                #  87    0x31365  1      
  nop                                                                                                                #  88    0x31366  1      
  callq .__cxa_guard_release                                                                                         #  89    0x31367  5      
  jmpq .L_31280                                                                                                      #  90    0x3136c  5      
  nop                                                                                                                #  91    0x31371  1      
  nop                                                                                                                #  92    0x31372  1      
.L_31400:                                                                                                            #        0x31373  0      
  cmpb $0x0, 0xffff966(%rip)                                                                                         #  93    0x31373  7      
  je .L_315c0                                                                                                        #  94    0x3137a  6      
  nop                                                                                                                #  95    0x31380  1      
  nop                                                                                                                #  96    0x31381  1      
.L_31420:                                                                                                            #        0x31382  0      
  movl %ebx, %ebx                                                                                                    #  97    0x31382  2      
  movq (%r15,%rbx,1), %rdx                                                                                           #  98    0x31384  4      
  movl %eax, %eax                                                                                                    #  99    0x31388  2      
  movl 0x2c(%r15,%rax,1), %eax                                                                                       #  100   0x3138a  5      
  movq %rdx, 0x10(%rsp)                                                                                              #  101   0x3138f  5      
  movl %ebx, %ebx                                                                                                    #  102   0x31394  2      
  movl 0x8(%r15,%rbx,1), %ecx                                                                                        #  103   0x31396  5      
  movl %ecx, 0x18(%rsp)                                                                                              #  104   0x3139b  4      
  nop                                                                                                                #  105   0x3139f  1      
  jmpq .L_31320                                                                                                      #  106   0x313a0  5      
  nop                                                                                                                #  107   0x313a5  1      
  nop                                                                                                                #  108   0x313a6  1      
.L_31460:                                                                                                            #        0x313a7  0      
  movl $0x10030ce0, %edi                                                                                             #  109   0x313a7  5      
  nop                                                                                                                #  110   0x313ac  1      
  nop                                                                                                                #  111   0x313ad  1      
  callq .__cxa_guard_acquire                                                                                         #  112   0x313ae  5      
  testl %eax, %eax                                                                                                   #  113   0x313b3  2      
  je .L_31260                                                                                                        #  114   0x313b5  6      
  nop                                                                                                                #  115   0x313bb  1      
  nop                                                                                                                #  116   0x313bc  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  117   0x313bd  5      
  movl %eax, %edi                                                                                                    #  118   0x313c2  2      
  movl $0x10020654, %esi                                                                                             #  119   0x313c4  5      
  nop                                                                                                                #  120   0x313c9  1      
  nop                                                                                                                #  121   0x313ca  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  122   0x313cb  5      
  movl $0x10030ce0, %edi                                                                                             #  123   0x313d0  5      
  movl %eax, 0xffff90d(%rip)                                                                                         #  124   0x313d5  6      
  nop                                                                                                                #  125   0x313db  1      
  nop                                                                                                                #  126   0x313dc  1      
  callq .__cxa_guard_release                                                                                         #  127   0x313dd  5      
  jmpq .L_31260                                                                                                      #  128   0x313e2  5      
  nop                                                                                                                #  129   0x313e7  1      
  nop                                                                                                                #  130   0x313e8  1      
.L_31500:                                                                                                            #        0x313e9  0      
  nop                                                                                                                #  131   0x313e9  1      
  nop                                                                                                                #  132   0x313ea  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  133   0x313eb  5      
  movl %eax, %eax                                                                                                    #  134   0x313f0  2      
  movl %ebx, %edx                                                                                                    #  135   0x313f2  2      
  movl $0xfffffffa, %ecx                                                                                             #  136   0x313f4  5      
  movl %eax, %eax                                                                                                    #  137   0x313f9  2      
  movl 0x24(%r15,%rax,1), %edi                                                                                       #  138   0x313fb  5      
  xorl %esi, %esi                                                                                                    #  139   0x31400  2      
  nop                                                                                                                #  140   0x31402  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi                                                  #  141   0x31403  5      
  addl $0x28, %esp                                                                                                   #  142   0x31408  3      
  addq %r15, %rsp                                                                                                    #  143   0x3140b  3      
  movl $0xffffffff, %eax                                                                                             #  144   0x3140e  5      
  popq %rbx                                                                                                          #  145   0x31413  2      
  popq %r12                                                                                                          #  146   0x31415  3      
  popq %r11                                                                                                          #  147   0x31418  3      
  andl $0xffffffe0, %r11d                                                                                            #  148   0x3141b  7      
  addq %r15, %r11                                                                                                    #  149   0x31422  3      
  jmpq %r11                                                                                                          #  150   0x31425  3      
  nop                                                                                                                #  151   0x31428  1      
.L_31560:                                                                                                            #        0x31429  0      
  movl $0x10030cf0, %edi                                                                                             #  152   0x31429  5      
  nop                                                                                                                #  153   0x3142e  1      
  nop                                                                                                                #  154   0x3142f  1      
  callq .__cxa_guard_acquire                                                                                         #  155   0x31430  5      
  testl %eax, %eax                                                                                                   #  156   0x31435  2      
  jne .L_316a0                                                                                                       #  157   0x31437  6      
  nop                                                                                                                #  158   0x3143d  1      
  nop                                                                                                                #  159   0x3143e  1      
.L_315a0:                                                                                                            #        0x3143f  0      
  movl 0xffff8b3(%rip), %eax                                                                                         #  160   0x3143f  6      
  jmpq .L_31300                                                                                                      #  161   0x31445  5      
  nop                                                                                                                #  162   0x3144a  1      
  nop                                                                                                                #  163   0x3144b  1      
.L_315c0:                                                                                                            #        0x3144c  0      
  movl $0x10030ce0, %edi                                                                                             #  164   0x3144c  5      
  nop                                                                                                                #  165   0x31451  1      
  nop                                                                                                                #  166   0x31452  1      
  callq .__cxa_guard_acquire                                                                                         #  167   0x31453  5      
  testl %eax, %eax                                                                                                   #  168   0x31458  2      
  jne .L_31620                                                                                                       #  169   0x3145a  6      
  nop                                                                                                                #  170   0x31460  1      
  nop                                                                                                                #  171   0x31461  1      
.L_31600:                                                                                                            #        0x31462  0      
  movl 0xffff880(%rip), %eax                                                                                         #  172   0x31462  6      
  jmpq .L_31420                                                                                                      #  173   0x31468  5      
  nop                                                                                                                #  174   0x3146d  1      
  nop                                                                                                                #  175   0x3146e  1      
.L_31620:                                                                                                            #        0x3146f  0      
  nop                                                                                                                #  176   0x3146f  1      
  nop                                                                                                                #  177   0x31470  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  178   0x31471  5      
  movl %eax, %edi                                                                                                    #  179   0x31476  2      
  movl $0x10020654, %esi                                                                                             #  180   0x31478  5      
  nop                                                                                                                #  181   0x3147d  1      
  nop                                                                                                                #  182   0x3147e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  183   0x3147f  5      
  movl $0x10030ce0, %edi                                                                                             #  184   0x31484  5      
  movl %eax, 0xffff859(%rip)                                                                                         #  185   0x31489  6      
  nop                                                                                                                #  186   0x3148f  1      
  nop                                                                                                                #  187   0x31490  1      
  callq .__cxa_guard_release                                                                                         #  188   0x31491  5      
  jmpq .L_31600                                                                                                      #  189   0x31496  5      
  nop                                                                                                                #  190   0x3149b  1      
  nop                                                                                                                #  191   0x3149c  1      
.L_316a0:                                                                                                            #        0x3149d  0      
  nop                                                                                                                #  192   0x3149d  1      
  nop                                                                                                                #  193   0x3149e  1      
  callq ._ZN2pp6Module3GetEv                                                                                         #  194   0x3149f  5      
  movl %eax, %edi                                                                                                    #  195   0x314a4  2      
  movl $0x10020664, %esi                                                                                             #  196   0x314a6  5      
  nop                                                                                                                #  197   0x314ab  1      
  nop                                                                                                                #  198   0x314ac  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                                                      #  199   0x314ad  5      
  movl $0x10030cf0, %edi                                                                                             #  200   0x314b2  5      
  movl %eax, 0xffff83b(%rip)                                                                                         #  201   0x314b7  6      
  nop                                                                                                                #  202   0x314bd  1      
  nop                                                                                                                #  203   0x314be  1      
  callq .__cxa_guard_release                                                                                         #  204   0x314bf  5      
  jmpq .L_315a0                                                                                                      #  205   0x314c4  5      
  nop                                                                                                                #  206   0x314c9  1      
  nop                                                                                                                #  207   0x314ca  1      
.L_31720:                                                                                                            #        0x314cb  0      
  movl %eax, %ebx                                                                                                    #  208   0x314cb  2      
  movl $0x10030ce0, %edi                                                                                             #  209   0x314cd  5      
  nop                                                                                                                #  210   0x314d2  1      
  nop                                                                                                                #  211   0x314d3  1      
  callq .__cxa_guard_abort                                                                                           #  212   0x314d4  5      
  movl %ebx, %edi                                                                                                    #  213   0x314d9  2      
  nop                                                                                                                #  214   0x314db  1      
  nop                                                                                                                #  215   0x314dc  1      
  callq ._Unwind_Resume                                                                                              #  216   0x314dd  5      
.L_31760:                                                                                                            #        0x314e2  0      
  movl %eax, %ebx                                                                                                    #  217   0x314e2  2      
  movl $0x10030cf0, %edi                                                                                             #  218   0x314e4  5      
  nop                                                                                                                #  219   0x314e9  1      
  nop                                                                                                                #  220   0x314ea  1      
  callq .__cxa_guard_abort                                                                                           #  221   0x314eb  5      
  movl %ebx, %edi                                                                                                    #  222   0x314f0  2      
  nop                                                                                                                #  223   0x314f2  1      
  nop                                                                                                                #  224   0x314f3  1      
  callq ._Unwind_Resume                                                                                              #  225   0x314f4  5      
  jmpq .L_31720                                                                                                      #  226   0x314f9  5      
  nop                                                                                                                #  227   0x314fe  1      
  nop                                                                                                                #  228   0x314ff  1      
  jmpq .L_31760                                                                                                      #  229   0x31500  5      
  nop                                                                                                                #  230   0x31505  1      
  nop                                                                                                                #  231   0x31506  1      
                                                                                                                                              
.size _ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE, .-_ZN2pp7FileRef20ReadDirectoryEntriesERKNS_28CompletionCallbackWithOutputISt6vectorINS_14DirectoryEntryESaIS3_EEEE

