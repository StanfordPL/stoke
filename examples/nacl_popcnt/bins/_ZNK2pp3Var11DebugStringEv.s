  .text
  .globl _ZNK2pp3Var11DebugStringEv
  .type _ZNK2pp3Var11DebugStringEv, @function

#! file-offset 0x2a760
#! rip-offset  0x2a760
#! capacity    1312 bytes

# Text                            #  Line  RIP      Bytes  
._ZNK2pp3Var11DebugStringEv:      #        0x2a760  0      
  movl %esi, %esi                 #  1     0x2a760  2      
  movq %rbx, -0x18(%rsp)          #  2     0x2a762  5      
  movq %r12, -0x10(%rsp)          #  3     0x2a767  5      
  movq %r13, -0x8(%rsp)           #  4     0x2a76c  5      
  subl $0x138, %esp               #  5     0x2a771  6      
  addq %r15, %rsp                 #  6     0x2a777  3      
  nop                             #  7     0x2a77a  1      
  movl %esi, %esi                 #  8     0x2a77b  2      
  movl 0x8(%r15,%rsi,1), %eax     #  9     0x2a77d  5      
  movl %edi, %ebx                 #  10    0x2a782  2      
  testl %eax, %eax                #  11    0x2a784  2      
  je .L_2a800                     #  12    0x2a786  6      
  cmpl $0x1, %eax                 #  13    0x2a78c  3      
  je .L_2a920                     #  14    0x2a78f  6      
  cmpl $0x2, %eax                 #  15    0x2a795  3      
  je .L_2a880                     #  16    0x2a798  6      
  nop                             #  17    0x2a79e  1      
  cmpl $0x3, %eax                 #  18    0x2a79f  3      
  je .L_2a8e0                     #  19    0x2a7a2  6      
  cmpl $0x4, %eax                 #  20    0x2a7a8  3      
  je .L_2a960                     #  21    0x2a7ab  6      
  cmpl $0x5, %eax                 #  22    0x2a7b1  3      
  je .L_2a9c0                     #  23    0x2a7b4  6      
  cmpl $0x6, %eax                 #  24    0x2a7ba  3      
  xchgw %ax, %ax                  #  25    0x2a7bd  3      
  je .L_2aae0                     #  26    0x2a7c0  6      
  cmpl $0x7, %eax                 #  27    0x2a7c6  3      
  je .L_2ab20                     #  28    0x2a7c9  6      
  cmpl $0x8, %eax                 #  29    0x2a7cf  3      
  je .L_2ab60                     #  30    0x2a7d2  6      
  cmpl $0x9, %eax                 #  31    0x2a7d8  3      
  nop                             #  32    0x2a7db  1      
  je .L_2aba0                     #  33    0x2a7dc  6      
  cmpl $0xa, %eax                 #  34    0x2a7e2  3      
  je .L_2abe0                     #  35    0x2a7e5  6      
  movb $0x0, (%rsp)               #  36    0x2a7eb  4      
  movl %esp, %r12d                #  37    0x2a7ef  3      
  jmpq .L_2a820                   #  38    0x2a7f2  5      
  nop                             #  39    0x2a7f7  1      
.L_2a800:                         #        0x2a7f8  0      
  movl $0x1002052e, %edx          #  40    0x2a7f8  5      
  movl $0x100, %esi               #  41    0x2a7fd  5      
  movl %esp, %edi                 #  42    0x2a802  2      
  movl %esp, %r12d                #  43    0x2a804  3      
  nop                             #  44    0x2a807  1      
  callq .snprintf                 #  45    0x2a808  5      
.L_2a820:                         #        0x2a80d  0      
  leal 0x11f(%rsp), %edx          #  46    0x2a80d  7      
  movl %r12d, %esi                #  47    0x2a814  3      
  movl %ebx, %edi                 #  48    0x2a817  2      
  nop                             #  49    0x2a819  1      
  callq ._ZNSsC1EPKcRKSaIcE       #  50    0x2a81a  5      
  movl %ebx, %eax                 #  51    0x2a81f  2      
  movq 0x128(%rsp), %r12          #  52    0x2a821  8      
  movq 0x120(%rsp), %rbx          #  53    0x2a829  8      
  movq 0x130(%rsp), %r13          #  54    0x2a831  8      
  nop                             #  55    0x2a839  1      
  addl $0x138, %esp               #  56    0x2a83a  6      
  addq %r15, %rsp                 #  57    0x2a840  3      
  popq %r11                       #  58    0x2a843  3      
  andl $0xffffffe0, %r11d         #  59    0x2a846  7      
  addq %r15, %r11                 #  60    0x2a84d  3      
  jmpq %r11                       #  61    0x2a850  3      
  nop                             #  62    0x2a853  1      
.L_2a880:                         #        0x2a854  0      
  movl %esi, %esi                 #  63    0x2a854  2      
  movl 0x10(%r15,%rsi,1), %r10d   #  64    0x2a856  5      
  movl $0x10020552, %eax          #  65    0x2a85b  5      
  movl $0x10020547, %edx          #  66    0x2a860  5      
  movl $0x100, %esi               #  67    0x2a865  5      
  movl %esp, %edi                 #  68    0x2a86a  2      
  movl %esp, %r12d                #  69    0x2a86c  3      
  testl %r10d, %r10d              #  70    0x2a86f  3      
  xchgw %ax, %ax                  #  71    0x2a872  3      
  cmovneq %rax, %rdx              #  72    0x2a875  4      
  xorl %eax, %eax                 #  73    0x2a879  2      
  nop                             #  74    0x2a87b  1      
  nop                             #  75    0x2a87c  1      
  callq .snprintf                 #  76    0x2a87d  5      
  jmpq .L_2a820                   #  77    0x2a882  5      
  nop                             #  78    0x2a887  1      
  nop                             #  79    0x2a888  1      
.L_2a8e0:                         #        0x2a889  0      
  movl %esi, %esi                 #  80    0x2a889  2      
  movl 0x10(%r15,%rsi,1), %ecx    #  81    0x2a88b  5      
  movl $0x1002055c, %edx          #  82    0x2a890  5      
  movl $0x100, %esi               #  83    0x2a895  5      
  movl %esp, %edi                 #  84    0x2a89a  2      
  xorl %eax, %eax                 #  85    0x2a89c  2      
  movl %esp, %r12d                #  86    0x2a89e  3      
  nop                             #  87    0x2a8a1  1      
  callq .snprintf                 #  88    0x2a8a2  5      
  jmpq .L_2a820                   #  89    0x2a8a7  5      
  nop                             #  90    0x2a8ac  1      
  nop                             #  91    0x2a8ad  1      
.L_2a920:                         #        0x2a8ae  0      
  movl $0x1002053d, %edx          #  92    0x2a8ae  5      
  movl $0x100, %esi               #  93    0x2a8b3  5      
  movl %esp, %edi                 #  94    0x2a8b8  2      
  xorl %eax, %eax                 #  95    0x2a8ba  2      
  movl %esp, %r12d                #  96    0x2a8bc  3      
  nop                             #  97    0x2a8bf  1      
  callq .snprintf                 #  98    0x2a8c0  5      
  jmpq .L_2a820                   #  99    0x2a8c5  5      
  nop                             #  100   0x2a8ca  1      
  nop                             #  101   0x2a8cb  1      
.L_2a960:                         #        0x2a8cc  0      
  movl %esi, %esi                 #  102   0x2a8cc  2      
  movsd 0x10(%r15,%rsi,1), %xmm0  #  103   0x2a8ce  7      
  movl $0x10020564, %edx          #  104   0x2a8d5  5      
  movl $0x100, %esi               #  105   0x2a8da  5      
  movl %esp, %edi                 #  106   0x2a8df  2      
  movl $0x1, %eax                 #  107   0x2a8e1  5      
  movl %esp, %r12d                #  108   0x2a8e6  3      
  nop                             #  109   0x2a8e9  1      
  nop                             #  110   0x2a8ea  1      
  nop                             #  111   0x2a8eb  1      
  callq .snprintf                 #  112   0x2a8ec  5      
  jmpq .L_2a820                   #  113   0x2a8f1  5      
  nop                             #  114   0x2a8f6  1      
  nop                             #  115   0x2a8f7  1      
.L_2a9c0:                         #        0x2a8f8  0      
  leal 0x110(%rsp), %r13d         #  116   0x2a8f8  8      
  movq $0x277325273c726156, %r9   #  117   0x2a900  10     
  movw $0x3e, 0x108(%rsp)         #  118   0x2a90a  10     
  nop                             #  119   0x2a914  1      
  movq %r9, 0x100(%rsp)           #  120   0x2a915  8      
  movl %r13d, %edi                #  121   0x2a91d  3      
  nop                             #  122   0x2a920  1      
  nop                             #  123   0x2a921  1      
  callq ._ZNK2pp3Var8AsStringEv   #  124   0x2a922  5      
  movl 0x110(%rsp), %ecx          #  125   0x2a927  7      
  leal -0xc(%rcx), %eax           #  126   0x2a92e  3      
  movl %eax, %eax                 #  127   0x2a931  2      
  cmpl $0xf8, (%r15,%rax,1)       #  128   0x2a933  5      
  jbe .L_2aa80                    #  129   0x2a938  6      
  xorl %edx, %edx                 #  130   0x2a93e  2      
  movl $0xf5, %esi                #  131   0x2a940  5      
  movl %r13d, %edi                #  132   0x2a945  3      
  nop                             #  133   0x2a948  1      
  nop                             #  134   0x2a949  1      
  callq ._ZNSs6resizeEjc          #  135   0x2a94a  5      
  movl $0x3, %edx                 #  136   0x2a94f  5      
  movl $0x1002056c, %esi          #  137   0x2a954  5      
  movl %r13d, %edi                #  138   0x2a959  3      
  nop                             #  139   0x2a95c  1      
  callq ._ZNSs6appendEPKcj        #  140   0x2a95d  5      
  movl 0x110(%rsp), %ecx          #  141   0x2a962  7      
  nop                             #  142   0x2a969  1      
  nop                             #  143   0x2a96a  1      
.L_2aa80:                         #        0x2a96b  0      
  leal 0x100(%rsp), %edx          #  144   0x2a96b  7      
  movl $0x100, %esi               #  145   0x2a972  5      
  movl %esp, %edi                 #  146   0x2a977  2      
  xorl %eax, %eax                 #  147   0x2a979  2      
  movl %esp, %r12d                #  148   0x2a97b  3      
  nop                             #  149   0x2a97e  1      
  callq .snprintf                 #  150   0x2a97f  5      
  movl %r13d, %edi                #  151   0x2a984  3      
  nop                             #  152   0x2a987  1      
  nop                             #  153   0x2a988  1      
  callq ._ZNSsD1Ev                #  154   0x2a989  5      
  jmpq .L_2a820                   #  155   0x2a98e  5      
  nop                             #  156   0x2a993  1      
  nop                             #  157   0x2a994  1      
.L_2aae0:                         #        0x2a995  0      
  movl $0x10020570, %edx          #  158   0x2a995  5      
  movl $0x100, %esi               #  159   0x2a99a  5      
  movl %esp, %edi                 #  160   0x2a99f  2      
  xorl %eax, %eax                 #  161   0x2a9a1  2      
  movl %esp, %r12d                #  162   0x2a9a3  3      
  nop                             #  163   0x2a9a6  1      
  callq .snprintf                 #  164   0x2a9a7  5      
  jmpq .L_2a820                   #  165   0x2a9ac  5      
  nop                             #  166   0x2a9b1  1      
  nop                             #  167   0x2a9b2  1      
.L_2ab20:                         #        0x2a9b3  0      
  movl $0x1002057c, %edx          #  168   0x2a9b3  5      
  movl $0x100, %esi               #  169   0x2a9b8  5      
  movl %esp, %edi                 #  170   0x2a9bd  2      
  xorl %eax, %eax                 #  171   0x2a9bf  2      
  movl %esp, %r12d                #  172   0x2a9c1  3      
  nop                             #  173   0x2a9c4  1      
  callq .snprintf                 #  174   0x2a9c5  5      
  jmpq .L_2a820                   #  175   0x2a9ca  5      
  nop                             #  176   0x2a9cf  1      
  nop                             #  177   0x2a9d0  1      
.L_2ab60:                         #        0x2a9d1  0      
  movl $0x10020587, %edx          #  178   0x2a9d1  5      
  movl $0x100, %esi               #  179   0x2a9d6  5      
  movl %esp, %edi                 #  180   0x2a9db  2      
  xorl %eax, %eax                 #  181   0x2a9dd  2      
  movl %esp, %r12d                #  182   0x2a9df  3      
  nop                             #  183   0x2a9e2  1      
  callq .snprintf                 #  184   0x2a9e3  5      
  jmpq .L_2a820                   #  185   0x2a9e8  5      
  nop                             #  186   0x2a9ed  1      
  nop                             #  187   0x2a9ee  1      
.L_2aba0:                         #        0x2a9ef  0      
  movl $0x10020597, %edx          #  188   0x2a9ef  5      
  movl $0x100, %esi               #  189   0x2a9f4  5      
  movl %esp, %edi                 #  190   0x2a9f9  2      
  xorl %eax, %eax                 #  191   0x2a9fb  2      
  movl %esp, %r12d                #  192   0x2a9fd  3      
  nop                             #  193   0x2aa00  1      
  callq .snprintf                 #  194   0x2aa01  5      
  jmpq .L_2a820                   #  195   0x2aa06  5      
  nop                             #  196   0x2aa0b  1      
  nop                             #  197   0x2aa0c  1      
.L_2abe0:                         #        0x2aa0d  0      
  movl $0x100205a9, %edx          #  198   0x2aa0d  5      
  movl $0x100, %esi               #  199   0x2aa12  5      
  movl %esp, %edi                 #  200   0x2aa17  2      
  xorl %eax, %eax                 #  201   0x2aa19  2      
  movl %esp, %r12d                #  202   0x2aa1b  3      
  nop                             #  203   0x2aa1e  1      
  callq .snprintf                 #  204   0x2aa1f  5      
  jmpq .L_2a820                   #  205   0x2aa24  5      
  nop                             #  206   0x2aa29  1      
  nop                             #  207   0x2aa2a  1      
  movl %eax, %ebx                 #  208   0x2aa2b  2      
  movl %r13d, %edi                #  209   0x2aa2d  3      
  nop                             #  210   0x2aa30  1      
  nop                             #  211   0x2aa31  1      
  callq ._ZNSsD1Ev                #  212   0x2aa32  5      
  movl %ebx, %edi                 #  213   0x2aa37  2      
  nop                             #  214   0x2aa39  1      
  nop                             #  215   0x2aa3a  1      
  callq ._Unwind_Resume           #  216   0x2aa3b  5      
  movl %eax, %edi                 #  217   0x2aa40  2      
  nop                             #  218   0x2aa42  1      
  nop                             #  219   0x2aa43  1      
  callq ._Unwind_Resume           #  220   0x2aa44  5      
                                                           
.size _ZNK2pp3Var11DebugStringEv, .-_ZNK2pp3Var11DebugStringEv

