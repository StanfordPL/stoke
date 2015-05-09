  .text
  .globl _ZNK2pp3Var11DebugStringEv
  .type _ZNK2pp3Var11DebugStringEv, @function

#! file-offset 0x2a6c0
#! rip-offset  0x2a6c0
#! capacity    1312 bytes

# Text                            #  Line  RIP      Bytes  
._ZNK2pp3Var11DebugStringEv:      #        0x2a6c0  0      
  movl %esi, %esi                 #  1     0x2a6c0  2      
  movq %rbx, -0x18(%rsp)          #  2     0x2a6c2  5      
  movq %r12, -0x10(%rsp)          #  3     0x2a6c7  5      
  movq %r13, -0x8(%rsp)           #  4     0x2a6cc  5      
  subl $0x138, %esp               #  5     0x2a6d1  6      
  addq %r15, %rsp                 #  6     0x2a6d7  3      
  nop                             #  7     0x2a6da  1      
  movl %esi, %esi                 #  8     0x2a6db  2      
  movl 0x8(%r15,%rsi,1), %eax     #  9     0x2a6dd  5      
  movl %edi, %ebx                 #  10    0x2a6e2  2      
  testl %eax, %eax                #  11    0x2a6e4  2      
  je .L_2a760                     #  12    0x2a6e6  6      
  cmpl $0x1, %eax                 #  13    0x2a6ec  3      
  je .L_2a880                     #  14    0x2a6ef  6      
  cmpl $0x2, %eax                 #  15    0x2a6f5  3      
  je .L_2a7e0                     #  16    0x2a6f8  6      
  nop                             #  17    0x2a6fe  1      
  cmpl $0x3, %eax                 #  18    0x2a6ff  3      
  je .L_2a840                     #  19    0x2a702  6      
  cmpl $0x4, %eax                 #  20    0x2a708  3      
  je .L_2a8c0                     #  21    0x2a70b  6      
  cmpl $0x5, %eax                 #  22    0x2a711  3      
  je .L_2a920                     #  23    0x2a714  6      
  cmpl $0x6, %eax                 #  24    0x2a71a  3      
  xchgw %ax, %ax                  #  25    0x2a71d  3      
  je .L_2aa40                     #  26    0x2a720  6      
  cmpl $0x7, %eax                 #  27    0x2a726  3      
  je .L_2aa80                     #  28    0x2a729  6      
  cmpl $0x8, %eax                 #  29    0x2a72f  3      
  je .L_2aac0                     #  30    0x2a732  6      
  cmpl $0x9, %eax                 #  31    0x2a738  3      
  nop                             #  32    0x2a73b  1      
  je .L_2ab00                     #  33    0x2a73c  6      
  cmpl $0xa, %eax                 #  34    0x2a742  3      
  je .L_2ab40                     #  35    0x2a745  6      
  movb $0x0, (%rsp)               #  36    0x2a74b  4      
  movl %esp, %r12d                #  37    0x2a74f  3      
  jmpq .L_2a780                   #  38    0x2a752  5      
  nop                             #  39    0x2a757  1      
.L_2a760:                         #        0x2a758  0      
  movl $0x1002052e, %edx          #  40    0x2a758  5      
  movl $0x100, %esi               #  41    0x2a75d  5      
  movl %esp, %edi                 #  42    0x2a762  2      
  movl %esp, %r12d                #  43    0x2a764  3      
  nop                             #  44    0x2a767  1      
  callq .snprintf                 #  45    0x2a768  5      
.L_2a780:                         #        0x2a76d  0      
  leal 0x11f(%rsp), %edx          #  46    0x2a76d  7      
  movl %r12d, %esi                #  47    0x2a774  3      
  movl %ebx, %edi                 #  48    0x2a777  2      
  nop                             #  49    0x2a779  1      
  callq ._ZNSsC1EPKcRKSaIcE       #  50    0x2a77a  5      
  movl %ebx, %eax                 #  51    0x2a77f  2      
  movq 0x128(%rsp), %r12          #  52    0x2a781  8      
  movq 0x120(%rsp), %rbx          #  53    0x2a789  8      
  movq 0x130(%rsp), %r13          #  54    0x2a791  8      
  nop                             #  55    0x2a799  1      
  addl $0x138, %esp               #  56    0x2a79a  6      
  addq %r15, %rsp                 #  57    0x2a7a0  3      
  popq %r11                       #  58    0x2a7a3  3      
  andl $0xffffffe0, %r11d         #  59    0x2a7a6  7      
  addq %r15, %r11                 #  60    0x2a7ad  3      
  jmpq %r11                       #  61    0x2a7b0  3      
  nop                             #  62    0x2a7b3  1      
.L_2a7e0:                         #        0x2a7b4  0      
  movl %esi, %esi                 #  63    0x2a7b4  2      
  movl 0x10(%r15,%rsi,1), %r10d   #  64    0x2a7b6  5      
  movl $0x10020552, %eax          #  65    0x2a7bb  5      
  movl $0x10020547, %edx          #  66    0x2a7c0  5      
  movl $0x100, %esi               #  67    0x2a7c5  5      
  movl %esp, %edi                 #  68    0x2a7ca  2      
  movl %esp, %r12d                #  69    0x2a7cc  3      
  testl %r10d, %r10d              #  70    0x2a7cf  3      
  xchgw %ax, %ax                  #  71    0x2a7d2  3      
  cmovneq %rax, %rdx              #  72    0x2a7d5  4      
  xorl %eax, %eax                 #  73    0x2a7d9  2      
  nop                             #  74    0x2a7db  1      
  nop                             #  75    0x2a7dc  1      
  callq .snprintf                 #  76    0x2a7dd  5      
  jmpq .L_2a780                   #  77    0x2a7e2  5      
  nop                             #  78    0x2a7e7  1      
  nop                             #  79    0x2a7e8  1      
.L_2a840:                         #        0x2a7e9  0      
  movl %esi, %esi                 #  80    0x2a7e9  2      
  movl 0x10(%r15,%rsi,1), %ecx    #  81    0x2a7eb  5      
  movl $0x1002055c, %edx          #  82    0x2a7f0  5      
  movl $0x100, %esi               #  83    0x2a7f5  5      
  movl %esp, %edi                 #  84    0x2a7fa  2      
  xorl %eax, %eax                 #  85    0x2a7fc  2      
  movl %esp, %r12d                #  86    0x2a7fe  3      
  nop                             #  87    0x2a801  1      
  callq .snprintf                 #  88    0x2a802  5      
  jmpq .L_2a780                   #  89    0x2a807  5      
  nop                             #  90    0x2a80c  1      
  nop                             #  91    0x2a80d  1      
.L_2a880:                         #        0x2a80e  0      
  movl $0x1002053d, %edx          #  92    0x2a80e  5      
  movl $0x100, %esi               #  93    0x2a813  5      
  movl %esp, %edi                 #  94    0x2a818  2      
  xorl %eax, %eax                 #  95    0x2a81a  2      
  movl %esp, %r12d                #  96    0x2a81c  3      
  nop                             #  97    0x2a81f  1      
  callq .snprintf                 #  98    0x2a820  5      
  jmpq .L_2a780                   #  99    0x2a825  5      
  nop                             #  100   0x2a82a  1      
  nop                             #  101   0x2a82b  1      
.L_2a8c0:                         #        0x2a82c  0      
  movl %esi, %esi                 #  102   0x2a82c  2      
  movsd 0x10(%r15,%rsi,1), %xmm0  #  103   0x2a82e  7      
  movl $0x10020564, %edx          #  104   0x2a835  5      
  movl $0x100, %esi               #  105   0x2a83a  5      
  movl %esp, %edi                 #  106   0x2a83f  2      
  movl $0x1, %eax                 #  107   0x2a841  5      
  movl %esp, %r12d                #  108   0x2a846  3      
  nop                             #  109   0x2a849  1      
  nop                             #  110   0x2a84a  1      
  nop                             #  111   0x2a84b  1      
  callq .snprintf                 #  112   0x2a84c  5      
  jmpq .L_2a780                   #  113   0x2a851  5      
  nop                             #  114   0x2a856  1      
  nop                             #  115   0x2a857  1      
.L_2a920:                         #        0x2a858  0      
  leal 0x110(%rsp), %r13d         #  116   0x2a858  8      
  movq $0x277325273c726156, %r9   #  117   0x2a860  10     
  movw $0x3e, 0x108(%rsp)         #  118   0x2a86a  10     
  nop                             #  119   0x2a874  1      
  movq %r9, 0x100(%rsp)           #  120   0x2a875  8      
  movl %r13d, %edi                #  121   0x2a87d  3      
  nop                             #  122   0x2a880  1      
  nop                             #  123   0x2a881  1      
  callq ._ZNK2pp3Var8AsStringEv   #  124   0x2a882  5      
  movl 0x110(%rsp), %ecx          #  125   0x2a887  7      
  leal -0xc(%rcx), %eax           #  126   0x2a88e  3      
  movl %eax, %eax                 #  127   0x2a891  2      
  cmpl $0xf8, (%r15,%rax,1)       #  128   0x2a893  5      
  jbe .L_2a9e0                    #  129   0x2a898  6      
  xorl %edx, %edx                 #  130   0x2a89e  2      
  movl $0xf5, %esi                #  131   0x2a8a0  5      
  movl %r13d, %edi                #  132   0x2a8a5  3      
  nop                             #  133   0x2a8a8  1      
  nop                             #  134   0x2a8a9  1      
  callq ._ZNSs6resizeEjc          #  135   0x2a8aa  5      
  movl $0x3, %edx                 #  136   0x2a8af  5      
  movl $0x1002056c, %esi          #  137   0x2a8b4  5      
  movl %r13d, %edi                #  138   0x2a8b9  3      
  nop                             #  139   0x2a8bc  1      
  callq ._ZNSs6appendEPKcj        #  140   0x2a8bd  5      
  movl 0x110(%rsp), %ecx          #  141   0x2a8c2  7      
  nop                             #  142   0x2a8c9  1      
  nop                             #  143   0x2a8ca  1      
.L_2a9e0:                         #        0x2a8cb  0      
  leal 0x100(%rsp), %edx          #  144   0x2a8cb  7      
  movl $0x100, %esi               #  145   0x2a8d2  5      
  movl %esp, %edi                 #  146   0x2a8d7  2      
  xorl %eax, %eax                 #  147   0x2a8d9  2      
  movl %esp, %r12d                #  148   0x2a8db  3      
  nop                             #  149   0x2a8de  1      
  callq .snprintf                 #  150   0x2a8df  5      
  movl %r13d, %edi                #  151   0x2a8e4  3      
  nop                             #  152   0x2a8e7  1      
  nop                             #  153   0x2a8e8  1      
  callq ._ZNSsD1Ev                #  154   0x2a8e9  5      
  jmpq .L_2a780                   #  155   0x2a8ee  5      
  nop                             #  156   0x2a8f3  1      
  nop                             #  157   0x2a8f4  1      
.L_2aa40:                         #        0x2a8f5  0      
  movl $0x10020570, %edx          #  158   0x2a8f5  5      
  movl $0x100, %esi               #  159   0x2a8fa  5      
  movl %esp, %edi                 #  160   0x2a8ff  2      
  xorl %eax, %eax                 #  161   0x2a901  2      
  movl %esp, %r12d                #  162   0x2a903  3      
  nop                             #  163   0x2a906  1      
  callq .snprintf                 #  164   0x2a907  5      
  jmpq .L_2a780                   #  165   0x2a90c  5      
  nop                             #  166   0x2a911  1      
  nop                             #  167   0x2a912  1      
.L_2aa80:                         #        0x2a913  0      
  movl $0x1002057c, %edx          #  168   0x2a913  5      
  movl $0x100, %esi               #  169   0x2a918  5      
  movl %esp, %edi                 #  170   0x2a91d  2      
  xorl %eax, %eax                 #  171   0x2a91f  2      
  movl %esp, %r12d                #  172   0x2a921  3      
  nop                             #  173   0x2a924  1      
  callq .snprintf                 #  174   0x2a925  5      
  jmpq .L_2a780                   #  175   0x2a92a  5      
  nop                             #  176   0x2a92f  1      
  nop                             #  177   0x2a930  1      
.L_2aac0:                         #        0x2a931  0      
  movl $0x10020587, %edx          #  178   0x2a931  5      
  movl $0x100, %esi               #  179   0x2a936  5      
  movl %esp, %edi                 #  180   0x2a93b  2      
  xorl %eax, %eax                 #  181   0x2a93d  2      
  movl %esp, %r12d                #  182   0x2a93f  3      
  nop                             #  183   0x2a942  1      
  callq .snprintf                 #  184   0x2a943  5      
  jmpq .L_2a780                   #  185   0x2a948  5      
  nop                             #  186   0x2a94d  1      
  nop                             #  187   0x2a94e  1      
.L_2ab00:                         #        0x2a94f  0      
  movl $0x10020597, %edx          #  188   0x2a94f  5      
  movl $0x100, %esi               #  189   0x2a954  5      
  movl %esp, %edi                 #  190   0x2a959  2      
  xorl %eax, %eax                 #  191   0x2a95b  2      
  movl %esp, %r12d                #  192   0x2a95d  3      
  nop                             #  193   0x2a960  1      
  callq .snprintf                 #  194   0x2a961  5      
  jmpq .L_2a780                   #  195   0x2a966  5      
  nop                             #  196   0x2a96b  1      
  nop                             #  197   0x2a96c  1      
.L_2ab40:                         #        0x2a96d  0      
  movl $0x100205a9, %edx          #  198   0x2a96d  5      
  movl $0x100, %esi               #  199   0x2a972  5      
  movl %esp, %edi                 #  200   0x2a977  2      
  xorl %eax, %eax                 #  201   0x2a979  2      
  movl %esp, %r12d                #  202   0x2a97b  3      
  nop                             #  203   0x2a97e  1      
  callq .snprintf                 #  204   0x2a97f  5      
  jmpq .L_2a780                   #  205   0x2a984  5      
  nop                             #  206   0x2a989  1      
  nop                             #  207   0x2a98a  1      
  movl %eax, %ebx                 #  208   0x2a98b  2      
  movl %r13d, %edi                #  209   0x2a98d  3      
  nop                             #  210   0x2a990  1      
  nop                             #  211   0x2a991  1      
  callq ._ZNSsD1Ev                #  212   0x2a992  5      
  movl %ebx, %edi                 #  213   0x2a997  2      
  nop                             #  214   0x2a999  1      
  nop                             #  215   0x2a99a  1      
  callq ._Unwind_Resume           #  216   0x2a99b  5      
  movl %eax, %edi                 #  217   0x2a9a0  2      
  nop                             #  218   0x2a9a2  1      
  nop                             #  219   0x2a9a3  1      
  callq ._Unwind_Resume           #  220   0x2a9a4  5      
                                                           
.size _ZNK2pp3Var11DebugStringEv, .-_ZNK2pp3Var11DebugStringEv

