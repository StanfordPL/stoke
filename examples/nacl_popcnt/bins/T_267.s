  .text
  .globl T_267
  .type T_267, @function

#! file-offset 0x60a60
#! rip-offset  0x60a60
#! capacity    3040 bytes

# Text                                #  Line  RIP      Bytes  
.T_267:                               #        0x60a60  0      
  movl %edi, %edi                     #  1     0x60a60  2      
  pushq %rbx                          #  2     0x60a62  2      
  movl %edi, %edi                     #  3     0x60a64  2      
  movl 0x4(%r15,%rdi,1), %edx         #  4     0x60a66  5      
  leal (%rsi,%rdi,1), %eax            #  5     0x60a6b  3      
  testb $0x1, %dl                     #  6     0x60a6e  3      
  jne .L_60c20                        #  7     0x60a71  6      
  andl $0x3, %edx                     #  8     0x60a77  3      
  movl %edi, %edi                     #  9     0x60a7a  2      
  movl (%r15,%rdi,1), %ecx            #  10    0x60a7c  4      
  nop                                 #  11    0x60a80  1      
  je .L_61120                         #  12    0x60a81  6      
  movl 0xffd5e43(%rip), %edx          #  13    0x60a87  6      
  subl %ecx, %edi                     #  14    0x60a8d  2      
  cmpl %edi, %edx                     #  15    0x60a8f  2      
  ja .L_615c0                         #  16    0x60a91  6      
  addl %ecx, %esi                     #  17    0x60a97  2      
  cmpl %edi, 0xffd5e35(%rip)          #  18    0x60a99  6      
  xchgw %ax, %ax                      #  19    0x60a9f  3      
  je .L_61260                         #  20    0x60aa2  6      
  shrl $0x3, %ecx                     #  21    0x60aa8  3      
  cmpl $0x1f, %ecx                    #  22    0x60aab  3      
  jbe .L_610c0                        #  23    0x60aae  6      
  movl %edi, %edi                     #  24    0x60ab4  2      
  movl 0xc(%r15,%rdi,1), %ebx         #  25    0x60ab6  5      
  movl %edi, %edi                     #  26    0x60abb  2      
  movl 0x18(%r15,%rdi,1), %r9d        #  27    0x60abd  5      
  cmpl %ebx, %edi                     #  28    0x60ac2  2      
  je .L_613c0                         #  29    0x60ac4  6      
  movl %edi, %edi                     #  30    0x60aca  2      
  movl 0x8(%r15,%rdi,1), %ecx         #  31    0x60acc  5      
  cmpl %ecx, %edx                     #  32    0x60ad1  2      
  ja .L_615c0                         #  33    0x60ad3  6      
  movl %ecx, %ecx                     #  34    0x60ad9  2      
  cmpl %edi, 0xc(%r15,%rcx,1)         #  35    0x60adb  5      
  xchgw %ax, %ax                      #  36    0x60ae0  3      
  jne .L_615c0                        #  37    0x60ae3  6      
  movl %ebx, %ebx                     #  38    0x60ae9  2      
  cmpl %edi, 0x8(%r15,%rbx,1)         #  39    0x60aeb  5      
  jne .L_615c0                        #  40    0x60af0  6      
  movl %ecx, %ecx                     #  41    0x60af6  2      
  movl %ebx, 0xc(%r15,%rcx,1)         #  42    0x60af8  5      
  nop                                 #  43    0x60afd  1      
  movl %ebx, %ebx                     #  44    0x60afe  2      
  movl %ecx, 0x8(%r15,%rbx,1)         #  45    0x60b00  5      
  nop                                 #  46    0x60b05  1      
  nop                                 #  47    0x60b06  1      
.L_60b20:                             #        0x60b07  0      
  testq %r9, %r9                      #  48    0x60b07  3      
  je .L_60c40                         #  49    0x60b0a  6      
  movl %edi, %edi                     #  50    0x60b10  2      
  movl 0x1c(%r15,%rdi,1), %ecx        #  51    0x60b12  5      
  leal 0x130(,%rcx,4), %r8d           #  52    0x60b17  8      
  movslq %r8d, %r8                    #  53    0x60b1f  3      
  nop                                 #  54    0x60b22  1      
  movl %r8d, %r8d                     #  55    0x60b23  3      
  cmpl %edi, 0x100368c0(%r15,%r8,1)   #  56    0x60b26  8      
  je .L_614e0                         #  57    0x60b2e  6      
  cmpl %r9d, %edx                     #  58    0x60b34  3      
  ja .L_615c0                         #  59    0x60b37  6      
  nop                                 #  60    0x60b3d  1      
  movl %r9d, %r9d                     #  61    0x60b3e  3      
  cmpl %edi, 0x10(%r15,%r9,1)         #  62    0x60b41  5      
  je .L_61540                         #  63    0x60b46  6      
  movl %r9d, %r9d                     #  64    0x60b4c  3      
  movl %ebx, 0x14(%r15,%r9,1)         #  65    0x60b4f  5      
  nop                                 #  66    0x60b54  1      
.L_60b80:                             #        0x60b55  0      
  testq %rbx, %rbx                    #  67    0x60b55  3      
  je .L_60c40                         #  68    0x60b58  6      
  nop                                 #  69    0x60b5e  1      
  nop                                 #  70    0x60b5f  1      
.L_60ba0:                             #        0x60b60  0      
  cmpl %edx, %ebx                     #  71    0x60b60  2      
  jb .L_615c0                         #  72    0x60b62  6      
  movl %edi, %edi                     #  73    0x60b68  2      
  movl 0x10(%r15,%rdi,1), %ecx        #  74    0x60b6a  5      
  movl %ebx, %ebx                     #  75    0x60b6f  2      
  movl %r9d, 0x18(%r15,%rbx,1)        #  76    0x60b71  5      
  testq %rcx, %rcx                    #  77    0x60b76  3      
  je .L_60be0                         #  78    0x60b79  6      
  cmpl %edx, %ecx                     #  79    0x60b7f  2      
  nop                                 #  80    0x60b81  1      
  jb .L_615c0                         #  81    0x60b82  6      
  movl %ebx, %ebx                     #  82    0x60b88  2      
  movl %ecx, 0x10(%r15,%rbx,1)        #  83    0x60b8a  5      
  movl %ecx, %ecx                     #  84    0x60b8f  2      
  movl %ebx, 0x18(%r15,%rcx,1)        #  85    0x60b91  5      
  nop                                 #  86    0x60b96  1      
.L_60be0:                             #        0x60b97  0      
  movl %edi, %edi                     #  87    0x60b97  2      
  movl 0x14(%r15,%rdi,1), %ecx        #  88    0x60b99  5      
  testq %rcx, %rcx                    #  89    0x60b9e  3      
  je .L_60c40                         #  90    0x60ba1  6      
  cmpl %edx, %ecx                     #  91    0x60ba7  2      
  jb .L_615c0                         #  92    0x60ba9  6      
  movl %ebx, %ebx                     #  93    0x60baf  2      
  movl %ecx, 0x14(%r15,%rbx,1)        #  94    0x60bb1  5      
  nop                                 #  95    0x60bb6  1      
  movl %ecx, %ecx                     #  96    0x60bb7  2      
  movl %ebx, 0x18(%r15,%rcx,1)        #  97    0x60bb9  5      
  jmpq .L_60c40                       #  98    0x60bbe  5      
  nop                                 #  99    0x60bc3  1      
  nop                                 #  100   0x60bc4  1      
.L_60c20:                             #        0x60bc5  0      
  movl 0xffd5d05(%rip), %edx          #  101   0x60bc5  6      
  nop                                 #  102   0x60bcb  1      
  nop                                 #  103   0x60bcc  1      
.L_60c40:                             #        0x60bcd  0      
  cmpl %edx, %eax                     #  104   0x60bcd  2      
  jb .L_615c0                         #  105   0x60bcf  6      
  movl %eax, %eax                     #  106   0x60bd5  2      
  movl 0x4(%r15,%rax,1), %r8d         #  107   0x60bd7  5      
  testb $0x2, %r8b                    #  108   0x60bdc  4      
  jne .L_60e20                        #  109   0x60be0  6      
  cmpl %eax, 0xffd5cec(%rip)          #  110   0x60be6  6      
  nop                                 #  111   0x60bec  1      
  je .L_61200                         #  112   0x60bed  6      
  movl 0xffd5cdb(%rip), %ebx          #  113   0x60bf3  6      
  cmpl %ebx, %eax                     #  114   0x60bf9  2      
  je .L_612c0                         #  115   0x60bfb  6      
  andl $0xfffffff8, %r8d              #  116   0x60c01  7      
  movl %r8d, %ecx                     #  117   0x60c08  3      
  shrl $0x3, %ecx                     #  118   0x60c0b  3      
  xchgw %ax, %ax                      #  119   0x60c0e  3      
  cmpl $0x1f, %ecx                    #  120   0x60c11  3      
  jbe .L_61060                        #  121   0x60c14  6      
  movl %eax, %eax                     #  122   0x60c1a  2      
  movl 0xc(%r15,%rax,1), %r9d         #  123   0x60c1c  5      
  movl %eax, %eax                     #  124   0x60c21  2      
  movl 0x18(%r15,%rax,1), %r11d       #  125   0x60c23  5      
  cmpl %r9d, %eax                     #  126   0x60c28  3      
  je .L_612e0                         #  127   0x60c2b  6      
  movl %eax, %eax                     #  128   0x60c31  2      
  movl 0x8(%r15,%rax,1), %ecx         #  129   0x60c33  5      
  cmpl %edx, %ecx                     #  130   0x60c38  2      
  jb .L_615c0                         #  131   0x60c3a  6      
  movl %ecx, %ecx                     #  132   0x60c40  2      
  cmpl %eax, 0xc(%r15,%rcx,1)         #  133   0x60c42  5      
  jne .L_615c0                        #  134   0x60c47  6      
  nop                                 #  135   0x60c4d  1      
  movl %r9d, %r9d                     #  136   0x60c4e  3      
  cmpl %eax, 0x8(%r15,%r9,1)          #  137   0x60c51  5      
  jne .L_615c0                        #  138   0x60c56  6      
  movl %ecx, %ecx                     #  139   0x60c5c  2      
  movl %r9d, 0xc(%r15,%rcx,1)         #  140   0x60c5e  5      
  movl %r9d, %r9d                     #  141   0x60c63  3      
  movl %ecx, 0x8(%r15,%r9,1)          #  142   0x60c66  5      
  nop                                 #  143   0x60c6b  1      
.L_60ce0:                             #        0x60c6c  0      
  testq %r11, %r11                    #  144   0x60c6c  3      
  je .L_60de0                         #  145   0x60c6f  6      
  movl %eax, %eax                     #  146   0x60c75  2      
  movl 0x1c(%r15,%rax,1), %ecx        #  147   0x60c77  5      
  leal 0x130(,%rcx,4), %r10d          #  148   0x60c7c  8      
  movslq %r10d, %r10                  #  149   0x60c84  3      
  nop                                 #  150   0x60c87  1      
  movl %r10d, %r10d                   #  151   0x60c88  3      
  cmpl %eax, 0x100368c0(%r15,%r10,1)  #  152   0x60c8b  8      
  je .L_614a0                         #  153   0x60c93  6      
  cmpl %r11d, %edx                    #  154   0x60c99  3      
  ja .L_615c0                         #  155   0x60c9c  6      
  nop                                 #  156   0x60ca2  1      
  movl %r11d, %r11d                   #  157   0x60ca3  3      
  cmpl %eax, 0x10(%r15,%r11,1)        #  158   0x60ca6  5      
  je .L_61520                         #  159   0x60cab  6      
  movl %r11d, %r11d                   #  160   0x60cb1  3      
  movl %r9d, 0x14(%r15,%r11,1)        #  161   0x60cb4  5      
  nop                                 #  162   0x60cb9  1      
.L_60d40:                             #        0x60cba  0      
  testq %r9, %r9                      #  163   0x60cba  3      
  je .L_60de0                         #  164   0x60cbd  6      
  nop                                 #  165   0x60cc3  1      
  nop                                 #  166   0x60cc4  1      
.L_60d60:                             #        0x60cc5  0      
  cmpl %edx, %r9d                     #  167   0x60cc5  3      
  jb .L_615c0                         #  168   0x60cc8  6      
  movl %eax, %eax                     #  169   0x60cce  2      
  movl 0x10(%r15,%rax,1), %ecx        #  170   0x60cd0  5      
  movl %r9d, %r9d                     #  171   0x60cd5  3      
  movl %r11d, 0x18(%r15,%r9,1)        #  172   0x60cd8  5      
  testq %rcx, %rcx                    #  173   0x60cdd  3      
  nop                                 #  174   0x60ce0  1      
  je .L_60da0                         #  175   0x60ce1  6      
  cmpl %edx, %ecx                     #  176   0x60ce7  2      
  jb .L_615c0                         #  177   0x60ce9  6      
  movl %r9d, %r9d                     #  178   0x60cef  3      
  movl %ecx, 0x10(%r15,%r9,1)         #  179   0x60cf2  5      
  movl %ecx, %ecx                     #  180   0x60cf7  2      
  movl %r9d, 0x18(%r15,%rcx,1)        #  181   0x60cf9  5      
  nop                                 #  182   0x60cfe  1      
.L_60da0:                             #        0x60cff  0      
  movl %eax, %eax                     #  183   0x60cff  2      
  movl 0x14(%r15,%rax,1), %eax        #  184   0x60d01  5      
  testq %rax, %rax                    #  185   0x60d06  3      
  je .L_60de0                         #  186   0x60d09  6      
  cmpl %edx, %eax                     #  187   0x60d0f  2      
  jb .L_615c0                         #  188   0x60d11  6      
  movl %r9d, %r9d                     #  189   0x60d17  3      
  movl %eax, 0x14(%r15,%r9,1)         #  190   0x60d1a  5      
  nop                                 #  191   0x60d1f  1      
  movl %eax, %eax                     #  192   0x60d20  2      
  movl %r9d, 0x18(%r15,%rax,1)        #  193   0x60d22  5      
  nop                                 #  194   0x60d27  1      
  nop                                 #  195   0x60d28  1      
.L_60de0:                             #        0x60d29  0      
  addl %r8d, %esi                     #  196   0x60d29  3      
  movl %esi, %eax                     #  197   0x60d2c  2      
  orl $0x1, %eax                      #  198   0x60d2e  3      
  cmpl %ebx, %edi                     #  199   0x60d31  2      
  movl %edi, %edi                     #  200   0x60d33  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  201   0x60d35  5      
  leal (%rsi,%rdi,1), %eax            #  202   0x60d3a  3      
  movl %eax, %eax                     #  203   0x60d3d  2      
  movl %esi, (%r15,%rax,1)            #  204   0x60d3f  4      
  jne .L_60e40                        #  205   0x60d43  6      
  nop                                 #  206   0x60d49  1      
  movl %esi, 0xffd5b78(%rip)          #  207   0x60d4a  6      
  jmpq .L_60ea0                       #  208   0x60d50  5      
  nop                                 #  209   0x60d55  1      
  nop                                 #  210   0x60d56  1      
.L_60e20:                             #        0x60d57  0      
  andl $0xfffffffe, %r8d              #  211   0x60d57  7      
  movl %eax, %eax                     #  212   0x60d5e  2      
  movl %r8d, 0x4(%r15,%rax,1)         #  213   0x60d60  5      
  movl %esi, %eax                     #  214   0x60d65  2      
  orl $0x1, %eax                      #  215   0x60d67  3      
  movl %edi, %edi                     #  216   0x60d6a  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  217   0x60d6c  5      
  leal (%rsi,%rdi,1), %eax            #  218   0x60d71  3      
  movl %eax, %eax                     #  219   0x60d74  2      
  movl %esi, (%r15,%rax,1)            #  220   0x60d76  4      
.L_60e40:                             #        0x60d7a  0      
  movl %esi, %ecx                     #  221   0x60d7a  2      
  shrl $0x3, %ecx                     #  222   0x60d7c  3      
  cmpl $0x1f, %ecx                    #  223   0x60d7f  3      
  ja .L_60ec0                         #  224   0x60d82  6      
  movl 0xffd5b32(%rip), %ebx          #  225   0x60d88  6      
  movl $0x1, %eax                     #  226   0x60d8e  5      
  leal 0x100368e8(,%rcx,8), %edx      #  227   0x60d93  7      
  shll %cl, %eax                      #  228   0x60d9a  2      
  testl %ebx, %eax                    #  229   0x60d9c  2      
  je .L_61040                         #  230   0x60d9e  6      
  movl %edx, %edx                     #  231   0x60da4  2      
  movl 0x8(%r15,%rdx,1), %eax         #  232   0x60da6  5      
  cmpl %eax, 0xffd5b1f(%rip)          #  233   0x60dab  6      
  ja .L_615c0                         #  234   0x60db1  6      
  nop                                 #  235   0x60db7  1      
.L_60e80:                             #        0x60db8  0      
  movl %edx, %edx                     #  236   0x60db8  2      
  movl %edi, 0x8(%r15,%rdx,1)         #  237   0x60dba  5      
  movl %eax, %eax                     #  238   0x60dbf  2      
  movl %edi, 0xc(%r15,%rax,1)         #  239   0x60dc1  5      
  movl %edi, %edi                     #  240   0x60dc6  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  241   0x60dc8  5      
  movl %edi, %edi                     #  242   0x60dcd  2      
  movl %edx, 0xc(%r15,%rdi,1)         #  243   0x60dcf  5      
  nop                                 #  244   0x60dd4  1      
.L_60ea0:                             #        0x60dd5  0      
  popq %rbx                           #  245   0x60dd5  2      
  popq %r11                           #  246   0x60dd7  3      
  andl $0xffffffe0, %r11d             #  247   0x60dda  7      
  addq %r15, %r11                     #  248   0x60de1  3      
  jmpq %r11                           #  249   0x60de4  3      
  nop                                 #  250   0x60de7  1      
  nop                                 #  251   0x60de8  1      
.L_60ec0:                             #        0x60de9  0      
  movl %esi, %ecx                     #  252   0x60de9  2      
  xorl %ebx, %ebx                     #  253   0x60deb  2      
  movl $0x1, %eax                     #  254   0x60ded  5      
  shrl $0x8, %ecx                     #  255   0x60df2  3      
  testl %ecx, %ecx                    #  256   0x60df5  2      
  je .L_60f20                         #  257   0x60df7  6      
  cmpl $0xffff, %ecx                  #  258   0x60dfd  6      
  movl $0x80000000, %eax              #  259   0x60e03  5      
  movb $0x1f, %bl                     #  260   0x60e08  2      
  nop                                 #  261   0x60e0a  1      
  ja .L_60f20                         #  262   0x60e0b  6      
  bsrl %ecx, %ecx                     #  263   0x60e11  3      
  movl $0x1f, %eax                    #  264   0x60e14  5      
  movl %esi, %ebx                     #  265   0x60e19  2      
  xorl $0x1f, %ecx                    #  266   0x60e1b  3      
  subl %ecx, %eax                     #  267   0x60e1e  2      
  leal 0x7(%rax), %ecx                #  268   0x60e20  3      
  shrl %cl, %ebx                      #  269   0x60e23  2      
  andl $0x1, %ebx                     #  270   0x60e25  3      
  leal (%rbx,%rax,2), %ebx            #  271   0x60e28  3      
  nop                                 #  272   0x60e2b  1      
  movl $0x1, %eax                     #  273   0x60e2c  5      
  movl %ebx, %ecx                     #  274   0x60e31  2      
  shll %cl, %eax                      #  275   0x60e33  2      
  nop                                 #  276   0x60e35  1      
  nop                                 #  277   0x60e36  1      
.L_60f20:                             #        0x60e37  0      
  movl %edi, %edi                     #  278   0x60e37  2      
  movl %ebx, 0x1c(%r15,%rdi,1)        #  279   0x60e39  5      
  movl 0xffd5a80(%rip), %ecx          #  280   0x60e3e  6      
  movl %edi, %edi                     #  281   0x60e44  2      
  movl $0x0, 0x14(%r15,%rdi,1)        #  282   0x60e46  9      
  nop                                 #  283   0x60e4f  1      
  movl %edi, %edi                     #  284   0x60e50  2      
  movl $0x0, 0x10(%r15,%rdi,1)        #  285   0x60e52  9      
  testl %ecx, %eax                    #  286   0x60e5b  2      
  je .L_61160                         #  287   0x60e5d  6      
  leal 0x130(,%rbx,4), %eax           #  288   0x60e63  7      
  xorl %ecx, %ecx                     #  289   0x60e6a  2      
  cmpl $0x1f, %ebx                    #  290   0x60e6c  3      
  nop                                 #  291   0x60e6f  1      
  cltq                                #  292   0x60e70  2      
  movl %eax, %eax                     #  293   0x60e72  2      
  movl 0x100368c0(%r15,%rax,1), %eax  #  294   0x60e74  8      
  je .L_60f80                         #  295   0x60e7c  6      
  shrl $0x1, %ebx                     #  296   0x60e82  2      
  movb $0x19, %cl                     #  297   0x60e84  2      
  subl %ebx, %ecx                     #  298   0x60e86  2      
  nop                                 #  299   0x60e88  1      
.L_60f80:                             #        0x60e89  0      
  movl %esi, %ebx                     #  300   0x60e89  2      
  shll %cl, %ebx                      #  301   0x60e8b  2      
  movl %ebx, %ecx                     #  302   0x60e8d  2      
  jmpq .L_60fe0                       #  303   0x60e8f  5      
  nop                                 #  304   0x60e94  1      
  nop                                 #  305   0x60e95  1      
.L_60fa0:                             #        0x60e96  0      
  movl %ecx, %ebx                     #  306   0x60e96  2      
  shrl $0x1f, %ebx                    #  307   0x60e98  3      
  addl $0x4, %ebx                     #  308   0x60e9b  3      
  shll $0x2, %ebx                     #  309   0x60e9e  3      
  leal (%rbx,%rax,1), %r9d            #  310   0x60ea1  4      
  movslq %ebx, %rbx                   #  311   0x60ea5  3      
  leaq (%rax,%rbx,1), %rbx            #  312   0x60ea8  4      
  movl %ebx, %ebx                     #  313   0x60eac  2      
  movl (%r15,%rbx,1), %r8d            #  314   0x60eae  4      
  testq %r8, %r8                      #  315   0x60eb2  3      
  nop                                 #  316   0x60eb5  1      
  je .L_611c0                         #  317   0x60eb6  6      
  addl %ecx, %ecx                     #  318   0x60ebc  2      
  movq %r8, %rax                      #  319   0x60ebe  3      
  nop                                 #  320   0x60ec1  1      
  nop                                 #  321   0x60ec2  1      
.L_60fe0:                             #        0x60ec3  0      
  movl %eax, %eax                     #  322   0x60ec3  2      
  movl 0x4(%r15,%rax,1), %ebx         #  323   0x60ec5  5      
  andl $0xfffffff8, %ebx              #  324   0x60eca  6      
  cmpl %ebx, %esi                     #  325   0x60ed0  2      
  jne .L_60fa0                        #  326   0x60ed2  6      
  cmpl %eax, %edx                     #  327   0x60ed8  2      
  movl %eax, %eax                     #  328   0x60eda  2      
  movl 0x8(%r15,%rax,1), %ecx         #  329   0x60edc  5      
  ja .L_615c0                         #  330   0x60ee1  6      
  cmpl %ecx, %edx                     #  331   0x60ee7  2      
  nop                                 #  332   0x60ee9  1      
  ja .L_615c0                         #  333   0x60eea  6      
  movl %ecx, %ecx                     #  334   0x60ef0  2      
  movl %edi, 0xc(%r15,%rcx,1)         #  335   0x60ef2  5      
  movl %eax, %eax                     #  336   0x60ef7  2      
  movl %edi, 0x8(%r15,%rax,1)         #  337   0x60ef9  5      
  movl %edi, %edi                     #  338   0x60efe  2      
  movl %eax, 0xc(%r15,%rdi,1)         #  339   0x60f00  5      
  nop                                 #  340   0x60f05  1      
  movl %edi, %edi                     #  341   0x60f06  2      
  movl %ecx, 0x8(%r15,%rdi,1)         #  342   0x60f08  5      
  movl %edi, %edi                     #  343   0x60f0d  2      
  movl $0x0, 0x18(%r15,%rdi,1)        #  344   0x60f0f  9      
  popq %rbx                           #  345   0x60f18  2      
  popq %r11                           #  346   0x60f1a  3      
  andl $0xffffffe0, %r11d             #  347   0x60f1d  7      
  addq %r15, %r11                     #  348   0x60f24  3      
  jmpq %r11                           #  349   0x60f27  3      
  nop                                 #  350   0x60f2a  1      
.L_61040:                             #        0x60f2b  0      
  orl %ebx, %eax                      #  351   0x60f2b  2      
  movl %eax, 0xffd598d(%rip)          #  352   0x60f2d  6      
  movq %rdx, %rax                     #  353   0x60f33  3      
  jmpq .L_60e80                       #  354   0x60f36  5      
  nop                                 #  355   0x60f3b  1      
  nop                                 #  356   0x60f3c  1      
.L_61060:                             #        0x60f3d  0      
  movl %eax, %eax                     #  357   0x60f3d  2      
  movl 0x8(%r15,%rax,1), %r9d         #  358   0x60f3f  5      
  leal 0x100368e8(,%rcx,8), %r11d     #  359   0x60f44  8      
  movl %eax, %eax                     #  360   0x60f4c  2      
  movl 0xc(%r15,%rax,1), %r10d        #  361   0x60f4e  5      
  cmpl %r11d, %r9d                    #  362   0x60f53  3      
  jne .L_61620                        #  363   0x60f56  6      
  nop                                 #  364   0x60f5c  1      
.L_61080:                             #        0x60f5d  0      
  cmpl %r10d, %r9d                    #  365   0x60f5d  3      
  je .L_61380                         #  366   0x60f60  6      
  cmpl %r11d, %r10d                   #  367   0x60f66  3      
  jne .L_615a0                        #  368   0x60f69  6      
  nop                                 #  369   0x60f6f  1      
.L_610a0:                             #        0x60f70  0      
  movl %r9d, %r9d                     #  370   0x60f70  3      
  movl %r10d, 0xc(%r15,%r9,1)         #  371   0x60f73  5      
  movl %r10d, %r10d                   #  372   0x60f78  3      
  movl %r9d, 0x8(%r15,%r10,1)         #  373   0x60f7b  5      
  jmpq .L_60de0                       #  374   0x60f80  5      
  nop                                 #  375   0x60f85  1      
.L_610c0:                             #        0x60f86  0      
  movl %edi, %edi                     #  376   0x60f86  2      
  movl 0x8(%r15,%rdi,1), %ebx         #  377   0x60f88  5      
  leal 0x100368e8(,%rcx,8), %r9d      #  378   0x60f8d  8      
  movl %edi, %edi                     #  379   0x60f95  2      
  movl 0xc(%r15,%rdi,1), %r8d         #  380   0x60f97  5      
  cmpl %r9d, %ebx                     #  381   0x60f9c  3      
  jne .L_61600                        #  382   0x60f9f  6      
  nop                                 #  383   0x60fa5  1      
.L_610e0:                             #        0x60fa6  0      
  cmpl %r8d, %ebx                     #  384   0x60fa6  3      
  je .L_61460                         #  385   0x60fa9  6      
  cmpl %r9d, %r8d                     #  386   0x60faf  3      
  jne .L_615e0                        #  387   0x60fb2  6      
  nop                                 #  388   0x60fb8  1      
.L_61100:                             #        0x60fb9  0      
  movl %ebx, %ebx                     #  389   0x60fb9  2      
  movl %r8d, 0xc(%r15,%rbx,1)         #  390   0x60fbb  5      
  movl %r8d, %r8d                     #  391   0x60fc0  3      
  movl %ebx, 0x8(%r15,%r8,1)          #  392   0x60fc3  5      
  jmpq .L_60c40                       #  393   0x60fc8  5      
  nop                                 #  394   0x60fcd  1      
.L_61120:                             #        0x60fce  0      
  leal 0x10(%rcx,%rsi,1), %ebx        #  395   0x60fce  4      
  subl %ecx, %edi                     #  396   0x60fd2  2      
  movl %ebx, %esi                     #  397   0x60fd4  2      
  nop                                 #  398   0x60fd6  1      
  nop                                 #  399   0x60fd7  1      
  callq .munmap                       #  400   0x60fd8  5      
  testl %eax, %eax                    #  401   0x60fdd  2      
  jne .L_60ea0                        #  402   0x60fdf  6      
  subl %ebx, 0xffd5a85(%rip)          #  403   0x60fe5  6      
  jmpq .L_60ea0                       #  404   0x60feb  5      
  nop                                 #  405   0x60ff0  1      
.L_61160:                             #        0x60ff1  0      
  leal 0x130(,%rbx,4), %ebx           #  406   0x60ff1  7      
  orl %ecx, %eax                      #  407   0x60ff8  2      
  movl %eax, 0xffd58c4(%rip)          #  408   0x60ffa  6      
  movslq %ebx, %rax                   #  409   0x61000  3      
  addl $0x100368c0, %ebx              #  410   0x61003  6      
  nop                                 #  411   0x61009  1      
  movl %eax, %eax                     #  412   0x6100a  2      
  movl %edi, 0x100368c0(%r15,%rax,1)  #  413   0x6100c  8      
  movl %edi, %edi                     #  414   0x61014  2      
  movl %ebx, 0x18(%r15,%rdi,1)        #  415   0x61016  5      
  movl %edi, %edi                     #  416   0x6101b  2      
  movl %edi, 0xc(%r15,%rdi,1)         #  417   0x6101d  5      
  movl %edi, %edi                     #  418   0x61022  2      
  movl %edi, 0x8(%r15,%rdi,1)         #  419   0x61024  5      
  popq %rbx                           #  420   0x61029  2      
  popq %r11                           #  421   0x6102b  3      
  andl $0xffffffe0, %r11d             #  422   0x6102e  7      
  addq %r15, %r11                     #  423   0x61035  3      
  jmpq %r11                           #  424   0x61038  3      
  nop                                 #  425   0x6103b  1      
  nop                                 #  426   0x6103c  1      
.L_611c0:                             #        0x6103d  0      
  cmpl %r9d, 0xffd588c(%rip)          #  427   0x6103d  7      
  ja .L_615c0                         #  428   0x61044  6      
  movl %ebx, %ebx                     #  429   0x6104a  2      
  movl %edi, (%r15,%rbx,1)            #  430   0x6104c  4      
  movl %edi, %edi                     #  431   0x61050  2      
  movl %eax, 0x18(%r15,%rdi,1)        #  432   0x61052  5      
  nop                                 #  433   0x61057  1      
  movl %edi, %edi                     #  434   0x61058  2      
  movl %edi, 0xc(%r15,%rdi,1)         #  435   0x6105a  5      
  movl %edi, %edi                     #  436   0x6105f  2      
  movl %edi, 0x8(%r15,%rdi,1)         #  437   0x61061  5      
  popq %rbx                           #  438   0x61066  2      
  popq %r11                           #  439   0x61068  3      
  andl $0xffffffe0, %r11d             #  440   0x6106b  7      
  addq %r15, %r11                     #  441   0x61072  3      
  jmpq %r11                           #  442   0x61075  3      
  nop                                 #  443   0x61078  1      
.L_61200:                             #        0x61079  0      
  addl 0xffd584d(%rip), %esi          #  444   0x61079  6      
  movl %edi, 0xffd5853(%rip)          #  445   0x6107f  6      
  movl %esi, 0xffd5841(%rip)          #  446   0x61085  6      
  orl $0x1, %esi                      #  447   0x6108b  3      
  cmpl %edi, 0xffd5840(%rip)          #  448   0x6108e  6      
  nop                                 #  449   0x61094  1      
  movl %edi, %edi                     #  450   0x61095  2      
  movl %esi, 0x4(%r15,%rdi,1)         #  451   0x61097  5      
  jne .L_60ea0                        #  452   0x6109c  6      
  movl $0x0, 0xffd5828(%rip)          #  453   0x610a2  10     
  nop                                 #  454   0x610ac  1      
  movl $0x0, 0xffd5811(%rip)          #  455   0x610ad  10     
  jmpq .L_60ea0                       #  456   0x610b7  5      
  xchgw %ax, %ax                      #  457   0x610bc  3      
  nop                                 #  458   0x610bf  1      
.L_61260:                             #        0x610c0  0      
  movl %eax, %eax                     #  459   0x610c0  2      
  movl 0x4(%r15,%rax,1), %ecx         #  460   0x610c2  5      
  movl %ecx, %ebx                     #  461   0x610c7  2      
  andl $0x3, %ebx                     #  462   0x610c9  3      
  cmpl $0x3, %ebx                     #  463   0x610cc  3      
  jne .L_60c40                        #  464   0x610cf  6      
  andl $0xfffffffe, %ecx              #  465   0x610d5  6      
  movl %esi, 0xffd57e7(%rip)          #  466   0x610db  6      
  xchgw %ax, %ax                      #  467   0x610e1  3      
  movl %eax, %eax                     #  468   0x610e4  2      
  movl %ecx, 0x4(%r15,%rax,1)         #  469   0x610e6  5      
  nop                                 #  470   0x610eb  1      
  nop                                 #  471   0x610ec  1      
.L_612a0:                             #        0x610ed  0      
  movl %esi, %eax                     #  472   0x610ed  2      
  orl $0x1, %eax                      #  473   0x610ef  3      
  movl %edi, %edi                     #  474   0x610f2  2      
  movl %eax, 0x4(%r15,%rdi,1)         #  475   0x610f4  5      
  leal (%rsi,%rdi,1), %edi            #  476   0x610f9  3      
  movl %edi, %edi                     #  477   0x610fc  2      
  movl %esi, (%r15,%rdi,1)            #  478   0x610fe  4      
  jmpq .L_60ea0                       #  479   0x61102  5      
  nop                                 #  480   0x61107  1      
.L_612c0:                             #        0x61108  0      
  addl 0xffd57ba(%rip), %esi          #  481   0x61108  6      
  movl %edi, 0xffd57c0(%rip)          #  482   0x6110e  6      
  movl %esi, 0xffd57ae(%rip)          #  483   0x61114  6      
  jmpq .L_612a0                       #  484   0x6111a  5      
  nop                                 #  485   0x6111f  1      
.L_612e0:                             #        0x61120  0      
  movl %eax, %eax                     #  486   0x61120  2      
  movl 0x14(%r15,%rax,1), %r9d        #  487   0x61122  5      
  leal 0x14(%rax), %r10d              #  488   0x61127  4      
  testq %r9, %r9                      #  489   0x6112b  3      
  jne .L_61340                        #  490   0x6112e  6      
  jmpq .L_61560                       #  491   0x61134  5      
  nop                                 #  492   0x61139  1      
.L_61300:                             #        0x6113a  0      
  leal 0x14(%r9), %r10d               #  493   0x6113a  4      
  nop                                 #  494   0x6113e  1      
  nop                                 #  495   0x6113f  1      
.L_61320:                             #        0x61140  0      
  movq %rcx, %r9                      #  496   0x61140  3      
  nop                                 #  497   0x61143  1      
  nop                                 #  498   0x61144  1      
.L_61340:                             #        0x61145  0      
  movl %r9d, %r9d                     #  499   0x61145  3      
  movl 0x14(%r15,%r9,1), %ecx         #  500   0x61148  5      
  testq %rcx, %rcx                    #  501   0x6114d  3      
  jne .L_61300                        #  502   0x61150  6      
  movl %r9d, %r9d                     #  503   0x61156  3      
  movl 0x10(%r15,%r9,1), %ecx         #  504   0x61159  5      
  testq %rcx, %rcx                    #  505   0x6115e  3      
  je .L_613a0                         #  506   0x61161  6      
  leal 0x10(%r9), %r10d               #  507   0x61167  4      
  xchgw %ax, %ax                      #  508   0x6116b  3      
  jmpq .L_61320                       #  509   0x6116e  5      
  nop                                 #  510   0x61173  1      
  nop                                 #  511   0x61174  1      
.L_61380:                             #        0x61175  0      
  movl $0xfffffffe, %eax              #  512   0x61175  5      
  roll %cl, %eax                      #  513   0x6117a  2      
  andl %eax, 0xffd573e(%rip)          #  514   0x6117c  6      
  jmpq .L_60de0                       #  515   0x61182  5      
  nop                                 #  516   0x61187  1      
.L_613a0:                             #        0x61188  0      
  cmpl %edx, %r10d                    #  517   0x61188  3      
  jb .L_615c0                         #  518   0x6118b  6      
  movl %r10d, %r10d                   #  519   0x61191  3      
  movl $0x0, (%r15,%r10,1)            #  520   0x61194  8      
  jmpq .L_60ce0                       #  521   0x6119c  5      
  nop                                 #  522   0x611a1  1      
.L_613c0:                             #        0x611a2  0      
  movl %edi, %edi                     #  523   0x611a2  2      
  movl 0x14(%r15,%rdi,1), %ebx        #  524   0x611a4  5      
  leal 0x14(%rdi), %r8d               #  525   0x611a9  4      
  testq %rbx, %rbx                    #  526   0x611ad  3      
  jne .L_61420                        #  527   0x611b0  6      
  jmpq .L_61580                       #  528   0x611b6  5      
  nop                                 #  529   0x611bb  1      
.L_613e0:                             #        0x611bc  0      
  leal 0x14(%rbx), %r8d               #  530   0x611bc  4      
  nop                                 #  531   0x611c0  1      
  nop                                 #  532   0x611c1  1      
.L_61400:                             #        0x611c2  0      
  movq %rcx, %rbx                     #  533   0x611c2  3      
  nop                                 #  534   0x611c5  1      
  nop                                 #  535   0x611c6  1      
.L_61420:                             #        0x611c7  0      
  movl %ebx, %ebx                     #  536   0x611c7  2      
  movl 0x14(%r15,%rbx,1), %ecx        #  537   0x611c9  5      
  testq %rcx, %rcx                    #  538   0x611ce  3      
  jne .L_613e0                        #  539   0x611d1  6      
  movl %ebx, %ebx                     #  540   0x611d7  2      
  movl 0x10(%r15,%rbx,1), %ecx        #  541   0x611d9  5      
  testq %rcx, %rcx                    #  542   0x611de  3      
  je .L_61480                         #  543   0x611e1  6      
  leal 0x10(%rbx), %r8d               #  544   0x611e7  4      
  nop                                 #  545   0x611eb  1      
  jmpq .L_61400                       #  546   0x611ec  5      
  nop                                 #  547   0x611f1  1      
  nop                                 #  548   0x611f2  1      
.L_61460:                             #        0x611f3  0      
  movl $0xfffffffe, %ebx              #  549   0x611f3  5      
  roll %cl, %ebx                      #  550   0x611f8  2      
  andl %ebx, 0xffd56c0(%rip)          #  551   0x611fa  6      
  jmpq .L_60c40                       #  552   0x61200  5      
  nop                                 #  553   0x61205  1      
.L_61480:                             #        0x61206  0      
  cmpl %r8d, %edx                     #  554   0x61206  3      
  ja .L_615c0                         #  555   0x61209  6      
  movl %r8d, %r8d                     #  556   0x6120f  3      
  movl $0x0, (%r15,%r8,1)             #  557   0x61212  8      
  jmpq .L_60b20                       #  558   0x6121a  5      
  nop                                 #  559   0x6121f  1      
.L_614a0:                             #        0x61220  0      
  testq %r9, %r9                      #  560   0x61220  3      
  movl %r10d, %r10d                   #  561   0x61223  3      
  movl %r9d, 0x100368c0(%r15,%r10,1)  #  562   0x61226  8      
  jne .L_60d60                        #  563   0x6122e  6      
  movl $0xfffffffe, %eax              #  564   0x61234  5      
  roll %cl, %eax                      #  565   0x61239  2      
  nop                                 #  566   0x6123b  1      
  andl %eax, 0xffd5682(%rip)          #  567   0x6123c  6      
  jmpq .L_60de0                       #  568   0x61242  5      
  nop                                 #  569   0x61247  1      
  nop                                 #  570   0x61248  1      
.L_614e0:                             #        0x61249  0      
  testq %rbx, %rbx                    #  571   0x61249  3      
  movl %r8d, %r8d                     #  572   0x6124c  3      
  movl %ebx, 0x100368c0(%r15,%r8,1)   #  573   0x6124f  8      
  jne .L_60ba0                        #  574   0x61257  6      
  movl $0xfffffffe, %ebx              #  575   0x6125d  5      
  roll %cl, %ebx                      #  576   0x61262  2      
  nop                                 #  577   0x61264  1      
  andl %ebx, 0xffd5659(%rip)          #  578   0x61265  6      
  jmpq .L_60c40                       #  579   0x6126b  5      
  nop                                 #  580   0x61270  1      
  nop                                 #  581   0x61271  1      
.L_61520:                             #        0x61272  0      
  movl %r11d, %r11d                   #  582   0x61272  3      
  movl %r9d, 0x10(%r15,%r11,1)        #  583   0x61275  5      
  jmpq .L_60d40                       #  584   0x6127a  5      
  nop                                 #  585   0x6127f  1      
  nop                                 #  586   0x61280  1      
.L_61540:                             #        0x61281  0      
  movl %r9d, %r9d                     #  587   0x61281  3      
  movl %ebx, 0x10(%r15,%r9,1)         #  588   0x61284  5      
  jmpq .L_60b80                       #  589   0x61289  5      
  nop                                 #  590   0x6128e  1      
  nop                                 #  591   0x6128f  1      
.L_61560:                             #        0x61290  0      
  movl %eax, %eax                     #  592   0x61290  2      
  movl 0x10(%r15,%rax,1), %r9d        #  593   0x61292  5      
  leal 0x10(%rax), %r10d              #  594   0x61297  4      
  testq %r9, %r9                      #  595   0x6129b  3      
  jne .L_61340                        #  596   0x6129e  6      
  jmpq .L_60ce0                       #  597   0x612a4  5      
  nop                                 #  598   0x612a9  1      
.L_61580:                             #        0x612aa  0      
  movl %edi, %edi                     #  599   0x612aa  2      
  movl 0x10(%r15,%rdi,1), %ebx        #  600   0x612ac  5      
  leal 0x10(%rdi), %r8d               #  601   0x612b1  4      
  testq %rbx, %rbx                    #  602   0x612b5  3      
  jne .L_61420                        #  603   0x612b8  6      
  jmpq .L_60b20                       #  604   0x612be  5      
  nop                                 #  605   0x612c3  1      
.L_615a0:                             #        0x612c4  0      
  cmpl %edx, %r10d                    #  606   0x612c4  3      
  jb .L_615c0                         #  607   0x612c7  6      
  movl %r10d, %r10d                   #  608   0x612cd  3      
  cmpl %eax, 0x8(%r15,%r10,1)         #  609   0x612d0  5      
  je .L_610a0                         #  610   0x612d5  6      
  nop                                 #  611   0x612db  1      
.L_615c0:                             #        0x612dc  0      
  nop                                 #  612   0x612dc  1      
  nop                                 #  613   0x612dd  1      
  callq .abort                        #  614   0x612de  5      
.L_615e0:                             #        0x612e3  0      
  cmpl %r8d, %edx                     #  615   0x612e3  3      
  ja .L_615c0                         #  616   0x612e6  6      
  movl %r8d, %r8d                     #  617   0x612ec  3      
  cmpl %edi, 0x8(%r15,%r8,1)          #  618   0x612ef  5      
  jne .L_615c0                        #  619   0x612f4  6      
  jmpq .L_61100                       #  620   0x612fa  5      
  nop                                 #  621   0x612ff  1      
.L_61600:                             #        0x61300  0      
  cmpl %ebx, %edx                     #  622   0x61300  2      
  ja .L_615c0                         #  623   0x61302  6      
  movl %ebx, %ebx                     #  624   0x61308  2      
  cmpl %edi, 0xc(%r15,%rbx,1)         #  625   0x6130a  5      
  jne .L_615c0                        #  626   0x6130f  6      
  jmpq .L_610e0                       #  627   0x61315  5      
  nop                                 #  628   0x6131a  1      
.L_61620:                             #        0x6131b  0      
  cmpl %edx, %r9d                     #  629   0x6131b  3      
  jb .L_615c0                         #  630   0x6131e  6      
  movl %r9d, %r9d                     #  631   0x61324  3      
  cmpl %eax, 0xc(%r15,%r9,1)          #  632   0x61327  5      
  jne .L_615c0                        #  633   0x6132c  6      
  jmpq .L_61080                       #  634   0x61332  5      
  nop                                 #  635   0x61337  1      
                                                               
.size T_267, .-T_267

