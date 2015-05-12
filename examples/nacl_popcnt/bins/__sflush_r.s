  .text
  .globl __sflush_r
  .type __sflush_r, @function

#! file-offset 0x7a800
#! rip-offset  0x7a800
#! capacity    1056 bytes

# Text                           #  Line  RIP      Bytes  
.__sflush_r:                     #        0x7a800  0      
  pushq %r14                     #  1     0x7a800  3      
  movl %edi, %r14d               #  2     0x7a803  3      
  pushq %r13                     #  3     0x7a806  3      
  pushq %r12                     #  4     0x7a809  3      
  pushq %rbx                     #  5     0x7a80c  2      
  movl %esi, %ebx                #  6     0x7a80e  2      
  subl $0x8, %esp                #  7     0x7a810  3      
  addq %r15, %rsp                #  8     0x7a813  3      
  movl %ebx, %ebx                #  9     0x7a816  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  10    0x7a818  6      
  movswl %ax, %edx               #  11    0x7a81e  3      
  testb $0x8, %dl                #  12    0x7a821  3      
  jne .L_7a9e0                   #  13    0x7a824  6      
  movl %ebx, %ebx                #  14    0x7a82a  2      
  movl 0x4(%r15,%rbx,1), %r8d    #  15    0x7a82c  5      
  orb $0x8, %ah                  #  16    0x7a831  3      
  movl %ebx, %ebx                #  17    0x7a834  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  18    0x7a836  6      
  testl %r8d, %r8d               #  19    0x7a83c  3      
  nop                            #  20    0x7a83f  1      
  jle .L_7aac0                   #  21    0x7a840  6      
  nop                            #  22    0x7a846  1      
  nop                            #  23    0x7a847  1      
.L_7a860:                        #        0x7a848  0      
  movl %ebx, %ebx                #  24    0x7a848  2      
  movl 0x28(%r15,%rbx,1), %esi   #  25    0x7a84a  5      
  testl %esi, %esi               #  26    0x7a84f  2      
  je .L_7aae0                    #  27    0x7a851  6      
  movl %ebx, %ebx                #  28    0x7a857  2      
  movswl 0xc(%r15,%rbx,1), %eax  #  29    0x7a859  6      
  movl %r14d, %r14d              #  30    0x7a85f  3      
  movl (%r15,%r14,1), %r12d      #  31    0x7a862  4      
  xchgw %ax, %ax                 #  32    0x7a866  3      
  movl %r14d, %r14d              #  33    0x7a869  3      
  movl $0x0, (%r15,%r14,1)       #  34    0x7a86c  8      
  testb $0x10, %ah               #  35    0x7a874  3      
  je .L_7ab20                    #  36    0x7a877  6      
  movl %ebx, %ebx                #  37    0x7a87d  2      
  movl 0x50(%r15,%rbx,1), %edx   #  38    0x7a87f  5      
  nop                            #  39    0x7a884  1      
.L_7a8a0:                        #        0x7a885  0      
  testb $0x4, %al                #  40    0x7a885  2      
  je .L_7a8c0                    #  41    0x7a887  6      
  movl %ebx, %ebx                #  42    0x7a88d  2      
  movl 0x30(%r15,%rbx,1), %ecx   #  43    0x7a88f  5      
  movl %ebx, %ebx                #  44    0x7a894  2      
  subl 0x4(%r15,%rbx,1), %edx    #  45    0x7a896  5      
  testl %ecx, %ecx               #  46    0x7a89b  2      
  je .L_7a8c0                    #  47    0x7a89d  6      
  movl %ebx, %ebx                #  48    0x7a8a3  2      
  subl 0x3c(%r15,%rbx,1), %edx   #  49    0x7a8a5  5      
  nop                            #  50    0x7a8aa  1      
.L_7a8c0:                        #        0x7a8ab  0      
  movl %ebx, %ebx                #  51    0x7a8ab  2      
  movl 0x28(%r15,%rbx,1), %r8d   #  52    0x7a8ad  5      
  xorl %ecx, %ecx                #  53    0x7a8b2  2      
  movl %ebx, %ebx                #  54    0x7a8b4  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  55    0x7a8b6  5      
  movl %r14d, %edi               #  56    0x7a8bb  3      
  nop                            #  57    0x7a8be  1      
  andl $0xffffffe0, %r8d         #  58    0x7a8bf  7      
  addq %r15, %r8                 #  59    0x7a8c6  3      
  callq %r8                      #  60    0x7a8c9  3      
  cmpl $0xffffffff, %eax         #  61    0x7a8cc  5      
  je .L_7ab80                    #  62    0x7a8d1  6      
  nop                            #  63    0x7a8d7  1      
  nop                            #  64    0x7a8d8  1      
.L_7a900:                        #        0x7a8d9  0      
  movl %ebx, %ebx                #  65    0x7a8d9  2      
  movzwl 0xc(%r15,%rbx,1), %edx  #  66    0x7a8db  6      
  movl %ebx, %ebx                #  67    0x7a8e1  2      
  movl 0x10(%r15,%rbx,1), %ecx   #  68    0x7a8e3  5      
  movl %ebx, %ebx                #  69    0x7a8e8  2      
  movl $0x0, 0x4(%r15,%rbx,1)    #  70    0x7a8ea  9      
  movl %ebx, %ebx                #  71    0x7a8f3  2      
  movl %ecx, (%r15,%rbx,1)       #  72    0x7a8f5  4      
  andb $0xf7, %dh                #  73    0x7a8f9  3      
  movl %ebx, %ebx                #  74    0x7a8fc  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  75    0x7a8fe  6      
  andb $0x10, %dh                #  76    0x7a904  3      
  je .L_7a960                    #  77    0x7a907  6      
  cmpl $0xffffffff, %eax         #  78    0x7a90d  5      
  je .L_7ab00                    #  79    0x7a912  6      
  nop                            #  80    0x7a918  1      
.L_7a940:                        #        0x7a919  0      
  cltq                           #  81    0x7a919  2      
  movl %ebx, %ebx                #  82    0x7a91b  2      
  movq %rax, 0x50(%r15,%rbx,1)   #  83    0x7a91d  5      
  nop                            #  84    0x7a922  1      
  nop                            #  85    0x7a923  1      
.L_7a960:                        #        0x7a924  0      
  movl %ebx, %ebx                #  86    0x7a924  2      
  movl 0x30(%r15,%rbx,1), %esi   #  87    0x7a926  5      
  movl %r14d, %r14d              #  88    0x7a92b  3      
  movl %r12d, (%r15,%r14,1)      #  89    0x7a92e  4      
  testq %rsi, %rsi               #  90    0x7a932  3      
  je .L_7aae0                    #  91    0x7a935  6      
  leal 0x40(%rbx), %eax          #  92    0x7a93b  3      
  cmpl %esi, %eax                #  93    0x7a93e  2      
  nop                            #  94    0x7a940  1      
  je .L_7a9a0                    #  95    0x7a941  6      
  movl %r14d, %edi               #  96    0x7a947  3      
  nop                            #  97    0x7a94a  1      
  nop                            #  98    0x7a94b  1      
  callq ._free_r                 #  99    0x7a94c  5      
.L_7a9a0:                        #        0x7a951  0      
  movl %ebx, %ebx                #  100   0x7a951  2      
  movl $0x0, 0x30(%r15,%rbx,1)   #  101   0x7a953  9      
  addl $0x8, %esp                #  102   0x7a95c  3      
  addq %r15, %rsp                #  103   0x7a95f  3      
  xorl %eax, %eax                #  104   0x7a962  2      
  popq %rbx                      #  105   0x7a964  2      
  popq %r12                      #  106   0x7a966  3      
  popq %r13                      #  107   0x7a969  3      
  popq %r14                      #  108   0x7a96c  3      
  popq %r11                      #  109   0x7a96f  3      
  nop                            #  110   0x7a972  1      
  andl $0xffffffe0, %r11d        #  111   0x7a973  7      
  addq %r15, %r11                #  112   0x7a97a  3      
  jmpq %r11                      #  113   0x7a97d  3      
  nop                            #  114   0x7a980  1      
  nop                            #  115   0x7a981  1      
.L_7a9e0:                        #        0x7a982  0      
  movl %ebx, %ebx                #  116   0x7a982  2      
  movl 0x10(%r15,%rbx,1), %r13d  #  117   0x7a984  5      
  testq %r13, %r13               #  118   0x7a989  3      
  je .L_7aae0                    #  119   0x7a98c  6      
  movl %ebx, %ebx                #  120   0x7a992  2      
  movl (%r15,%rbx,1), %r12d      #  121   0x7a994  4      
  xorl %eax, %eax                #  122   0x7a998  2      
  movl %ebx, %ebx                #  123   0x7a99a  2      
  movl %r13d, (%r15,%rbx,1)      #  124   0x7a99c  4      
  xchgw %ax, %ax                 #  125   0x7a9a0  3      
  subl %r13d, %r12d              #  126   0x7a9a3  3      
  andl $0x3, %edx                #  127   0x7a9a6  3      
  jne .L_7aa20                   #  128   0x7a9a9  6      
  movl %ebx, %ebx                #  129   0x7a9af  2      
  movl 0x14(%r15,%rbx,1), %eax   #  130   0x7a9b1  5      
  xchgw %ax, %ax                 #  131   0x7a9b6  3      
  nop                            #  132   0x7a9b9  1      
.L_7aa20:                        #        0x7a9ba  0      
  testl %r12d, %r12d             #  133   0x7a9ba  3      
  movl %ebx, %ebx                #  134   0x7a9bd  2      
  movl %eax, 0x8(%r15,%rbx,1)    #  135   0x7a9bf  5      
  jg .L_7aa60                    #  136   0x7a9c4  6      
  jmpq .L_7aae0                  #  137   0x7a9ca  5      
  nop                            #  138   0x7a9cf  1      
.L_7aa40:                        #        0x7a9d0  0      
  subl %eax, %r12d               #  139   0x7a9d0  3      
  testl %r12d, %r12d             #  140   0x7a9d3  3      
  jle .L_7aae0                   #  141   0x7a9d6  6      
  leal (%rax,%r13,1), %r13d      #  142   0x7a9dc  4      
  nop                            #  143   0x7a9e0  1      
  nop                            #  144   0x7a9e1  1      
.L_7aa60:                        #        0x7a9e2  0      
  movl %ebx, %ebx                #  145   0x7a9e2  2      
  movl 0x24(%r15,%rbx,1), %eax   #  146   0x7a9e4  5      
  movl %ebx, %ebx                #  147   0x7a9e9  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  148   0x7a9eb  5      
  movl %r12d, %ecx               #  149   0x7a9f0  3      
  movl %r13d, %edx               #  150   0x7a9f3  3      
  movl %r14d, %edi               #  151   0x7a9f6  3      
  nop                            #  152   0x7a9f9  1      
  andl $0xffffffe0, %eax         #  153   0x7a9fa  5      
  addq %r15, %rax                #  154   0x7a9ff  3      
  callq %rax                     #  155   0x7aa02  2      
  testl %eax, %eax               #  156   0x7aa04  2      
  jg .L_7aa40                    #  157   0x7aa06  6      
  movl %ebx, %ebx                #  158   0x7aa0c  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  159   0x7aa0e  7      
  movl $0xffffffff, %eax         #  160   0x7aa15  5      
  nop                            #  161   0x7aa1a  1      
.L_7aaa0:                        #        0x7aa1b  0      
  addl $0x8, %esp                #  162   0x7aa1b  3      
  addq %r15, %rsp                #  163   0x7aa1e  3      
  popq %rbx                      #  164   0x7aa21  2      
  popq %r12                      #  165   0x7aa23  3      
  popq %r13                      #  166   0x7aa26  3      
  popq %r14                      #  167   0x7aa29  3      
  popq %r11                      #  168   0x7aa2c  3      
  andl $0xffffffe0, %r11d        #  169   0x7aa2f  7      
  addq %r15, %r11                #  170   0x7aa36  3      
  jmpq %r11                      #  171   0x7aa39  3      
  nop                            #  172   0x7aa3c  1      
.L_7aac0:                        #        0x7aa3d  0      
  movl %ebx, %ebx                #  173   0x7aa3d  2      
  movl 0x3c(%r15,%rbx,1), %edi   #  174   0x7aa3f  5      
  testl %edi, %edi               #  175   0x7aa44  2      
  jg .L_7a860                    #  176   0x7aa46  6      
  xchgw %ax, %ax                 #  177   0x7aa4c  3      
  nop                            #  178   0x7aa4f  1      
.L_7aae0:                        #        0x7aa50  0      
  addl $0x8, %esp                #  179   0x7aa50  3      
  addq %r15, %rsp                #  180   0x7aa53  3      
  xorl %eax, %eax                #  181   0x7aa56  2      
  popq %rbx                      #  182   0x7aa58  2      
  popq %r12                      #  183   0x7aa5a  3      
  popq %r13                      #  184   0x7aa5d  3      
  popq %r14                      #  185   0x7aa60  3      
  popq %r11                      #  186   0x7aa63  3      
  andl $0xffffffe0, %r11d        #  187   0x7aa66  7      
  addq %r15, %r11                #  188   0x7aa6d  3      
  jmpq %r11                      #  189   0x7aa70  3      
  nop                            #  190   0x7aa73  1      
.L_7ab00:                        #        0x7aa74  0      
  movl %r14d, %r14d              #  191   0x7aa74  3      
  movl (%r15,%r14,1), %edx       #  192   0x7aa77  4      
  testl %edx, %edx               #  193   0x7aa7b  2      
  jne .L_7a960                   #  194   0x7aa7d  6      
  jmpq .L_7a940                  #  195   0x7aa83  5      
  nop                            #  196   0x7aa88  1      
.L_7ab20:                        #        0x7aa89  0      
  movl %ebx, %ebx                #  197   0x7aa89  2      
  movl 0x28(%r15,%rbx,1), %eax   #  198   0x7aa8b  5      
  xorl %edx, %edx                #  199   0x7aa90  2      
  movl %ebx, %ebx                #  200   0x7aa92  2      
  movl 0x1c(%r15,%rbx,1), %esi   #  201   0x7aa94  5      
  movl $0x1, %ecx                #  202   0x7aa99  5      
  movl %r14d, %edi               #  203   0x7aa9e  3      
  andl $0xffffffe0, %eax         #  204   0x7aaa1  5      
  addq %r15, %rax                #  205   0x7aaa6  3      
  callq %rax                     #  206   0x7aaa9  2      
  cmpl $0xffffffff, %eax         #  207   0x7aaab  5      
  movl %eax, %edx                #  208   0x7aab0  2      
  je .L_7abc0                    #  209   0x7aab2  6      
  nop                            #  210   0x7aab8  1      
  nop                            #  211   0x7aab9  1      
.L_7ab60:                        #        0x7aaba  0      
  movl %ebx, %ebx                #  212   0x7aaba  2      
  movswl 0xc(%r15,%rbx,1), %eax  #  213   0x7aabc  6      
  jmpq .L_7a8a0                  #  214   0x7aac2  5      
  nop                            #  215   0x7aac7  1      
  nop                            #  216   0x7aac8  1      
.L_7ab80:                        #        0x7aac9  0      
  movl %r14d, %r14d              #  217   0x7aac9  3      
  movl (%r15,%r14,1), %edx       #  218   0x7aacc  4      
  testl %edx, %edx               #  219   0x7aad0  2      
  je .L_7a900                    #  220   0x7aad2  6      
  cmpl $0x1d, %edx               #  221   0x7aad8  3      
  je .L_7a900                    #  222   0x7aadb  6      
  cmpl $0x16, %edx               #  223   0x7aae1  3      
  nop                            #  224   0x7aae4  1      
  je .L_7a900                    #  225   0x7aae5  6      
  movl %ebx, %ebx                #  226   0x7aaeb  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  227   0x7aaed  7      
  jmpq .L_7aaa0                  #  228   0x7aaf4  5      
  nop                            #  229   0x7aaf9  1      
.L_7abc0:                        #        0x7aafa  0      
  movl %r14d, %r14d              #  230   0x7aafa  3      
  movl (%r15,%r14,1), %eax       #  231   0x7aafd  4      
  testl %eax, %eax               #  232   0x7ab01  2      
  je .L_7ab60                    #  233   0x7ab03  6      
  cmpl $0x16, %eax               #  234   0x7ab09  3      
  je .L_7ac00                    #  235   0x7ab0c  6      
  cmpl $0x1d, %eax               #  236   0x7ab12  3      
  je .L_7ac00                    #  237   0x7ab15  6      
  movl %ebx, %ebx                #  238   0x7ab1b  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  239   0x7ab1d  7      
  movl %edx, %eax                #  240   0x7ab24  2      
  jmpq .L_7aaa0                  #  241   0x7ab26  5      
  nop                            #  242   0x7ab2b  1      
  nop                            #  243   0x7ab2c  1      
.L_7ac00:                        #        0x7ab2d  0      
  movl %r14d, %r14d              #  244   0x7ab2d  3      
  movl %r12d, (%r15,%r14,1)      #  245   0x7ab30  4      
  xorl %eax, %eax                #  246   0x7ab34  2      
  jmpq .L_7aaa0                  #  247   0x7ab36  5      
  nop                            #  248   0x7ab3b  1      
  nop                            #  249   0x7ab3c  1      
                                                          
.size __sflush_r, .-__sflush_r

