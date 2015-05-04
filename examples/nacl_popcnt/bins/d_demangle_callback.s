  .text
  .globl d_demangle_callback
  .type d_demangle_callback, @function

#! file-offset 0x57be0
#! rip-offset  0x57be0
#! capacity    1216 bytes

# Text                               #  Line  RIP      Bytes  
.d_demangle_callback:                #        0x57be0  0      
  pushq %rbp                         #  1     0x57be0  2      
  movq %rsp, %rbp                    #  2     0x57be2  3      
  pushq %r14                         #  3     0x57be5  3      
  movl %ecx, %r14d                   #  4     0x57be8  3      
  pushq %r13                         #  5     0x57beb  3      
  movl %edx, %r13d                   #  6     0x57bee  3      
  pushq %r12                         #  7     0x57bf1  3      
  movl %esi, %r12d                   #  8     0x57bf4  3      
  pushq %rbx                         #  9     0x57bf7  2      
  movl %edi, %ebx                    #  10    0x57bf9  2      
  subl $0x180, %esp                  #  11    0x57bfb  6      
  addq %r15, %rsp                    #  12    0x57c01  3      
  nop                                #  13    0x57c04  1      
  movl %ebx, %ebx                    #  14    0x57c05  2      
  cmpb $0x5f, (%r15,%rbx,1)          #  15    0x57c07  5      
  je .L_57fa0                        #  16    0x57c0c  6      
  nop                                #  17    0x57c12  1      
  nop                                #  18    0x57c13  1      
.L_57c20:                            #        0x57c14  0      
  movl $0x10022830, %edi             #  19    0x57c14  5      
  movl $0x8, %ecx                    #  20    0x57c19  5      
  movq %rbx, %rsi                    #  21    0x57c1e  3      
  movl %esi, %esi                    #  22    0x57c21  2      
  leaq (%r15,%rsi,1), %rsi           #  23    0x57c23  4      
  movl %edi, %edi                    #  24    0x57c27  2      
  leaq (%r15,%rdi,1), %rdi           #  25    0x57c29  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  26    0x57c2d  3      
  movl %esi, %esi                    #  27    0x57c30  2      
  movl %edi, %edi                    #  28    0x57c32  2      
  nop                                #  29    0x57c34  1      
  jne .L_57c80                       #  30    0x57c35  6      
  movl %ebx, %ebx                    #  31    0x57c3b  2      
  movzbl 0x8(%r15,%rbx,1), %eax      #  32    0x57c3d  6      
  cmpb $0x5f, %al                    #  33    0x57c43  2      
  je .L_57ee0                        #  34    0x57c45  6      
  cmpb $0x2e, %al                    #  35    0x57c4b  2      
  je .L_57ee0                        #  36    0x57c4d  6      
  cmpb $0x24, %al                    #  37    0x57c53  2      
  nop                                #  38    0x57c55  1      
  je .L_57ee0                        #  39    0x57c56  6      
  nop                                #  40    0x57c5c  1      
  nop                                #  41    0x57c5d  1      
.L_57c80:                            #        0x57c5e  0      
  xorl %eax, %eax                    #  42    0x57c5e  2      
  testb $0x10, %r12b                 #  43    0x57c60  4      
  movl $0x1, %edx                    #  44    0x57c64  5      
  je .L_57ea0                        #  45    0x57c69  6      
  nop                                #  46    0x57c6f  1      
.L_57ca0:                            #        0x57c70  0      
  movl %ebx, %edi                    #  47    0x57c70  2      
  movl %edx, -0x198(%rbp)            #  48    0x57c72  6      
  nop                                #  49    0x57c78  1      
  nop                                #  50    0x57c79  1      
  callq .strlen                      #  51    0x57c7a  5      
  leal (%rax,%rbx,1), %ecx           #  52    0x57c7f  3      
  movl %eax, -0x3c(%rbp)             #  53    0x57c82  3      
  movl %ebx, -0x60(%rbp)             #  54    0x57c85  3      
  movl %ebx, -0x54(%rbp)             #  55    0x57c88  3      
  movl %esp, %ebx                    #  56    0x57c8b  2      
  movl -0x198(%rbp), %edx            #  57    0x57c8d  6      
  movl %ecx, -0x5c(%rbp)             #  58    0x57c93  3      
  leal (%rax,%rax,1), %ecx           #  59    0x57c96  3      
  shll $0x2, %eax                    #  60    0x57c99  3      
  nop                                #  61    0x57c9c  1      
  movl %r12d, -0x58(%rbp)            #  62    0x57c9d  4      
  movl $0x0, -0x4c(%rbp)             #  63    0x57ca1  7      
  movl %ecx, -0x48(%rbp)             #  64    0x57ca8  3      
  leal (%rax,%rcx,1), %ecx           #  65    0x57cab  3      
  movl %eax, %eax                    #  66    0x57cae  2      
  addq $0x1e, %rax                   #  67    0x57cb0  4      
  movl $0x0, -0x40(%rbp)             #  68    0x57cb4  7      
  xchgw %ax, %ax                     #  69    0x57cbb  3      
  movl $0x0, -0x38(%rbp)             #  70    0x57cbe  7      
  shll $0x2, %ecx                    #  71    0x57cc5  3      
  shrq $0x4, %rax                    #  72    0x57cc8  4      
  movl $0x0, -0x34(%rbp)             #  73    0x57ccc  7      
  movl %ecx, %ecx                    #  74    0x57cd3  2      
  shlq $0x4, %rax                    #  75    0x57cd5  4      
  nop                                #  76    0x57cd9  1      
  movl $0x0, -0x30(%rbp)             #  77    0x57cda  7      
  addq $0x1e, %rcx                   #  78    0x57ce1  4      
  shrq $0x4, %rcx                    #  79    0x57ce5  4      
  shlq $0x4, %rcx                    #  80    0x57ce9  4      
  subl %ecx, %esp                    #  81    0x57ced  2      
  addq %r15, %rsp                    #  82    0x57cef  3      
  leal 0xf(%rsp), %ecx               #  83    0x57cf2  4      
  nop                                #  84    0x57cf6  1      
  subl %eax, %esp                    #  85    0x57cf7  2      
  addq %r15, %rsp                    #  86    0x57cf9  3      
  leal 0xf(%rsp), %eax               #  87    0x57cfc  4      
  andl $0xfffffff0, %ecx             #  88    0x57d00  6      
  andl $0xfffffff0, %eax             #  89    0x57d06  5      
  testl %edx, %edx                   #  90    0x57d0b  2      
  movl %ecx, -0x50(%rbp)             #  91    0x57d0d  3      
  movl %eax, -0x44(%rbp)             #  92    0x57d10  3      
  jne .L_57fc0                       #  93    0x57d13  6      
  movl -0x54(%rbp), %eax             #  94    0x57d19  3      
  movl %eax, %eax                    #  95    0x57d1c  2      
  cmpb $0x5f, (%r15,%rax,1)          #  96    0x57d1e  5      
  je .L_58040                        #  97    0x57d23  6      
  nop                                #  98    0x57d29  1      
  nop                                #  99    0x57d2a  1      
.L_57d80:                            #        0x57d2b  0      
  xorl %esi, %esi                    #  100   0x57d2b  2      
  nop                                #  101   0x57d2d  1      
  nop                                #  102   0x57d2e  1      
.L_57da0:                            #        0x57d2f  0      
  testb $0x1, %r12b                  #  103   0x57d2f  4      
  je .L_57dc0                        #  104   0x57d33  6      
  movl -0x54(%rbp), %eax             #  105   0x57d39  3      
  movl %eax, %eax                    #  106   0x57d3c  2      
  cmpb $0x0, (%r15,%rax,1)           #  107   0x57d3e  5      
  jne .L_58000                       #  108   0x57d43  6      
  nop                                #  109   0x57d49  1      
.L_57dc0:                            #        0x57d4a  0      
  testq %rsi, %rsi                   #  110   0x57d4a  3      
  je .L_58000                        #  111   0x57d4d  6      
  movl %r12d, -0x190(%rbp)           #  112   0x57d53  7      
  leal -0x190(%rbp), %r12d           #  113   0x57d5a  7      
  nop                                #  114   0x57d61  1      
  movl $0x0, -0x8c(%rbp)             #  115   0x57d62  10     
  movb $0x0, -0x88(%rbp)             #  116   0x57d6c  7      
  movl $0x0, -0x7c(%rbp)             #  117   0x57d73  7      
  movl %r12d, %edi                   #  118   0x57d7a  3      
  nop                                #  119   0x57d7d  1      
  movl $0x0, -0x78(%rbp)             #  120   0x57d7e  7      
  movl %r13d, -0x84(%rbp)            #  121   0x57d85  7      
  movl %r14d, -0x80(%rbp)            #  122   0x57d8c  4      
  movl $0x0, -0x74(%rbp)             #  123   0x57d90  7      
  xchgw %ax, %ax                     #  124   0x57d97  3      
  callq .d_print_comp                #  125   0x57d9a  5      
  movl -0x8c(%rbp), %esi             #  126   0x57d9f  6      
  leaq 0x4(%r12), %rdi               #  127   0x57da5  5      
  movl -0x80(%rbp), %edx             #  128   0x57daa  3      
  movslq %esi, %rax                  #  129   0x57dad  3      
  movl %eax, %eax                    #  130   0x57db0  2      
  movb $0x0, -0x18c(%rbp,%rax,1)     #  131   0x57db2  8      
  nop                                #  132   0x57dba  1      
  movl -0x84(%rbp), %eax             #  133   0x57dbb  6      
  nop                                #  134   0x57dc1  1      
  nop                                #  135   0x57dc2  1      
  andl $0xffffffe0, %eax             #  136   0x57dc3  5      
  addq %r15, %rax                    #  137   0x57dc8  3      
  callq %rax                         #  138   0x57dcb  2      
  xorl %eax, %eax                    #  139   0x57dcd  2      
  cmpl $0x0, -0x74(%rbp)             #  140   0x57dcf  4      
  movl $0x0, -0x8c(%rbp)             #  141   0x57dd3  10     
  sete %al                           #  142   0x57ddd  3      
  nop                                #  143   0x57de0  1      
.L_57e80:                            #        0x57de1  0      
  movl %ebx, %esp                    #  144   0x57de1  2      
  addq %r15, %rsp                    #  145   0x57de3  3      
  nop                                #  146   0x57de6  1      
  nop                                #  147   0x57de7  1      
.L_57ea0:                            #        0x57de8  0      
  leal -0x20(%rbp), %esp             #  148   0x57de8  3      
  addq %r15, %rsp                    #  149   0x57deb  3      
  popq %rbx                          #  150   0x57dee  2      
  popq %r12                          #  151   0x57df0  3      
  popq %r13                          #  152   0x57df3  3      
  popq %r14                          #  153   0x57df6  3      
  popq %r11                          #  154   0x57df9  3      
  movl %r11d, %ebp                   #  155   0x57dfc  3      
  addq %r15, %rbp                    #  156   0x57dff  3      
  popq %r11                          #  157   0x57e02  3      
  nop                                #  158   0x57e05  1      
  andl $0xffffffe0, %r11d            #  159   0x57e06  7      
  addq %r15, %r11                    #  160   0x57e0d  3      
  jmpq %r11                          #  161   0x57e10  3      
  nop                                #  162   0x57e13  1      
  nop                                #  163   0x57e14  1      
.L_57ee0:                            #        0x57e15  0      
  movl %ebx, %ebx                    #  164   0x57e15  2      
  movzbl 0x9(%r15,%rbx,1), %eax      #  165   0x57e17  6      
  cmpb $0x49, %al                    #  166   0x57e1d  2      
  sete %dl                           #  167   0x57e1f  3      
  jne .L_58020                       #  168   0x57e22  6      
  nop                                #  169   0x57e28  1      
.L_57f00:                            #        0x57e29  0      
  movl %ebx, %ebx                    #  170   0x57e29  2      
  cmpb $0x5f, 0xa(%r15,%rbx,1)       #  171   0x57e2b  6      
  jne .L_57c80                       #  172   0x57e31  6      
  cmpb $0x1, %dl                     #  173   0x57e37  3      
  movl $0x100229cd, %eax             #  174   0x57e3a  5      
  movl $0x100229b0, %edi             #  175   0x57e3f  5      
  sbbl %esi, %esi                    #  176   0x57e44  2      
  addl $0x1d, %esi                   #  177   0x57e46  3      
  testb %dl, %dl                     #  178   0x57e49  2      
  movl %r14d, %edx                   #  179   0x57e4b  3      
  cmovneq %rax, %rdi                 #  180   0x57e4e  4      
  addl $0xb, %ebx                    #  181   0x57e52  3      
  nop                                #  182   0x57e55  1      
  andl $0xffffffe0, %r13d            #  183   0x57e56  7      
  addq %r15, %r13                    #  184   0x57e5d  3      
  callq %r13                         #  185   0x57e60  3      
  movl %ebx, %edi                    #  186   0x57e63  2      
  nop                                #  187   0x57e65  1      
  nop                                #  188   0x57e66  1      
  callq .strlen                      #  189   0x57e67  5      
  movl %r14d, %edx                   #  190   0x57e6c  3      
  movl %eax, %esi                    #  191   0x57e6f  2      
  movl %ebx, %edi                    #  192   0x57e71  2      
  nop                                #  193   0x57e73  1      
  andl $0xffffffe0, %r13d            #  194   0x57e74  7      
  addq %r15, %r13                    #  195   0x57e7b  3      
  callq %r13                         #  196   0x57e7e  3      
  movl $0x1, %eax                    #  197   0x57e81  5      
  jmpq .L_57ea0                      #  198   0x57e86  5      
  nop                                #  199   0x57e8b  1      
  nop                                #  200   0x57e8c  1      
.L_57fa0:                            #        0x57e8d  0      
  xorl %edx, %edx                    #  201   0x57e8d  2      
  movl %ebx, %ebx                    #  202   0x57e8f  2      
  cmpb $0x5a, 0x1(%r15,%rbx,1)       #  203   0x57e91  6      
  jne .L_57c20                       #  204   0x57e97  6      
  jmpq .L_57ca0                      #  205   0x57e9d  5      
  nop                                #  206   0x57ea2  1      
.L_57fc0:                            #        0x57ea3  0      
  leal -0x60(%rbp), %edi             #  207   0x57ea3  3      
  nop                                #  208   0x57ea6  1      
  nop                                #  209   0x57ea7  1      
  callq .d_type                      #  210   0x57ea8  5      
  movl %eax, %esi                    #  211   0x57ead  2      
  jmpq .L_57da0                      #  212   0x57eaf  5      
  nop                                #  213   0x57eb4  1      
  nop                                #  214   0x57eb5  1      
.L_58000:                            #        0x57eb6  0      
  xorl %eax, %eax                    #  215   0x57eb6  2      
  jmpq .L_57e80                      #  216   0x57eb8  5      
  nop                                #  217   0x57ebd  1      
  nop                                #  218   0x57ebe  1      
.L_58020:                            #        0x57ebf  0      
  cmpb $0x44, %al                    #  219   0x57ebf  2      
  jne .L_57c80                       #  220   0x57ec1  6      
  jmpq .L_57f00                      #  221   0x57ec7  5      
  nop                                #  222   0x57ecc  1      
  nop                                #  223   0x57ecd  1      
.L_58040:                            #        0x57ece  0      
  addl $0x1, %eax                    #  224   0x57ece  3      
  movl %eax, -0x54(%rbp)             #  225   0x57ed1  3      
  movl %eax, %eax                    #  226   0x57ed4  2      
  cmpb $0x5a, (%r15,%rax,1)          #  227   0x57ed6  5      
  jne .L_57d80                       #  228   0x57edb  6      
  leal -0x60(%rbp), %edi             #  229   0x57ee1  3      
  addl $0x1, %eax                    #  230   0x57ee4  3      
  movl $0x1, %esi                    #  231   0x57ee7  5      
  xchgw %ax, %ax                     #  232   0x57eec  3      
  movl %eax, -0x54(%rbp)             #  233   0x57eef  3      
  nop                                #  234   0x57ef2  1      
  nop                                #  235   0x57ef3  1      
  callq .d_encoding                  #  236   0x57ef4  5      
  movl %eax, %esi                    #  237   0x57ef9  2      
  jmpq .L_57da0                      #  238   0x57efb  5      
  nop                                #  239   0x57f00  1      
  nop                                #  240   0x57f01  1      
                                                              
.size d_demangle_callback, .-d_demangle_callback

