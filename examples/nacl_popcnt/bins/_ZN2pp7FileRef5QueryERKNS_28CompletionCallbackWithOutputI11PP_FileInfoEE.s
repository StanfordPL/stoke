  .text
  .globl _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE
  .type _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE, @function

#! file-offset 0x317e0
#! rip-offset  0x317e0
#! capacity    1408 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE:  #        0x317e0  0      
  pushq %r12                                                                #  1     0x317e0  3      
  movl %edi, %r12d                                                          #  2     0x317e3  3      
  pushq %rbx                                                                #  3     0x317e6  2      
  movl %esi, %ebx                                                           #  4     0x317e8  2      
  subl $0x28, %esp                                                          #  5     0x317ea  3      
  addq %r15, %rsp                                                           #  6     0x317ed  3      
  cmpb $0x0, 0xffff4e9(%rip)                                                #  7     0x317f0  7      
  je .L_319e0                                                               #  8     0x317f7  6      
  nop                                                                       #  9     0x317fd  1      
.L_31800:                                                                   #        0x317fe  0      
  movl 0xffff4e4(%rip), %eax                                                #  10    0x317fe  6      
  testq %rax, %rax                                                          #  11    0x31804  3      
  jne .L_31980                                                              #  12    0x31807  6      
  cmpb $0x0, 0xffff4dc(%rip)                                                #  13    0x3180d  7      
  je .L_318e0                                                               #  14    0x31814  6      
  nop                                                                       #  15    0x3181a  1      
.L_31820:                                                                   #        0x3181b  0      
  movl 0xffff4d7(%rip), %eax                                                #  16    0x3181b  6      
  testq %rax, %rax                                                          #  17    0x31821  3      
  jne .L_31880                                                              #  18    0x31824  6      
  movl %ebx, %ebx                                                           #  19    0x3182a  2      
  movl (%r15,%rbx,1), %edi                                                  #  20    0x3182c  4      
  testl %edi, %edi                                                          #  21    0x31830  2      
  je .L_31860                                                               #  22    0x31832  6      
  movl %ebx, %ebx                                                           #  23    0x31838  2      
  testb $0x1, 0x8(%r15,%rbx,1)                                              #  24    0x3183a  6      
  nop                                                                       #  25    0x31840  1      
  je .L_31a80                                                               #  26    0x31841  6      
  nop                                                                       #  27    0x31847  1      
  nop                                                                       #  28    0x31848  1      
.L_31860:                                                                   #        0x31849  0      
  addl $0x28, %esp                                                          #  29    0x31849  3      
  addq %r15, %rsp                                                           #  30    0x3184c  3      
  movl $0xfffffffa, %eax                                                    #  31    0x3184f  5      
  popq %rbx                                                                 #  32    0x31854  2      
  popq %r12                                                                 #  33    0x31856  3      
  popq %r11                                                                 #  34    0x31859  3      
  andl $0xffffffe0, %r11d                                                   #  35    0x3185c  7      
  addq %r15, %r11                                                           #  36    0x31863  3      
  jmpq %r11                                                                 #  37    0x31866  3      
  nop                                                                       #  38    0x31869  1      
.L_31880:                                                                   #        0x3186a  0      
  cmpb $0x0, 0xffff47f(%rip)                                                #  39    0x3186a  7      
  je .L_31ae0                                                               #  40    0x31871  6      
  nop                                                                       #  41    0x31877  1      
  nop                                                                       #  42    0x31878  1      
.L_318a0:                                                                   #        0x31879  0      
  movl %ebx, %ebx                                                           #  43    0x31879  2      
  movq (%r15,%rbx,1), %rdx                                                  #  44    0x3187b  4      
  movl %eax, %eax                                                           #  45    0x3187f  2      
  movl 0x28(%r15,%rax,1), %eax                                              #  46    0x31881  5      
  movq %rdx, (%rsp)                                                         #  47    0x31886  4      
  movl %ebx, %ebx                                                           #  48    0x3188a  2      
  movl 0x8(%r15,%rbx,1), %ecx                                               #  49    0x3188c  5      
  movl %ecx, 0x8(%rsp)                                                      #  50    0x31891  4      
  nop                                                                       #  51    0x31895  1      
.L_318c0:                                                                   #        0x31896  0      
  movl %ebx, %ebx                                                           #  52    0x31896  2      
  movl 0xc(%r15,%rbx,1), %esi                                               #  53    0x31898  5      
  movl %r12d, %r12d                                                         #  54    0x3189d  3      
  movl 0x4(%r15,%r12,1), %edi                                               #  55    0x318a0  5      
  addl $0x28, %esp                                                          #  56    0x318a5  3      
  addq %r15, %rsp                                                           #  57    0x318a8  3      
  popq %rbx                                                                 #  58    0x318ab  2      
  popq %r12                                                                 #  59    0x318ad  3      
  andl $0xffffffe0, %eax                                                    #  60    0x318b0  5      
  addq %r15, %rax                                                           #  61    0x318b5  3      
  jmpq %rax                                                                 #  62    0x318b8  2      
.L_318e0:                                                                   #        0x318ba  0      
  movl $0x10030cf0, %edi                                                    #  63    0x318ba  5      
  nop                                                                       #  64    0x318bf  1      
  nop                                                                       #  65    0x318c0  1      
  callq .__cxa_guard_acquire                                                #  66    0x318c1  5      
  testl %eax, %eax                                                          #  67    0x318c6  2      
  je .L_31820                                                               #  68    0x318c8  6      
  nop                                                                       #  69    0x318ce  1      
  nop                                                                       #  70    0x318cf  1      
  callq ._ZN2pp6Module3GetEv                                                #  71    0x318d0  5      
  movl %eax, %edi                                                           #  72    0x318d5  2      
  movl $0x10020664, %esi                                                    #  73    0x318d7  5      
  nop                                                                       #  74    0x318dc  1      
  nop                                                                       #  75    0x318dd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  76    0x318de  5      
  movl $0x10030cf0, %edi                                                    #  77    0x318e3  5      
  movl %eax, 0xffff40a(%rip)                                                #  78    0x318e8  6      
  nop                                                                       #  79    0x318ee  1      
  nop                                                                       #  80    0x318ef  1      
  callq .__cxa_guard_release                                                #  81    0x318f0  5      
  jmpq .L_31820                                                             #  82    0x318f5  5      
  nop                                                                       #  83    0x318fa  1      
  nop                                                                       #  84    0x318fb  1      
.L_31980:                                                                   #        0x318fc  0      
  cmpb $0x0, 0xffff3dd(%rip)                                                #  85    0x318fc  7      
  je .L_31b40                                                               #  86    0x31903  6      
  nop                                                                       #  87    0x31909  1      
  nop                                                                       #  88    0x3190a  1      
.L_319a0:                                                                   #        0x3190b  0      
  movl %ebx, %ebx                                                           #  89    0x3190b  2      
  movq (%r15,%rbx,1), %rdx                                                  #  90    0x3190d  4      
  movl %eax, %eax                                                           #  91    0x31911  2      
  movl 0x28(%r15,%rax,1), %eax                                              #  92    0x31913  5      
  movq %rdx, 0x10(%rsp)                                                     #  93    0x31918  5      
  movl %ebx, %ebx                                                           #  94    0x3191d  2      
  movl 0x8(%r15,%rbx,1), %ecx                                               #  95    0x3191f  5      
  movl %ecx, 0x18(%rsp)                                                     #  96    0x31924  4      
  nop                                                                       #  97    0x31928  1      
  jmpq .L_318c0                                                             #  98    0x31929  5      
  nop                                                                       #  99    0x3192e  1      
  nop                                                                       #  100   0x3192f  1      
.L_319e0:                                                                   #        0x31930  0      
  movl $0x10030ce0, %edi                                                    #  101   0x31930  5      
  nop                                                                       #  102   0x31935  1      
  nop                                                                       #  103   0x31936  1      
  callq .__cxa_guard_acquire                                                #  104   0x31937  5      
  testl %eax, %eax                                                          #  105   0x3193c  2      
  je .L_31800                                                               #  106   0x3193e  6      
  nop                                                                       #  107   0x31944  1      
  nop                                                                       #  108   0x31945  1      
  callq ._ZN2pp6Module3GetEv                                                #  109   0x31946  5      
  movl %eax, %edi                                                           #  110   0x3194b  2      
  movl $0x10020654, %esi                                                    #  111   0x3194d  5      
  nop                                                                       #  112   0x31952  1      
  nop                                                                       #  113   0x31953  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  114   0x31954  5      
  movl $0x10030ce0, %edi                                                    #  115   0x31959  5      
  movl %eax, 0xffff384(%rip)                                                #  116   0x3195e  6      
  nop                                                                       #  117   0x31964  1      
  nop                                                                       #  118   0x31965  1      
  callq .__cxa_guard_release                                                #  119   0x31966  5      
  jmpq .L_31800                                                             #  120   0x3196b  5      
  nop                                                                       #  121   0x31970  1      
  nop                                                                       #  122   0x31971  1      
.L_31a80:                                                                   #        0x31972  0      
  nop                                                                       #  123   0x31972  1      
  nop                                                                       #  124   0x31973  1      
  callq ._ZN2pp6Module3GetEv                                                #  125   0x31974  5      
  movl %eax, %eax                                                           #  126   0x31979  2      
  movl %ebx, %edx                                                           #  127   0x3197b  2      
  movl $0xfffffffa, %ecx                                                    #  128   0x3197d  5      
  movl %eax, %eax                                                           #  129   0x31982  2      
  movl 0x24(%r15,%rax,1), %edi                                              #  130   0x31984  5      
  xorl %esi, %esi                                                           #  131   0x31989  2      
  nop                                                                       #  132   0x3198b  1      
  callq ._ZN2pp4Core16CallOnMainThreadEiRKNS_18CompletionCallbackEi         #  133   0x3198c  5      
  addl $0x28, %esp                                                          #  134   0x31991  3      
  addq %r15, %rsp                                                           #  135   0x31994  3      
  movl $0xffffffff, %eax                                                    #  136   0x31997  5      
  popq %rbx                                                                 #  137   0x3199c  2      
  popq %r12                                                                 #  138   0x3199e  3      
  popq %r11                                                                 #  139   0x319a1  3      
  andl $0xffffffe0, %r11d                                                   #  140   0x319a4  7      
  addq %r15, %r11                                                           #  141   0x319ab  3      
  jmpq %r11                                                                 #  142   0x319ae  3      
  nop                                                                       #  143   0x319b1  1      
.L_31ae0:                                                                   #        0x319b2  0      
  movl $0x10030cf0, %edi                                                    #  144   0x319b2  5      
  nop                                                                       #  145   0x319b7  1      
  nop                                                                       #  146   0x319b8  1      
  callq .__cxa_guard_acquire                                                #  147   0x319b9  5      
  testl %eax, %eax                                                          #  148   0x319be  2      
  jne .L_31c20                                                              #  149   0x319c0  6      
  nop                                                                       #  150   0x319c6  1      
  nop                                                                       #  151   0x319c7  1      
.L_31b20:                                                                   #        0x319c8  0      
  movl 0xffff32a(%rip), %eax                                                #  152   0x319c8  6      
  jmpq .L_318a0                                                             #  153   0x319ce  5      
  nop                                                                       #  154   0x319d3  1      
  nop                                                                       #  155   0x319d4  1      
.L_31b40:                                                                   #        0x319d5  0      
  movl $0x10030ce0, %edi                                                    #  156   0x319d5  5      
  nop                                                                       #  157   0x319da  1      
  nop                                                                       #  158   0x319db  1      
  callq .__cxa_guard_acquire                                                #  159   0x319dc  5      
  testl %eax, %eax                                                          #  160   0x319e1  2      
  jne .L_31ba0                                                              #  161   0x319e3  6      
  nop                                                                       #  162   0x319e9  1      
  nop                                                                       #  163   0x319ea  1      
.L_31b80:                                                                   #        0x319eb  0      
  movl 0xffff2f7(%rip), %eax                                                #  164   0x319eb  6      
  jmpq .L_319a0                                                             #  165   0x319f1  5      
  nop                                                                       #  166   0x319f6  1      
  nop                                                                       #  167   0x319f7  1      
.L_31ba0:                                                                   #        0x319f8  0      
  nop                                                                       #  168   0x319f8  1      
  nop                                                                       #  169   0x319f9  1      
  callq ._ZN2pp6Module3GetEv                                                #  170   0x319fa  5      
  movl %eax, %edi                                                           #  171   0x319ff  2      
  movl $0x10020654, %esi                                                    #  172   0x31a01  5      
  nop                                                                       #  173   0x31a06  1      
  nop                                                                       #  174   0x31a07  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  175   0x31a08  5      
  movl $0x10030ce0, %edi                                                    #  176   0x31a0d  5      
  movl %eax, 0xffff2d0(%rip)                                                #  177   0x31a12  6      
  nop                                                                       #  178   0x31a18  1      
  nop                                                                       #  179   0x31a19  1      
  callq .__cxa_guard_release                                                #  180   0x31a1a  5      
  jmpq .L_31b80                                                             #  181   0x31a1f  5      
  nop                                                                       #  182   0x31a24  1      
  nop                                                                       #  183   0x31a25  1      
.L_31c20:                                                                   #        0x31a26  0      
  nop                                                                       #  184   0x31a26  1      
  nop                                                                       #  185   0x31a27  1      
  callq ._ZN2pp6Module3GetEv                                                #  186   0x31a28  5      
  movl %eax, %edi                                                           #  187   0x31a2d  2      
  movl $0x10020664, %esi                                                    #  188   0x31a2f  5      
  nop                                                                       #  189   0x31a34  1      
  nop                                                                       #  190   0x31a35  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  191   0x31a36  5      
  movl $0x10030cf0, %edi                                                    #  192   0x31a3b  5      
  movl %eax, 0xffff2b2(%rip)                                                #  193   0x31a40  6      
  nop                                                                       #  194   0x31a46  1      
  nop                                                                       #  195   0x31a47  1      
  callq .__cxa_guard_release                                                #  196   0x31a48  5      
  jmpq .L_31b20                                                             #  197   0x31a4d  5      
  nop                                                                       #  198   0x31a52  1      
  nop                                                                       #  199   0x31a53  1      
.L_31ca0:                                                                   #        0x31a54  0      
  movl %eax, %ebx                                                           #  200   0x31a54  2      
  movl $0x10030ce0, %edi                                                    #  201   0x31a56  5      
  nop                                                                       #  202   0x31a5b  1      
  nop                                                                       #  203   0x31a5c  1      
  callq .__cxa_guard_abort                                                  #  204   0x31a5d  5      
  movl %ebx, %edi                                                           #  205   0x31a62  2      
  nop                                                                       #  206   0x31a64  1      
  nop                                                                       #  207   0x31a65  1      
  callq ._Unwind_Resume                                                     #  208   0x31a66  5      
.L_31ce0:                                                                   #        0x31a6b  0      
  movl %eax, %ebx                                                           #  209   0x31a6b  2      
  movl $0x10030cf0, %edi                                                    #  210   0x31a6d  5      
  nop                                                                       #  211   0x31a72  1      
  nop                                                                       #  212   0x31a73  1      
  callq .__cxa_guard_abort                                                  #  213   0x31a74  5      
  movl %ebx, %edi                                                           #  214   0x31a79  2      
  nop                                                                       #  215   0x31a7b  1      
  nop                                                                       #  216   0x31a7c  1      
  callq ._Unwind_Resume                                                     #  217   0x31a7d  5      
  jmpq .L_31ca0                                                             #  218   0x31a82  5      
  nop                                                                       #  219   0x31a87  1      
  nop                                                                       #  220   0x31a88  1      
  jmpq .L_31ce0                                                             #  221   0x31a89  5      
  nop                                                                       #  222   0x31a8e  1      
  nop                                                                       #  223   0x31a8f  1      
                                                                                                     
.size _ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE, .-_ZN2pp7FileRef5QueryERKNS_28CompletionCallbackWithOutputI11PP_FileInfoEE

