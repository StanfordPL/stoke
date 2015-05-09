  .text
  .globl _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE
  .type _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE, @function

#! file-offset 0x31740
#! rip-offset  0x31740
#! capacity    1408 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE:  #        0x31740  0      
  pushq %r12                                                                #  1     0x31740  3      
  movl %edi, %r12d                                                          #  2     0x31743  3      
  pushq %rbx                                                                #  3     0x31746  2      
  movl %esi, %ebx                                                           #  4     0x31748  2      
  subl $0x28, %esp                                                          #  5     0x3174a  3      
  addq %r15, %rsp                                                           #  6     0x3174d  3      
  cmpb $0x0, 0xffff589(%rip)                                                #  7     0x31750  7      
  je .L_31940                                                               #  8     0x31757  6      
  nop                                                                       #  9     0x3175d  1      
.L_31760:                                                                   #        0x3175e  0      
  movl 0xffff584(%rip), %eax                                                #  10    0x3175e  6      
  testq %rax, %rax                                                          #  11    0x31764  3      
  jne .L_318e0                                                              #  12    0x31767  6      
  cmpb $0x0, 0xffff57c(%rip)                                                #  13    0x3176d  7      
  je .L_31840                                                               #  14    0x31774  6      
  nop                                                                       #  15    0x3177a  1      
.L_31780:                                                                   #        0x3177b  0      
  movl 0xffff577(%rip), %eax                                                #  16    0x3177b  6      
  testq %rax, %rax                                                          #  17    0x31781  3      
  jne .L_317e0                                                              #  18    0x31784  6      
  movl %ebx, %ebx                                                           #  19    0x3178a  2      
  movl (%r15,%rbx,1), %edi                                                  #  20    0x3178c  4      
  testl %edi, %edi                                                          #  21    0x31790  2      
  je .L_317c0                                                               #  22    0x31792  6      
  movl %ebx, %ebx                                                           #  23    0x31798  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                              #  24    0x3179a  6      
  nop                                                                       #  25    0x317a0  1      
  je .L_319e0                                                               #  26    0x317a1  6      
  nop                                                                       #  27    0x317a7  1      
  nop                                                                       #  28    0x317a8  1      
.L_317c0:                                                                   #        0x317a9  0      
  addl $0x28, %esp                                                          #  29    0x317a9  3      
  addq %r15, %rsp                                                           #  30    0x317ac  3      
  movl $0xfffffffa, %eax                                                    #  31    0x317af  5      
  popq %rbx                                                                 #  32    0x317b4  2      
  popq %r12                                                                 #  33    0x317b6  3      
  popq %r11                                                                 #  34    0x317b9  3      
  andl $0xffffffe0, %r11d                                                   #  35    0x317bc  7      
  addq %r15, %r11                                                           #  36    0x317c3  3      
  jmpq %r11                                                                 #  37    0x317c6  3      
  nop                                                                       #  38    0x317c9  1      
.L_317e0:                                                                   #        0x317ca  0      
  cmpb $0x0, 0xffff51f(%rip)                                                #  39    0x317ca  7      
  je .L_31a40                                                               #  40    0x317d1  6      
  nop                                                                       #  41    0x317d7  1      
  nop                                                                       #  42    0x317d8  1      
.L_31800:                                                                   #        0x317d9  0      
  movl %ebx, %ebx                                                           #  43    0x317d9  2      
  movq (%r15,%rbx,1), %rdx                                                  #  44    0x317db  4      
  movl %eax, %eax                                                           #  45    0x317df  2      
  movl 0x28(%r15,%rax,1), %eax                                              #  46    0x317e1  5      
  movq %rdx, (%rsp)                                                         #  47    0x317e6  4      
  movl %ebx, %ebx                                                           #  48    0x317ea  2      
  movl 0x8(%r15,%rbx,1), %ecx                                               #  49    0x317ec  5      
  movl %ecx, 0x8(%rsp)                                                      #  50    0x317f1  4      
  nop                                                                       #  51    0x317f5  1      
.L_31820:                                                                   #        0x317f6  0      
  movl %ebx, %ebx                                                           #  52    0x317f6  2      
  movl 0xc(%r15,%rbx,1), %esi                                               #  53    0x317f8  5      
  movl %r12d, %r12d                                                         #  54    0x317fd  3      
  movl 0x4(%r15,%r12,1), %edi                                               #  55    0x31800  5      
  addl $0x28, %esp                                                          #  56    0x31805  3      
  addq %r15, %rsp                                                           #  57    0x31808  3      
  popq %rbx                                                                 #  58    0x3180b  2      
  popq %r12                                                                 #  59    0x3180d  3      
  andl $0xffffffe0, %eax                                                    #  60    0x31810  5      
  addq %r15, %rax                                                           #  61    0x31815  3      
  jmpq %rax                                                                 #  62    0x31818  2      
.L_31840:                                                                   #        0x3181a  0      
  movl $0x10030cf0, %edi                                                    #  63    0x3181a  5      
  nop                                                                       #  64    0x3181f  1      
  nop                                                                       #  65    0x31820  1      
  callq .__cxa_guard_acquire                                                #  66    0x31821  5      
  testl %eax, %eax                                                          #  67    0x31826  2      
  je .L_31780                                                               #  68    0x31828  6      
  nop                                                                       #  69    0x3182e  1      
  nop                                                                       #  70    0x3182f  1      
  callq ._ZN2pp6Module3GetEv                                                #  71    0x31830  5      
  movl %eax, %edi                                                           #  72    0x31835  2      
  movl $0x10020664, %esi                                                    #  73    0x31837  5      
  nop                                                                       #  74    0x3183c  1      
  nop                                                                       #  75    0x3183d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  76    0x3183e  5      
  movl $0x10030cf0, %edi                                                    #  77    0x31843  5      
  movl %eax, 0xffff4aa(%rip)                                                #  78    0x31848  6      
  nop                                                                       #  79    0x3184e  1      
  nop                                                                       #  80    0x3184f  1      
  callq .__cxa_guard_release                                                #  81    0x31850  5      
  jmpq .L_31780                                                             #  82    0x31855  5      
  nop                                                                       #  83    0x3185a  1      
  nop                                                                       #  84    0x3185b  1      
.L_318e0:                                                                   #        0x3185c  0      
  cmpb $0x0, 0xffff47d(%rip)                                                #  85    0x3185c  7      
  je .L_31aa0                                                               #  86    0x31863  6      
  nop                                                                       #  87    0x31869  1      
  nop                                                                       #  88    0x3186a  1      
.L_31900:                                                                   #        0x3186b  0      
  movl %ebx, %ebx                                                           #  89    0x3186b  2      
  movq (%r15,%rbx,1), %rdx                                                  #  90    0x3186d  4      
  movl %eax, %eax                                                           #  91    0x31871  2      
  movl 0x28(%r15,%rax,1), %eax                                              #  92    0x31873  5      
  movq %rdx, 0x10(%rsp)                                                     #  93    0x31878  5      
  movl %ebx, %ebx                                                           #  94    0x3187d  2      
  movl 0x8(%r15,%rbx,1), %ecx                                               #  95    0x3187f  5      
  movl %ecx, 0x18(%rsp)                                                     #  96    0x31884  4      
  nop                                                                       #  97    0x31888  1      
  jmpq .L_31820                                                             #  98    0x31889  5      
  nop                                                                       #  99    0x3188e  1      
  nop                                                                       #  100   0x3188f  1      
.L_31940:                                                                   #        0x31890  0      
  movl $0x10030ce0, %edi                                                    #  101   0x31890  5      
  nop                                                                       #  102   0x31895  1      
  nop                                                                       #  103   0x31896  1      
  callq .__cxa_guard_acquire                                                #  104   0x31897  5      
  testl %eax, %eax                                                          #  105   0x3189c  2      
  je .L_31760                                                               #  106   0x3189e  6      
  nop                                                                       #  107   0x318a4  1      
  nop                                                                       #  108   0x318a5  1      
  callq ._ZN2pp6Module3GetEv                                                #  109   0x318a6  5      
  movl %eax, %edi                                                           #  110   0x318ab  2      
  movl $0x10020654, %esi                                                    #  111   0x318ad  5      
  nop                                                                       #  112   0x318b2  1      
  nop                                                                       #  113   0x318b3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  114   0x318b4  5      
  movl $0x10030ce0, %edi                                                    #  115   0x318b9  5      
  movl %eax, 0xffff424(%rip)                                                #  116   0x318be  6      
  nop                                                                       #  117   0x318c4  1      
  nop                                                                       #  118   0x318c5  1      
  callq .__cxa_guard_release                                                #  119   0x318c6  5      
  jmpq .L_31760                                                             #  120   0x318cb  5      
  nop                                                                       #  121   0x318d0  1      
  nop                                                                       #  122   0x318d1  1      
.L_319e0:                                                                   #        0x318d2  0      
  nop                                                                       #  123   0x318d2  1      
  nop                                                                       #  124   0x318d3  1      
  callq ._ZN2pp6Module3GetEv                                                #  125   0x318d4  5      
  movl %eax, %eax                                                           #  126   0x318d9  2      
  movl %ebx, %edx                                                           #  127   0x318db  2      
  movl $0xfffffffa, %ecx                                                    #  128   0x318dd  5      
  movl %eax, %eax                                                           #  129   0x318e2  2      
  movl 0x24(%r15,%rax,1), %edi                                              #  130   0x318e4  5      
  xorl %esi, %esi                                                           #  131   0x318e9  2      
  nop                                                                       #  132   0x318eb  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi         #  133   0x318ec  5      
  addl $0x28, %esp                                                          #  134   0x318f1  3      
  addq %r15, %rsp                                                           #  135   0x318f4  3      
  movl $0xffffffff, %eax                                                    #  136   0x318f7  5      
  popq %rbx                                                                 #  137   0x318fc  2      
  popq %r12                                                                 #  138   0x318fe  3      
  popq %r11                                                                 #  139   0x31901  3      
  andl $0xffffffe0, %r11d                                                   #  140   0x31904  7      
  addq %r15, %r11                                                           #  141   0x3190b  3      
  jmpq %r11                                                                 #  142   0x3190e  3      
  nop                                                                       #  143   0x31911  1      
.L_31a40:                                                                   #        0x31912  0      
  movl $0x10030cf0, %edi                                                    #  144   0x31912  5      
  nop                                                                       #  145   0x31917  1      
  nop                                                                       #  146   0x31918  1      
  callq .__cxa_guard_acquire                                                #  147   0x31919  5      
  testl %eax, %eax                                                          #  148   0x3191e  2      
  jne .L_31b80                                                              #  149   0x31920  6      
  nop                                                                       #  150   0x31926  1      
  nop                                                                       #  151   0x31927  1      
.L_31a80:                                                                   #        0x31928  0      
  movl 0xffff3ca(%rip), %eax                                                #  152   0x31928  6      
  jmpq .L_31800                                                             #  153   0x3192e  5      
  nop                                                                       #  154   0x31933  1      
  nop                                                                       #  155   0x31934  1      
.L_31aa0:                                                                   #        0x31935  0      
  movl $0x10030ce0, %edi                                                    #  156   0x31935  5      
  nop                                                                       #  157   0x3193a  1      
  nop                                                                       #  158   0x3193b  1      
  callq .__cxa_guard_acquire                                                #  159   0x3193c  5      
  testl %eax, %eax                                                          #  160   0x31941  2      
  jne .L_31b00                                                              #  161   0x31943  6      
  nop                                                                       #  162   0x31949  1      
  nop                                                                       #  163   0x3194a  1      
.L_31ae0:                                                                   #        0x3194b  0      
  movl 0xffff397(%rip), %eax                                                #  164   0x3194b  6      
  jmpq .L_31900                                                             #  165   0x31951  5      
  nop                                                                       #  166   0x31956  1      
  nop                                                                       #  167   0x31957  1      
.L_31b00:                                                                   #        0x31958  0      
  nop                                                                       #  168   0x31958  1      
  nop                                                                       #  169   0x31959  1      
  callq ._ZN2pp6Module3GetEv                                                #  170   0x3195a  5      
  movl %eax, %edi                                                           #  171   0x3195f  2      
  movl $0x10020654, %esi                                                    #  172   0x31961  5      
  nop                                                                       #  173   0x31966  1      
  nop                                                                       #  174   0x31967  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  175   0x31968  5      
  movl $0x10030ce0, %edi                                                    #  176   0x3196d  5      
  movl %eax, 0xffff370(%rip)                                                #  177   0x31972  6      
  nop                                                                       #  178   0x31978  1      
  nop                                                                       #  179   0x31979  1      
  callq .__cxa_guard_release                                                #  180   0x3197a  5      
  jmpq .L_31ae0                                                             #  181   0x3197f  5      
  nop                                                                       #  182   0x31984  1      
  nop                                                                       #  183   0x31985  1      
.L_31b80:                                                                   #        0x31986  0      
  nop                                                                       #  184   0x31986  1      
  nop                                                                       #  185   0x31987  1      
  callq ._ZN2pp6Module3GetEv                                                #  186   0x31988  5      
  movl %eax, %edi                                                           #  187   0x3198d  2      
  movl $0x10020664, %esi                                                    #  188   0x3198f  5      
  nop                                                                       #  189   0x31994  1      
  nop                                                                       #  190   0x31995  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  191   0x31996  5      
  movl $0x10030cf0, %edi                                                    #  192   0x3199b  5      
  movl %eax, 0xffff352(%rip)                                                #  193   0x319a0  6      
  nop                                                                       #  194   0x319a6  1      
  nop                                                                       #  195   0x319a7  1      
  callq .__cxa_guard_release                                                #  196   0x319a8  5      
  jmpq .L_31a80                                                             #  197   0x319ad  5      
  nop                                                                       #  198   0x319b2  1      
  nop                                                                       #  199   0x319b3  1      
.L_31c00:                                                                   #        0x319b4  0      
  movl %eax, %ebx                                                           #  200   0x319b4  2      
  movl $0x10030ce0, %edi                                                    #  201   0x319b6  5      
  nop                                                                       #  202   0x319bb  1      
  nop                                                                       #  203   0x319bc  1      
  callq .__cxa_guard_abort                                                  #  204   0x319bd  5      
  movl %ebx, %edi                                                           #  205   0x319c2  2      
  nop                                                                       #  206   0x319c4  1      
  nop                                                                       #  207   0x319c5  1      
  callq ._Unwind_Resume                                                     #  208   0x319c6  5      
.L_31c40:                                                                   #        0x319cb  0      
  movl %eax, %ebx                                                           #  209   0x319cb  2      
  movl $0x10030cf0, %edi                                                    #  210   0x319cd  5      
  nop                                                                       #  211   0x319d2  1      
  nop                                                                       #  212   0x319d3  1      
  callq .__cxa_guard_abort                                                  #  213   0x319d4  5      
  movl %ebx, %edi                                                           #  214   0x319d9  2      
  nop                                                                       #  215   0x319db  1      
  nop                                                                       #  216   0x319dc  1      
  callq ._Unwind_Resume                                                     #  217   0x319dd  5      
  jmpq .L_31c00                                                             #  218   0x319e2  5      
  nop                                                                       #  219   0x319e7  1      
  nop                                                                       #  220   0x319e8  1      
  jmpq .L_31c40                                                             #  221   0x319e9  5      
  nop                                                                       #  222   0x319ee  1      
  nop                                                                       #  223   0x319ef  1      
                                                                                                     
.size _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE, .-_ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE

