  .text
  .globl __sflush_r
  .type __sflush_r, @function

#! file-offset 0x7a880
#! rip-offset  0x7a880
#! capacity    1056 bytes

# Text                           #  Line  RIP      Bytes  
.__sflush_r:                     #        0x7a880  0      
  pushq %r14                     #  1     0x7a880  3      
  movl %edi, %r14d               #  2     0x7a883  3      
  pushq %r13                     #  3     0x7a886  3      
  pushq %r12                     #  4     0x7a889  3      
  pushq %rbx                     #  5     0x7a88c  2      
  movl %esi, %ebx                #  6     0x7a88e  2      
  subl $0x8, %esp                #  7     0x7a890  3      
  addq %r15, %rsp                #  8     0x7a893  3      
  movl %ebx, %ebx                #  9     0x7a896  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  10    0x7a898  6      
  movswl %ax, %edx               #  11    0x7a89e  3      
  testb $0x8, %dl                #  12    0x7a8a1  3      
  jne .L_7aa60                   #  13    0x7a8a4  6      
  movl %ebx, %ebx                #  14    0x7a8aa  2      
  movl 0x4(%r15,%rbx,1), %r8d    #  15    0x7a8ac  5      
  orb $0x8, %ah                  #  16    0x7a8b1  3      
  movl %ebx, %ebx                #  17    0x7a8b4  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  18    0x7a8b6  6      
  testl %r8d, %r8d               #  19    0x7a8bc  3      
  nop                            #  20    0x7a8bf  1      
  jle .L_7ab40                   #  21    0x7a8c0  6      
  nop                            #  22    0x7a8c6  1      
  nop                            #  23    0x7a8c7  1      
.L_7a8e0:                        #        0x7a8c8  0      
  movl %ebx, %ebx                #  24    0x7a8c8  2      
  movl 0x28(%r15,%rbx,1), %esi   #  25    0x7a8ca  5      
  testl %esi, %esi               #  26    0x7a8cf  2      
  je .L_7ab60                    #  27    0x7a8d1  6      
  movl %ebx, %ebx                #  28    0x7a8d7  2      
  movswl 0xc(%r15,%rbx,1), %eax  #  29    0x7a8d9  6      
  movl %r14d, %r14d              #  30    0x7a8df  3      
  movl (%r15,%r14,1), %r12d      #  31    0x7a8e2  4      
  xchgw %ax, %ax                 #  32    0x7a8e6  3      
  movl %r14d, %r14d              #  33    0x7a8e9  3      
  movl $0x0, (%r15,%r14,1)       #  34    0x7a8ec  8      
  testb $0x10, %ah               #  35    0x7a8f4  3      
  je .L_7aba0                    #  36    0x7a8f7  6      
  movl %ebx, %ebx                #  37    0x7a8fd  2      
  movl 0x50(%r15,%rbx,1), %edx   #  38    0x7a8ff  5      
  nop                            #  39    0x7a904  1      
.L_7a920:                        #        0x7a905  0      
  testb $0x4, %al                #  40    0x7a905  2      
  je .L_7a940                    #  41    0x7a907  6      
  movl %ebx, %ebx                #  42    0x7a90d  2      
  movl 0x30(%r15,%rbx,1), %ecx   #  43    0x7a90f  5      
  movl %ebx, %ebx                #  44    0x7a914  2      
  subl 0x4(%r15,%rbx,1), %edx    #  45    0x7a916  5      
  testl %ecx, %ecx               #  46    0x7a91b  2      
  je .L_7a940                    #  47    0x7a91d  6      
  movl %ebx, %ebx                #  48    0x7a923  2      
  subl 0x3c(%r15,%rbx,1), %edx   #  49    0x7a925  5      
  nop                            #  50    0x7a92a  1      
.L_7a940:                        #        0x7a92b  0      
  movl %ebx, %ebx                #  51    0x7a92b  2      
  movl 0x28(%r15,%rbx,1), %r8d   #  52    0x7a92d  5      
  xorl %ecx, %ecx                #  53    0x7a932  2      
  movl %ebx, %ebx                #  54    0x7a934  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  55    0x7a936  5      
  movl %r14d, %edi               #  56    0x7a93b  3      
  nop                            #  57    0x7a93e  1      
  andl $0xffffffe0, %r8d         #  58    0x7a93f  7      
  addq %r15, %r8                 #  59    0x7a946  3      
  callq %r8                      #  60    0x7a949  3      
  cmpl $0xffffffff, %eax         #  61    0x7a94c  5      
  je .L_7ac00                    #  62    0x7a951  6      
  nop                            #  63    0x7a957  1      
  nop                            #  64    0x7a958  1      
.L_7a980:                        #        0x7a959  0      
  movl %ebx, %ebx                #  65    0x7a959  2      
  movzwl 0xc(%r15,%rbx,1), %edx  #  66    0x7a95b  6      
  movl %ebx, %ebx                #  67    0x7a961  2      
  movl 0x10(%r15,%rbx,1), %ecx   #  68    0x7a963  5      
  movl %ebx, %ebx                #  69    0x7a968  2      
  movl $0x0, 0x4(%r15,%rbx,1)    #  70    0x7a96a  9      
  movl %ebx, %ebx                #  71    0x7a973  2      
  movl %ecx, (%r15,%rbx,1)       #  72    0x7a975  4      
  andb $0xf7, %dh                #  73    0x7a979  3      
  movl %ebx, %ebx                #  74    0x7a97c  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  75    0x7a97e  6      
  andb $0x10, %dh                #  76    0x7a984  3      
  je .L_7a9e0                    #  77    0x7a987  6      
  cmpl $0xffffffff, %eax         #  78    0x7a98d  5      
  je .L_7ab80                    #  79    0x7a992  6      
  nop                            #  80    0x7a998  1      
.L_7a9c0:                        #        0x7a999  0      
  cltq                           #  81    0x7a999  2      
  movl %ebx, %ebx                #  82    0x7a99b  2      
  movq %rax, 0x50(%r15,%rbx,1)   #  83    0x7a99d  5      
  nop                            #  84    0x7a9a2  1      
  nop                            #  85    0x7a9a3  1      
.L_7a9e0:                        #        0x7a9a4  0      
  movl %ebx, %ebx                #  86    0x7a9a4  2      
  movl 0x30(%r15,%rbx,1), %esi   #  87    0x7a9a6  5      
  movl %r14d, %r14d              #  88    0x7a9ab  3      
  movl %r12d, (%r15,%r14,1)      #  89    0x7a9ae  4      
  testq %rsi, %rsi               #  90    0x7a9b2  3      
  je .L_7ab60                    #  91    0x7a9b5  6      
  leal 0x40(%rbx), %eax          #  92    0x7a9bb  3      
  cmpl %esi, %eax                #  93    0x7a9be  2      
  nop                            #  94    0x7a9c0  1      
  je .L_7aa20                    #  95    0x7a9c1  6      
  movl %r14d, %edi               #  96    0x7a9c7  3      
  nop                            #  97    0x7a9ca  1      
  nop                            #  98    0x7a9cb  1      
  callq ._free_r                 #  99    0x7a9cc  5      
.L_7aa20:                        #        0x7a9d1  0      
  movl %ebx, %ebx                #  100   0x7a9d1  2      
  movl $0x0, 0x30(%r15,%rbx,1)   #  101   0x7a9d3  9      
  addl $0x8, %esp                #  102   0x7a9dc  3      
  addq %r15, %rsp                #  103   0x7a9df  3      
  xorl %eax, %eax                #  104   0x7a9e2  2      
  popq %rbx                      #  105   0x7a9e4  2      
  popq %r12                      #  106   0x7a9e6  3      
  popq %r13                      #  107   0x7a9e9  3      
  popq %r14                      #  108   0x7a9ec  3      
  popq %r11                      #  109   0x7a9ef  3      
  nop                            #  110   0x7a9f2  1      
  andl $0xffffffe0, %r11d        #  111   0x7a9f3  7      
  addq %r15, %r11                #  112   0x7a9fa  3      
  jmpq %r11                      #  113   0x7a9fd  3      
  nop                            #  114   0x7aa00  1      
  nop                            #  115   0x7aa01  1      
.L_7aa60:                        #        0x7aa02  0      
  movl %ebx, %ebx                #  116   0x7aa02  2      
  movl 0x10(%r15,%rbx,1), %r13d  #  117   0x7aa04  5      
  testq %r13, %r13               #  118   0x7aa09  3      
  je .L_7ab60                    #  119   0x7aa0c  6      
  movl %ebx, %ebx                #  120   0x7aa12  2      
  movl (%r15,%rbx,1), %r12d      #  121   0x7aa14  4      
  xorl %eax, %eax                #  122   0x7aa18  2      
  movl %ebx, %ebx                #  123   0x7aa1a  2      
  movl %r13d, (%r15,%rbx,1)      #  124   0x7aa1c  4      
  xchgw %ax, %ax                 #  125   0x7aa20  3      
  subl %r13d, %r12d              #  126   0x7aa23  3      
  andl $0x3, %edx                #  127   0x7aa26  3      
  jne .L_7aaa0                   #  128   0x7aa29  6      
  movl %ebx, %ebx                #  129   0x7aa2f  2      
  movl 0x14(%r15,%rbx,1), %eax   #  130   0x7aa31  5      
  xchgw %ax, %ax                 #  131   0x7aa36  3      
  nop                            #  132   0x7aa39  1      
.L_7aaa0:                        #        0x7aa3a  0      
  testl %r12d, %r12d             #  133   0x7aa3a  3      
  movl %ebx, %ebx                #  134   0x7aa3d  2      
  movl %eax, 0x8(%r15,%rbx,1)    #  135   0x7aa3f  5      
  jg .L_7aae0                    #  136   0x7aa44  6      
  jmpq .L_7ab60                  #  137   0x7aa4a  5      
  nop                            #  138   0x7aa4f  1      
.L_7aac0:                        #        0x7aa50  0      
  subl %eax, %r12d               #  139   0x7aa50  3      
  testl %r12d, %r12d             #  140   0x7aa53  3      
  jle .L_7ab60                   #  141   0x7aa56  6      
  leal (%rax,%r13,1), %r13d      #  142   0x7aa5c  4      
  nop                            #  143   0x7aa60  1      
  nop                            #  144   0x7aa61  1      
.L_7aae0:                        #        0x7aa62  0      
  movl %ebx, %ebx                #  145   0x7aa62  2      
  movl 0x24(%r15,%rbx,1), %eax   #  146   0x7aa64  5      
  movl %ebx, %ebx                #  147   0x7aa69  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  148   0x7aa6b  5      
  movl %r12d, %ecx               #  149   0x7aa70  3      
  movl %r13d, %edx               #  150   0x7aa73  3      
  movl %r14d, %edi               #  151   0x7aa76  3      
  nop                            #  152   0x7aa79  1      
  andl $0xffffffe0, %eax         #  153   0x7aa7a  5      
  addq %r15, %rax                #  154   0x7aa7f  3      
  callq %rax                     #  155   0x7aa82  2      
  testl %eax, %eax               #  156   0x7aa84  2      
  jg .L_7aac0                    #  157   0x7aa86  6      
  movl %ebx, %ebx                #  158   0x7aa8c  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  159   0x7aa8e  7      
  movl $0xffffffff, %eax         #  160   0x7aa95  5      
  nop                            #  161   0x7aa9a  1      
.L_7ab20:                        #        0x7aa9b  0      
  addl $0x8, %esp                #  162   0x7aa9b  3      
  addq %r15, %rsp                #  163   0x7aa9e  3      
  popq %rbx                      #  164   0x7aaa1  2      
  popq %r12                      #  165   0x7aaa3  3      
  popq %r13                      #  166   0x7aaa6  3      
  popq %r14                      #  167   0x7aaa9  3      
  popq %r11                      #  168   0x7aaac  3      
  andl $0xffffffe0, %r11d        #  169   0x7aaaf  7      
  addq %r15, %r11                #  170   0x7aab6  3      
  jmpq %r11                      #  171   0x7aab9  3      
  nop                            #  172   0x7aabc  1      
.L_7ab40:                        #        0x7aabd  0      
  movl %ebx, %ebx                #  173   0x7aabd  2      
  movl 0x3c(%r15,%rbx,1), %edi   #  174   0x7aabf  5      
  testl %edi, %edi               #  175   0x7aac4  2      
  jg .L_7a8e0                    #  176   0x7aac6  6      
  xchgw %ax, %ax                 #  177   0x7aacc  3      
  nop                            #  178   0x7aacf  1      
.L_7ab60:                        #        0x7aad0  0      
  addl $0x8, %esp                #  179   0x7aad0  3      
  addq %r15, %rsp                #  180   0x7aad3  3      
  xorl %eax, %eax                #  181   0x7aad6  2      
  popq %rbx                      #  182   0x7aad8  2      
  popq %r12                      #  183   0x7aada  3      
  popq %r13                      #  184   0x7aadd  3      
  popq %r14                      #  185   0x7aae0  3      
  popq %r11                      #  186   0x7aae3  3      
  andl $0xffffffe0, %r11d        #  187   0x7aae6  7      
  addq %r15, %r11                #  188   0x7aaed  3      
  jmpq %r11                      #  189   0x7aaf0  3      
  nop                            #  190   0x7aaf3  1      
.L_7ab80:                        #        0x7aaf4  0      
  movl %r14d, %r14d              #  191   0x7aaf4  3      
  movl (%r15,%r14,1), %edx       #  192   0x7aaf7  4      
  testl %edx, %edx               #  193   0x7aafb  2      
  jne .L_7a9e0                   #  194   0x7aafd  6      
  jmpq .L_7a9c0                  #  195   0x7ab03  5      
  nop                            #  196   0x7ab08  1      
.L_7aba0:                        #        0x7ab09  0      
  movl %ebx, %ebx                #  197   0x7ab09  2      
  movl 0x28(%r15,%rbx,1), %eax   #  198   0x7ab0b  5      
  xorl %edx, %edx                #  199   0x7ab10  2      
  movl %ebx, %ebx                #  200   0x7ab12  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  201   0x7ab14  5      
  movl $0x1, %ecx                #  202   0x7ab19  5      
  movl %r14d, %edi               #  203   0x7ab1e  3      
  andl $0xffffffe0, %eax         #  204   0x7ab21  5      
  addq %r15, %rax                #  205   0x7ab26  3      
  callq %rax                     #  206   0x7ab29  2      
  cmpl $0xffffffff, %eax         #  207   0x7ab2b  5      
  movl %eax, %edx                #  208   0x7ab30  2      
  je .L_7ac40                    #  209   0x7ab32  6      
  nop                            #  210   0x7ab38  1      
  nop                            #  211   0x7ab39  1      
.L_7abe0:                        #        0x7ab3a  0      
  movl %ebx, %ebx                #  212   0x7ab3a  2      
  movswl 0xc(%r15,%rbx,1), %eax  #  213   0x7ab3c  6      
  jmpq .L_7a920                  #  214   0x7ab42  5      
  nop                            #  215   0x7ab47  1      
  nop                            #  216   0x7ab48  1      
.L_7ac00:                        #        0x7ab49  0      
  movl %r14d, %r14d              #  217   0x7ab49  3      
  movl (%r15,%r14,1), %edx       #  218   0x7ab4c  4      
  testl %edx, %edx               #  219   0x7ab50  2      
  je .L_7a980                    #  220   0x7ab52  6      
  cmpl $0x1d, %edx               #  221   0x7ab58  3      
  je .L_7a980                    #  222   0x7ab5b  6      
  cmpl $0x16, %edx               #  223   0x7ab61  3      
  nop                            #  224   0x7ab64  1      
  je .L_7a980                    #  225   0x7ab65  6      
  movl %ebx, %ebx                #  226   0x7ab6b  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  227   0x7ab6d  7      
  jmpq .L_7ab20                  #  228   0x7ab74  5      
  nop                            #  229   0x7ab79  1      
.L_7ac40:                        #        0x7ab7a  0      
  movl %r14d, %r14d              #  230   0x7ab7a  3      
  movl (%r15,%r14,1), %eax       #  231   0x7ab7d  4      
  testl %eax, %eax               #  232   0x7ab81  2      
  je .L_7abe0                    #  233   0x7ab83  6      
  cmpl $0x16, %eax               #  234   0x7ab89  3      
  je .L_7ac80                    #  235   0x7ab8c  6      
  cmpl $0x1d, %eax               #  236   0x7ab92  3      
  je .L_7ac80                    #  237   0x7ab95  6      
  movl %ebx, %ebx                #  238   0x7ab9b  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  239   0x7ab9d  7      
  movl %edx, %eax                #  240   0x7aba4  2      
  jmpq .L_7ab20                  #  241   0x7aba6  5      
  nop                            #  242   0x7abab  1      
  nop                            #  243   0x7abac  1      
.L_7ac80:                        #        0x7abad  0      
  movl %r14d, %r14d              #  244   0x7abad  3      
  movl %r12d, (%r15,%r14,1)      #  245   0x7abb0  4      
  xorl %eax, %eax                #  246   0x7abb4  2      
  jmpq .L_7ab20                  #  247   0x7abb6  5      
  nop                            #  248   0x7abbb  1      
  nop                            #  249   0x7abbc  1      
                                                          
.size __sflush_r, .-__sflush_r

