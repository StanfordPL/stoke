  .text
  .globl __sflush_r
  .type __sflush_r, @function

#! file-offset 0x7a7e0
#! rip-offset  0x7a7e0
#! capacity    1056 bytes

# Text                           #  Line  RIP      Bytes  
.__sflush_r:                     #        0x7a7e0  0      
  pushq %r14                     #  1     0x7a7e0  3      
  movl %edi, %r14d               #  2     0x7a7e3  3      
  pushq %r13                     #  3     0x7a7e6  3      
  pushq %r12                     #  4     0x7a7e9  3      
  pushq %rbx                     #  5     0x7a7ec  2      
  movl %esi, %ebx                #  6     0x7a7ee  2      
  subl $0x8, %esp                #  7     0x7a7f0  3      
  addq %r15, %rsp                #  8     0x7a7f3  3      
  movl %ebx, %ebx                #  9     0x7a7f6  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  10    0x7a7f8  6      
  movswl %ax, %edx               #  11    0x7a7fe  3      
  testb $0x8, %dl                #  12    0x7a801  3      
  jne .L_7a9c0                   #  13    0x7a804  6      
  movl %ebx, %ebx                #  14    0x7a80a  2      
  movl 0x4(%r15,%rbx,1), %r8d    #  15    0x7a80c  5      
  orb $0x8, %ah                  #  16    0x7a811  3      
  movl %ebx, %ebx                #  17    0x7a814  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  18    0x7a816  6      
  testl %r8d, %r8d               #  19    0x7a81c  3      
  nop                            #  20    0x7a81f  1      
  jle .L_7aaa0                   #  21    0x7a820  6      
  nop                            #  22    0x7a826  1      
  nop                            #  23    0x7a827  1      
.L_7a840:                        #        0x7a828  0      
  movl %ebx, %ebx                #  24    0x7a828  2      
  movl 0x28(%r15,%rbx,1), %esi   #  25    0x7a82a  5      
  testl %esi, %esi               #  26    0x7a82f  2      
  je .L_7aac0                    #  27    0x7a831  6      
  movl %ebx, %ebx                #  28    0x7a837  2      
  movswl 0xc(%r15,%rbx,1), %eax  #  29    0x7a839  6      
  movl %r14d, %r14d              #  30    0x7a83f  3      
  movl (%r15,%r14,1), %r12d      #  31    0x7a842  4      
  xchgw %ax, %ax                 #  32    0x7a846  3      
  movl %r14d, %r14d              #  33    0x7a849  3      
  movl $0x0, (%r15,%r14,1)       #  34    0x7a84c  8      
  testb $0x10, %ah               #  35    0x7a854  3      
  je .L_7ab00                    #  36    0x7a857  6      
  movl %ebx, %ebx                #  37    0x7a85d  2      
  movl 0x50(%r15,%rbx,1), %edx   #  38    0x7a85f  5      
  nop                            #  39    0x7a864  1      
.L_7a880:                        #        0x7a865  0      
  testb $0x4, %al                #  40    0x7a865  2      
  je .L_7a8a0                    #  41    0x7a867  6      
  movl %ebx, %ebx                #  42    0x7a86d  2      
  movl 0x30(%r15,%rbx,1), %ecx   #  43    0x7a86f  5      
  movl %ebx, %ebx                #  44    0x7a874  2      
  subl 0x4(%r15,%rbx,1), %edx    #  45    0x7a876  5      
  testl %ecx, %ecx               #  46    0x7a87b  2      
  je .L_7a8a0                    #  47    0x7a87d  6      
  movl %ebx, %ebx                #  48    0x7a883  2      
  subl 0x3c(%r15,%rbx,1), %edx   #  49    0x7a885  5      
  nop                            #  50    0x7a88a  1      
.L_7a8a0:                        #        0x7a88b  0      
  movl %ebx, %ebx                #  51    0x7a88b  2      
  movl 0x28(%r15,%rbx,1), %r8d   #  52    0x7a88d  5      
  xorl %ecx, %ecx                #  53    0x7a892  2      
  movl %ebx, %ebx                #  54    0x7a894  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  55    0x7a896  5      
  movl %r14d, %edi               #  56    0x7a89b  3      
  nop                            #  57    0x7a89e  1      
  andl $0xffffffe0, %r8d         #  58    0x7a89f  7      
  addq %r15, %r8                 #  59    0x7a8a6  3      
  callq %r8                      #  60    0x7a8a9  3      
  cmpl $0xffffffff, %eax         #  61    0x7a8ac  5      
  je .L_7ab60                    #  62    0x7a8b1  6      
  nop                            #  63    0x7a8b7  1      
  nop                            #  64    0x7a8b8  1      
.L_7a8e0:                        #        0x7a8b9  0      
  movl %ebx, %ebx                #  65    0x7a8b9  2      
  movzwl 0xc(%r15,%rbx,1), %edx  #  66    0x7a8bb  6      
  movl %ebx, %ebx                #  67    0x7a8c1  2      
  movl 0x10(%r15,%rbx,1), %ecx   #  68    0x7a8c3  5      
  movl %ebx, %ebx                #  69    0x7a8c8  2      
  movl $0x0, 0x4(%r15,%rbx,1)    #  70    0x7a8ca  9      
  movl %ebx, %ebx                #  71    0x7a8d3  2      
  movl %ecx, (%r15,%rbx,1)       #  72    0x7a8d5  4      
  andb $0xf7, %dh                #  73    0x7a8d9  3      
  movl %ebx, %ebx                #  74    0x7a8dc  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  75    0x7a8de  6      
  andb $0x10, %dh                #  76    0x7a8e4  3      
  je .L_7a940                    #  77    0x7a8e7  6      
  cmpl $0xffffffff, %eax         #  78    0x7a8ed  5      
  je .L_7aae0                    #  79    0x7a8f2  6      
  nop                            #  80    0x7a8f8  1      
.L_7a920:                        #        0x7a8f9  0      
  cltq                           #  81    0x7a8f9  2      
  movl %ebx, %ebx                #  82    0x7a8fb  2      
  movq %rax, 0x50(%r15,%rbx,1)   #  83    0x7a8fd  5      
  nop                            #  84    0x7a902  1      
  nop                            #  85    0x7a903  1      
.L_7a940:                        #        0x7a904  0      
  movl %ebx, %ebx                #  86    0x7a904  2      
  movl 0x30(%r15,%rbx,1), %esi   #  87    0x7a906  5      
  movl %r14d, %r14d              #  88    0x7a90b  3      
  movl %r12d, (%r15,%r14,1)      #  89    0x7a90e  4      
  testq %rsi, %rsi               #  90    0x7a912  3      
  je .L_7aac0                    #  91    0x7a915  6      
  leal 0x40(%rbx), %eax          #  92    0x7a91b  3      
  cmpl %esi, %eax                #  93    0x7a91e  2      
  nop                            #  94    0x7a920  1      
  je .L_7a980                    #  95    0x7a921  6      
  movl %r14d, %edi               #  96    0x7a927  3      
  nop                            #  97    0x7a92a  1      
  nop                            #  98    0x7a92b  1      
  callq ._free_r                 #  99    0x7a92c  5      
.L_7a980:                        #        0x7a931  0      
  movl %ebx, %ebx                #  100   0x7a931  2      
  movl $0x0, 0x30(%r15,%rbx,1)   #  101   0x7a933  9      
  addl $0x8, %esp                #  102   0x7a93c  3      
  addq %r15, %rsp                #  103   0x7a93f  3      
  xorl %eax, %eax                #  104   0x7a942  2      
  popq %rbx                      #  105   0x7a944  2      
  popq %r12                      #  106   0x7a946  3      
  popq %r13                      #  107   0x7a949  3      
  popq %r14                      #  108   0x7a94c  3      
  popq %r11                      #  109   0x7a94f  3      
  nop                            #  110   0x7a952  1      
  andl $0xffffffe0, %r11d        #  111   0x7a953  7      
  addq %r15, %r11                #  112   0x7a95a  3      
  jmpq %r11                      #  113   0x7a95d  3      
  nop                            #  114   0x7a960  1      
  nop                            #  115   0x7a961  1      
.L_7a9c0:                        #        0x7a962  0      
  movl %ebx, %ebx                #  116   0x7a962  2      
  movl 0x10(%r15,%rbx,1), %r13d  #  117   0x7a964  5      
  testq %r13, %r13               #  118   0x7a969  3      
  je .L_7aac0                    #  119   0x7a96c  6      
  movl %ebx, %ebx                #  120   0x7a972  2      
  movl (%r15,%rbx,1), %r12d      #  121   0x7a974  4      
  xorl %eax, %eax                #  122   0x7a978  2      
  movl %ebx, %ebx                #  123   0x7a97a  2      
  movl %r13d, (%r15,%rbx,1)      #  124   0x7a97c  4      
  xchgw %ax, %ax                 #  125   0x7a980  3      
  subl %r13d, %r12d              #  126   0x7a983  3      
  andl $0x3, %edx                #  127   0x7a986  3      
  jne .L_7aa00                   #  128   0x7a989  6      
  movl %ebx, %ebx                #  129   0x7a98f  2      
  movl 0x14(%r15,%rbx,1), %eax   #  130   0x7a991  5      
  xchgw %ax, %ax                 #  131   0x7a996  3      
  nop                            #  132   0x7a999  1      
.L_7aa00:                        #        0x7a99a  0      
  testl %r12d, %r12d             #  133   0x7a99a  3      
  movl %ebx, %ebx                #  134   0x7a99d  2      
  movl %eax, 0x8(%r15,%rbx,1)    #  135   0x7a99f  5      
  jg .L_7aa40                    #  136   0x7a9a4  6      
  jmpq .L_7aac0                  #  137   0x7a9aa  5      
  nop                            #  138   0x7a9af  1      
.L_7aa20:                        #        0x7a9b0  0      
  subl %eax, %r12d               #  139   0x7a9b0  3      
  testl %r12d, %r12d             #  140   0x7a9b3  3      
  jle .L_7aac0                   #  141   0x7a9b6  6      
  leal (%rax,%r13,1), %r13d      #  142   0x7a9bc  4      
  nop                            #  143   0x7a9c0  1      
  nop                            #  144   0x7a9c1  1      
.L_7aa40:                        #        0x7a9c2  0      
  movl %ebx, %ebx                #  145   0x7a9c2  2      
  movl 0x24(%r15,%rbx,1), %eax   #  146   0x7a9c4  5      
  movl %ebx, %ebx                #  147   0x7a9c9  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  148   0x7a9cb  5      
  movl %r12d, %ecx               #  149   0x7a9d0  3      
  movl %r13d, %edx               #  150   0x7a9d3  3      
  movl %r14d, %edi               #  151   0x7a9d6  3      
  nop                            #  152   0x7a9d9  1      
  andl $0xffffffe0, %eax         #  153   0x7a9da  5      
  addq %r15, %rax                #  154   0x7a9df  3      
  callq %rax                     #  155   0x7a9e2  2      
  testl %eax, %eax               #  156   0x7a9e4  2      
  jg .L_7aa20                    #  157   0x7a9e6  6      
  movl %ebx, %ebx                #  158   0x7a9ec  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  159   0x7a9ee  7      
  movl $0xffffffff, %eax         #  160   0x7a9f5  5      
  nop                            #  161   0x7a9fa  1      
.L_7aa80:                        #        0x7a9fb  0      
  addl $0x8, %esp                #  162   0x7a9fb  3      
  addq %r15, %rsp                #  163   0x7a9fe  3      
  popq %rbx                      #  164   0x7aa01  2      
  popq %r12                      #  165   0x7aa03  3      
  popq %r13                      #  166   0x7aa06  3      
  popq %r14                      #  167   0x7aa09  3      
  popq %r11                      #  168   0x7aa0c  3      
  andl $0xffffffe0, %r11d        #  169   0x7aa0f  7      
  addq %r15, %r11                #  170   0x7aa16  3      
  jmpq %r11                      #  171   0x7aa19  3      
  nop                            #  172   0x7aa1c  1      
.L_7aaa0:                        #        0x7aa1d  0      
  movl %ebx, %ebx                #  173   0x7aa1d  2      
  movl 0x3c(%r15,%rbx,1), %edi   #  174   0x7aa1f  5      
  testl %edi, %edi               #  175   0x7aa24  2      
  jg .L_7a840                    #  176   0x7aa26  6      
  xchgw %ax, %ax                 #  177   0x7aa2c  3      
  nop                            #  178   0x7aa2f  1      
.L_7aac0:                        #        0x7aa30  0      
  addl $0x8, %esp                #  179   0x7aa30  3      
  addq %r15, %rsp                #  180   0x7aa33  3      
  xorl %eax, %eax                #  181   0x7aa36  2      
  popq %rbx                      #  182   0x7aa38  2      
  popq %r12                      #  183   0x7aa3a  3      
  popq %r13                      #  184   0x7aa3d  3      
  popq %r14                      #  185   0x7aa40  3      
  popq %r11                      #  186   0x7aa43  3      
  andl $0xffffffe0, %r11d        #  187   0x7aa46  7      
  addq %r15, %r11                #  188   0x7aa4d  3      
  jmpq %r11                      #  189   0x7aa50  3      
  nop                            #  190   0x7aa53  1      
.L_7aae0:                        #        0x7aa54  0      
  movl %r14d, %r14d              #  191   0x7aa54  3      
  movl (%r15,%r14,1), %edx       #  192   0x7aa57  4      
  testl %edx, %edx               #  193   0x7aa5b  2      
  jne .L_7a940                   #  194   0x7aa5d  6      
  jmpq .L_7a920                  #  195   0x7aa63  5      
  nop                            #  196   0x7aa68  1      
.L_7ab00:                        #        0x7aa69  0      
  movl %ebx, %ebx                #  197   0x7aa69  2      
  movl 0x28(%r15,%rbx,1), %eax   #  198   0x7aa6b  5      
  xorl %edx, %edx                #  199   0x7aa70  2      
  movl %ebx, %ebx                #  200   0x7aa72  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  201   0x7aa74  5      
  movl $0x1, %ecx                #  202   0x7aa79  5      
  movl %r14d, %edi               #  203   0x7aa7e  3      
  andl $0xffffffe0, %eax         #  204   0x7aa81  5      
  addq %r15, %rax                #  205   0x7aa86  3      
  callq %rax                     #  206   0x7aa89  2      
  cmpl $0xffffffff, %eax         #  207   0x7aa8b  5      
  movl %eax, %edx                #  208   0x7aa90  2      
  je .L_7aba0                    #  209   0x7aa92  6      
  nop                            #  210   0x7aa98  1      
  nop                            #  211   0x7aa99  1      
.L_7ab40:                        #        0x7aa9a  0      
  movl %ebx, %ebx                #  212   0x7aa9a  2      
  movswl 0xc(%r15,%rbx,1), %eax  #  213   0x7aa9c  6      
  jmpq .L_7a880                  #  214   0x7aaa2  5      
  nop                            #  215   0x7aaa7  1      
  nop                            #  216   0x7aaa8  1      
.L_7ab60:                        #        0x7aaa9  0      
  movl %r14d, %r14d              #  217   0x7aaa9  3      
  movl (%r15,%r14,1), %edx       #  218   0x7aaac  4      
  testl %edx, %edx               #  219   0x7aab0  2      
  je .L_7a8e0                    #  220   0x7aab2  6      
  cmpl $0x1d, %edx               #  221   0x7aab8  3      
  je .L_7a8e0                    #  222   0x7aabb  6      
  cmpl $0x16, %edx               #  223   0x7aac1  3      
  nop                            #  224   0x7aac4  1      
  je .L_7a8e0                    #  225   0x7aac5  6      
  movl %ebx, %ebx                #  226   0x7aacb  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  227   0x7aacd  7      
  jmpq .L_7aa80                  #  228   0x7aad4  5      
  nop                            #  229   0x7aad9  1      
.L_7aba0:                        #        0x7aada  0      
  movl %r14d, %r14d              #  230   0x7aada  3      
  movl (%r15,%r14,1), %eax       #  231   0x7aadd  4      
  testl %eax, %eax               #  232   0x7aae1  2      
  je .L_7ab40                    #  233   0x7aae3  6      
  cmpl $0x16, %eax               #  234   0x7aae9  3      
  je .L_7abe0                    #  235   0x7aaec  6      
  cmpl $0x1d, %eax               #  236   0x7aaf2  3      
  je .L_7abe0                    #  237   0x7aaf5  6      
  movl %ebx, %ebx                #  238   0x7aafb  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  239   0x7aafd  7      
  movl %edx, %eax                #  240   0x7ab04  2      
  jmpq .L_7aa80                  #  241   0x7ab06  5      
  nop                            #  242   0x7ab0b  1      
  nop                            #  243   0x7ab0c  1      
.L_7abe0:                        #        0x7ab0d  0      
  movl %r14d, %r14d              #  244   0x7ab0d  3      
  movl %r12d, (%r15,%r14,1)      #  245   0x7ab10  4      
  xorl %eax, %eax                #  246   0x7ab14  2      
  jmpq .L_7aa80                  #  247   0x7ab16  5      
  nop                            #  248   0x7ab1b  1      
  nop                            #  249   0x7ab1c  1      
                                                          
.size __sflush_r, .-__sflush_r

