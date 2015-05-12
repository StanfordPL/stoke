  .text
  .globl _ZNK2pp3Var11DebugStringEv
  .type _ZNK2pp3Var11DebugStringEv, @function

#! file-offset 0x2a6e0
#! rip-offset  0x2a6e0
#! capacity    1312 bytes

# Text                            #  Line  RIP      Bytes  
._ZNK2pp3Var11DebugStringEv:      #        0x2a6e0  0      
  movl %esi, %esi                 #  1     0x2a6e0  2      
  movq %rbx, -0x18(%rsp)          #  2     0x2a6e2  5      
  movq %r12, -0x10(%rsp)          #  3     0x2a6e7  5      
  movq %r13, -0x8(%rsp)           #  4     0x2a6ec  5      
  subl $0x138, %esp               #  5     0x2a6f1  6      
  addq %r15, %rsp                 #  6     0x2a6f7  3      
  nop                             #  7     0x2a6fa  1      
  movl %esi, %esi                 #  8     0x2a6fb  2      
  movl 0x8(%r15,%rsi,1), %eax     #  9     0x2a6fd  5      
  movl %edi, %ebx                 #  10    0x2a702  2      
  testl %eax, %eax                #  11    0x2a704  2      
  je .L_2a780                     #  12    0x2a706  6      
  cmpl $0x1, %eax                 #  13    0x2a70c  3      
  je .L_2a8a0                     #  14    0x2a70f  6      
  cmpl $0x2, %eax                 #  15    0x2a715  3      
  je .L_2a800                     #  16    0x2a718  6      
  nop                             #  17    0x2a71e  1      
  cmpl $0x3, %eax                 #  18    0x2a71f  3      
  je .L_2a860                     #  19    0x2a722  6      
  cmpl $0x4, %eax                 #  20    0x2a728  3      
  je .L_2a8e0                     #  21    0x2a72b  6      
  cmpl $0x5, %eax                 #  22    0x2a731  3      
  je .L_2a940                     #  23    0x2a734  6      
  cmpl $0x6, %eax                 #  24    0x2a73a  3      
  xchgw %ax, %ax                  #  25    0x2a73d  3      
  je .L_2aa60                     #  26    0x2a740  6      
  cmpl $0x7, %eax                 #  27    0x2a746  3      
  je .L_2aaa0                     #  28    0x2a749  6      
  cmpl $0x8, %eax                 #  29    0x2a74f  3      
  je .L_2aae0                     #  30    0x2a752  6      
  cmpl $0x9, %eax                 #  31    0x2a758  3      
  nop                             #  32    0x2a75b  1      
  je .L_2ab20                     #  33    0x2a75c  6      
  cmpl $0xa, %eax                 #  34    0x2a762  3      
  je .L_2ab60                     #  35    0x2a765  6      
  movb $0x0, (%rsp)               #  36    0x2a76b  4      
  movl %esp, %r12d                #  37    0x2a76f  3      
  jmpq .L_2a7a0                   #  38    0x2a772  5      
  nop                             #  39    0x2a777  1      
.L_2a780:                         #        0x2a778  0      
  movl $0x1002052e, %edx          #  40    0x2a778  5      
  movl $0x100, %esi               #  41    0x2a77d  5      
  movl %esp, %edi                 #  42    0x2a782  2      
  movl %esp, %r12d                #  43    0x2a784  3      
  nop                             #  44    0x2a787  1      
  callq .snprintf                 #  45    0x2a788  5      
.L_2a7a0:                         #        0x2a78d  0      
  leal 0x11f(%rsp), %edx          #  46    0x2a78d  7      
  movl %r12d, %esi                #  47    0x2a794  3      
  movl %ebx, %edi                 #  48    0x2a797  2      
  nop                             #  49    0x2a799  1      
  callq ._ZNSsC1EPKcRKSaIcE       #  50    0x2a79a  5      
  movl %ebx, %eax                 #  51    0x2a79f  2      
  movq 0x128(%rsp), %r12          #  52    0x2a7a1  8      
  movq 0x120(%rsp), %rbx          #  53    0x2a7a9  8      
  movq 0x130(%rsp), %r13          #  54    0x2a7b1  8      
  nop                             #  55    0x2a7b9  1      
  addl $0x138, %esp               #  56    0x2a7ba  6      
  addq %r15, %rsp                 #  57    0x2a7c0  3      
  popq %r11                       #  58    0x2a7c3  3      
  andl $0xffffffe0, %r11d         #  59    0x2a7c6  7      
  addq %r15, %r11                 #  60    0x2a7cd  3      
  jmpq %r11                       #  61    0x2a7d0  3      
  nop                             #  62    0x2a7d3  1      
.L_2a800:                         #        0x2a7d4  0      
  movl %esi, %esi                 #  63    0x2a7d4  2      
  movl 0x10(%r15,%rsi,1), %r10d   #  64    0x2a7d6  5      
  movl $0x10020552, %eax          #  65    0x2a7db  5      
  movl $0x10020547, %edx          #  66    0x2a7e0  5      
  movl $0x100, %esi               #  67    0x2a7e5  5      
  movl %esp, %edi                 #  68    0x2a7ea  2      
  movl %esp, %r12d                #  69    0x2a7ec  3      
  testl %r10d, %r10d              #  70    0x2a7ef  3      
  xchgw %ax, %ax                  #  71    0x2a7f2  3      
  cmovneq %rax, %rdx              #  72    0x2a7f5  4      
  xorl %eax, %eax                 #  73    0x2a7f9  2      
  nop                             #  74    0x2a7fb  1      
  nop                             #  75    0x2a7fc  1      
  callq .snprintf                 #  76    0x2a7fd  5      
  jmpq .L_2a7a0                   #  77    0x2a802  5      
  nop                             #  78    0x2a807  1      
  nop                             #  79    0x2a808  1      
.L_2a860:                         #        0x2a809  0      
  movl %esi, %esi                 #  80    0x2a809  2      
  movl 0x10(%r15,%rsi,1), %ecx    #  81    0x2a80b  5      
  movl $0x1002055c, %edx          #  82    0x2a810  5      
  movl $0x100, %esi               #  83    0x2a815  5      
  movl %esp, %edi                 #  84    0x2a81a  2      
  xorl %eax, %eax                 #  85    0x2a81c  2      
  movl %esp, %r12d                #  86    0x2a81e  3      
  nop                             #  87    0x2a821  1      
  callq .snprintf                 #  88    0x2a822  5      
  jmpq .L_2a7a0                   #  89    0x2a827  5      
  nop                             #  90    0x2a82c  1      
  nop                             #  91    0x2a82d  1      
.L_2a8a0:                         #        0x2a82e  0      
  movl $0x1002053d, %edx          #  92    0x2a82e  5      
  movl $0x100, %esi               #  93    0x2a833  5      
  movl %esp, %edi                 #  94    0x2a838  2      
  xorl %eax, %eax                 #  95    0x2a83a  2      
  movl %esp, %r12d                #  96    0x2a83c  3      
  nop                             #  97    0x2a83f  1      
  callq .snprintf                 #  98    0x2a840  5      
  jmpq .L_2a7a0                   #  99    0x2a845  5      
  nop                             #  100   0x2a84a  1      
  nop                             #  101   0x2a84b  1      
.L_2a8e0:                         #        0x2a84c  0      
  movl %esi, %esi                 #  102   0x2a84c  2      
  movsd 0x10(%r15,%rsi,1), %xmm0  #  103   0x2a84e  7      
  movl $0x10020564, %edx          #  104   0x2a855  5      
  movl $0x100, %esi               #  105   0x2a85a  5      
  movl %esp, %edi                 #  106   0x2a85f  2      
  movl $0x1, %eax                 #  107   0x2a861  5      
  movl %esp, %r12d                #  108   0x2a866  3      
  nop                             #  109   0x2a869  1      
  nop                             #  110   0x2a86a  1      
  nop                             #  111   0x2a86b  1      
  callq .snprintf                 #  112   0x2a86c  5      
  jmpq .L_2a7a0                   #  113   0x2a871  5      
  nop                             #  114   0x2a876  1      
  nop                             #  115   0x2a877  1      
.L_2a940:                         #        0x2a878  0      
  leal 0x110(%rsp), %r13d         #  116   0x2a878  8      
  movq $0x277325273c726156, %r9   #  117   0x2a880  10     
  movw $0x3e, 0x108(%rsp)         #  118   0x2a88a  10     
  nop                             #  119   0x2a894  1      
  movq %r9, 0x100(%rsp)           #  120   0x2a895  8      
  movl %r13d, %edi                #  121   0x2a89d  3      
  nop                             #  122   0x2a8a0  1      
  nop                             #  123   0x2a8a1  1      
  callq ._ZNK2pp3Var8AsStringEv   #  124   0x2a8a2  5      
  movl 0x110(%rsp), %ecx          #  125   0x2a8a7  7      
  leal -0xc(%rcx), %eax           #  126   0x2a8ae  3      
  movl %eax, %eax                 #  127   0x2a8b1  2      
  cmpl $0xf8, (%r15,%rax,1)       #  128   0x2a8b3  5      
  jbe .L_2aa00                    #  129   0x2a8b8  6      
  xorl %edx, %edx                 #  130   0x2a8be  2      
  movl $0xf5, %esi                #  131   0x2a8c0  5      
  movl %r13d, %edi                #  132   0x2a8c5  3      
  nop                             #  133   0x2a8c8  1      
  nop                             #  134   0x2a8c9  1      
  callq ._ZNSs6resizeEjc          #  135   0x2a8ca  5      
  movl $0x3, %edx                 #  136   0x2a8cf  5      
  movl $0x1002056c, %esi          #  137   0x2a8d4  5      
  movl %r13d, %edi                #  138   0x2a8d9  3      
  nop                             #  139   0x2a8dc  1      
  callq ._ZNSs6appendEPKcj        #  140   0x2a8dd  5      
  movl 0x110(%rsp), %ecx          #  141   0x2a8e2  7      
  nop                             #  142   0x2a8e9  1      
  nop                             #  143   0x2a8ea  1      
.L_2aa00:                         #        0x2a8eb  0      
  leal 0x100(%rsp), %edx          #  144   0x2a8eb  7      
  movl $0x100, %esi               #  145   0x2a8f2  5      
  movl %esp, %edi                 #  146   0x2a8f7  2      
  xorl %eax, %eax                 #  147   0x2a8f9  2      
  movl %esp, %r12d                #  148   0x2a8fb  3      
  nop                             #  149   0x2a8fe  1      
  callq .snprintf                 #  150   0x2a8ff  5      
  movl %r13d, %edi                #  151   0x2a904  3      
  nop                             #  152   0x2a907  1      
  nop                             #  153   0x2a908  1      
  callq ._ZNSsD1Ev                #  154   0x2a909  5      
  jmpq .L_2a7a0                   #  155   0x2a90e  5      
  nop                             #  156   0x2a913  1      
  nop                             #  157   0x2a914  1      
.L_2aa60:                         #        0x2a915  0      
  movl $0x10020570, %edx          #  158   0x2a915  5      
  movl $0x100, %esi               #  159   0x2a91a  5      
  movl %esp, %edi                 #  160   0x2a91f  2      
  xorl %eax, %eax                 #  161   0x2a921  2      
  movl %esp, %r12d                #  162   0x2a923  3      
  nop                             #  163   0x2a926  1      
  callq .snprintf                 #  164   0x2a927  5      
  jmpq .L_2a7a0                   #  165   0x2a92c  5      
  nop                             #  166   0x2a931  1      
  nop                             #  167   0x2a932  1      
.L_2aaa0:                         #        0x2a933  0      
  movl $0x1002057c, %edx          #  168   0x2a933  5      
  movl $0x100, %esi               #  169   0x2a938  5      
  movl %esp, %edi                 #  170   0x2a93d  2      
  xorl %eax, %eax                 #  171   0x2a93f  2      
  movl %esp, %r12d                #  172   0x2a941  3      
  nop                             #  173   0x2a944  1      
  callq .snprintf                 #  174   0x2a945  5      
  jmpq .L_2a7a0                   #  175   0x2a94a  5      
  nop                             #  176   0x2a94f  1      
  nop                             #  177   0x2a950  1      
.L_2aae0:                         #        0x2a951  0      
  movl $0x10020587, %edx          #  178   0x2a951  5      
  movl $0x100, %esi               #  179   0x2a956  5      
  movl %esp, %edi                 #  180   0x2a95b  2      
  xorl %eax, %eax                 #  181   0x2a95d  2      
  movl %esp, %r12d                #  182   0x2a95f  3      
  nop                             #  183   0x2a962  1      
  callq .snprintf                 #  184   0x2a963  5      
  jmpq .L_2a7a0                   #  185   0x2a968  5      
  nop                             #  186   0x2a96d  1      
  nop                             #  187   0x2a96e  1      
.L_2ab20:                         #        0x2a96f  0      
  movl $0x10020597, %edx          #  188   0x2a96f  5      
  movl $0x100, %esi               #  189   0x2a974  5      
  movl %esp, %edi                 #  190   0x2a979  2      
  xorl %eax, %eax                 #  191   0x2a97b  2      
  movl %esp, %r12d                #  192   0x2a97d  3      
  nop                             #  193   0x2a980  1      
  callq .snprintf                 #  194   0x2a981  5      
  jmpq .L_2a7a0                   #  195   0x2a986  5      
  nop                             #  196   0x2a98b  1      
  nop                             #  197   0x2a98c  1      
.L_2ab60:                         #        0x2a98d  0      
  movl $0x100205a9, %edx          #  198   0x2a98d  5      
  movl $0x100, %esi               #  199   0x2a992  5      
  movl %esp, %edi                 #  200   0x2a997  2      
  xorl %eax, %eax                 #  201   0x2a999  2      
  movl %esp, %r12d                #  202   0x2a99b  3      
  nop                             #  203   0x2a99e  1      
  callq .snprintf                 #  204   0x2a99f  5      
  jmpq .L_2a7a0                   #  205   0x2a9a4  5      
  nop                             #  206   0x2a9a9  1      
  nop                             #  207   0x2a9aa  1      
  movl %eax, %ebx                 #  208   0x2a9ab  2      
  movl %r13d, %edi                #  209   0x2a9ad  3      
  nop                             #  210   0x2a9b0  1      
  nop                             #  211   0x2a9b1  1      
  callq ._ZNSsD1Ev                #  212   0x2a9b2  5      
  movl %ebx, %edi                 #  213   0x2a9b7  2      
  nop                             #  214   0x2a9b9  1      
  nop                             #  215   0x2a9ba  1      
  callq ._Unwind_Resume           #  216   0x2a9bb  5      
  movl %eax, %edi                 #  217   0x2a9c0  2      
  nop                             #  218   0x2a9c2  1      
  nop                             #  219   0x2a9c3  1      
  callq ._Unwind_Resume           #  220   0x2a9c4  5      
                                                           
.size _ZNK2pp3Var11DebugStringEv, .-_ZNK2pp3Var11DebugStringEv

