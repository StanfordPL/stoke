  .text
  .globl d_demangle_callback
  .type d_demangle_callback, @function

#! file-offset 0x57b60
#! rip-offset  0x57b60
#! capacity    1216 bytes

# Text                               #  Line  RIP      Bytes  
.d_demangle_callback:                #        0x57b60  0      
  pushq %rbp                         #  1     0x57b60  2      
  movq %rsp, %rbp                    #  2     0x57b62  3      
  pushq %r14                         #  3     0x57b65  3      
  movl %ecx, %r14d                   #  4     0x57b68  3      
  pushq %r13                         #  5     0x57b6b  3      
  movl %edx, %r13d                   #  6     0x57b6e  3      
  pushq %r12                         #  7     0x57b71  3      
  movl %esi, %r12d                   #  8     0x57b74  3      
  pushq %rbx                         #  9     0x57b77  2      
  movl %edi, %ebx                    #  10    0x57b79  2      
  subl $0x180, %esp                  #  11    0x57b7b  6      
  addq %r15, %rsp                    #  12    0x57b81  3      
  nop                                #  13    0x57b84  1      
  movl %ebx, %ebx                    #  14    0x57b85  2      
  cmpb $0x5f, (%r15,%rbx,1)          #  15    0x57b87  5      
  je .L_57f20                        #  16    0x57b8c  6      
  nop                                #  17    0x57b92  1      
  nop                                #  18    0x57b93  1      
.L_57ba0:                            #        0x57b94  0      
  movl $0x10022830, %edi             #  19    0x57b94  5      
  movl $0x8, %ecx                    #  20    0x57b99  5      
  movq %rbx, %rsi                    #  21    0x57b9e  3      
  movl %esi, %esi                    #  22    0x57ba1  2      
  leaq (%r15,%rsi,1), %rsi           #  23    0x57ba3  4      
  movl %edi, %edi                    #  24    0x57ba7  2      
  leaq (%r15,%rdi,1), %rdi           #  25    0x57ba9  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  26    0x57bad  3      
  movl %esi, %esi                    #  27    0x57bb0  2      
  movl %edi, %edi                    #  28    0x57bb2  2      
  nop                                #  29    0x57bb4  1      
  jne .L_57c00                       #  30    0x57bb5  6      
  movl %ebx, %ebx                    #  31    0x57bbb  2      
  movzbl 0x8(%r15,%rbx,1), %eax      #  32    0x57bbd  6      
  cmpb $0x5f, %al                    #  33    0x57bc3  2      
  je .L_57e60                        #  34    0x57bc5  6      
  cmpb $0x2e, %al                    #  35    0x57bcb  2      
  je .L_57e60                        #  36    0x57bcd  6      
  cmpb $0x24, %al                    #  37    0x57bd3  2      
  nop                                #  38    0x57bd5  1      
  je .L_57e60                        #  39    0x57bd6  6      
  nop                                #  40    0x57bdc  1      
  nop                                #  41    0x57bdd  1      
.L_57c00:                            #        0x57bde  0      
  xorl %eax, %eax                    #  42    0x57bde  2      
  testb $0x10, %r12b                 #  43    0x57be0  4      
  movl $0x1, %edx                    #  44    0x57be4  5      
  je .L_57e20                        #  45    0x57be9  6      
  nop                                #  46    0x57bef  1      
.L_57c20:                            #        0x57bf0  0      
  movl %ebx, %edi                    #  47    0x57bf0  2      
  movl %edx, -0x198(%rbp)            #  48    0x57bf2  6      
  nop                                #  49    0x57bf8  1      
  nop                                #  50    0x57bf9  1      
  callq .strlen                      #  51    0x57bfa  5      
  leal (%rax,%rbx,1), %ecx           #  52    0x57bff  3      
  movl %eax, -0x3c(%rbp)             #  53    0x57c02  3      
  movl %ebx, -0x60(%rbp)             #  54    0x57c05  3      
  movl %ebx, -0x54(%rbp)             #  55    0x57c08  3      
  movl %esp, %ebx                    #  56    0x57c0b  2      
  movl -0x198(%rbp), %edx            #  57    0x57c0d  6      
  movl %ecx, -0x5c(%rbp)             #  58    0x57c13  3      
  leal (%rax,%rax,1), %ecx           #  59    0x57c16  3      
  shll $0x2, %eax                    #  60    0x57c19  3      
  nop                                #  61    0x57c1c  1      
  movl %r12d, -0x58(%rbp)            #  62    0x57c1d  4      
  movl $0x0, -0x4c(%rbp)             #  63    0x57c21  7      
  movl %ecx, -0x48(%rbp)             #  64    0x57c28  3      
  leal (%rax,%rcx,1), %ecx           #  65    0x57c2b  3      
  movl %eax, %eax                    #  66    0x57c2e  2      
  addq $0x1e, %rax                   #  67    0x57c30  4      
  movl $0x0, -0x40(%rbp)             #  68    0x57c34  7      
  xchgw %ax, %ax                     #  69    0x57c3b  3      
  movl $0x0, -0x38(%rbp)             #  70    0x57c3e  7      
  shll $0x2, %ecx                    #  71    0x57c45  3      
  shrq $0x4, %rax                    #  72    0x57c48  4      
  movl $0x0, -0x34(%rbp)             #  73    0x57c4c  7      
  movl %ecx, %ecx                    #  74    0x57c53  2      
  shlq $0x4, %rax                    #  75    0x57c55  4      
  nop                                #  76    0x57c59  1      
  movl $0x0, -0x30(%rbp)             #  77    0x57c5a  7      
  addq $0x1e, %rcx                   #  78    0x57c61  4      
  shrq $0x4, %rcx                    #  79    0x57c65  4      
  shlq $0x4, %rcx                    #  80    0x57c69  4      
  subl %ecx, %esp                    #  81    0x57c6d  2      
  addq %r15, %rsp                    #  82    0x57c6f  3      
  leal 0xf(%rsp), %ecx               #  83    0x57c72  4      
  nop                                #  84    0x57c76  1      
  subl %eax, %esp                    #  85    0x57c77  2      
  addq %r15, %rsp                    #  86    0x57c79  3      
  leal 0xf(%rsp), %eax               #  87    0x57c7c  4      
  andl $0xfffffff0, %ecx             #  88    0x57c80  6      
  andl $0xfffffff0, %eax             #  89    0x57c86  5      
  testl %edx, %edx                   #  90    0x57c8b  2      
  movl %ecx, -0x50(%rbp)             #  91    0x57c8d  3      
  movl %eax, -0x44(%rbp)             #  92    0x57c90  3      
  jne .L_57f40                       #  93    0x57c93  6      
  movl -0x54(%rbp), %eax             #  94    0x57c99  3      
  movl %eax, %eax                    #  95    0x57c9c  2      
  cmpb $0x5f, (%r15,%rax,1)          #  96    0x57c9e  5      
  je .L_57fc0                        #  97    0x57ca3  6      
  nop                                #  98    0x57ca9  1      
  nop                                #  99    0x57caa  1      
.L_57d00:                            #        0x57cab  0      
  xorl %esi, %esi                    #  100   0x57cab  2      
  nop                                #  101   0x57cad  1      
  nop                                #  102   0x57cae  1      
.L_57d20:                            #        0x57caf  0      
  testb $0x1, %r12b                  #  103   0x57caf  4      
  je .L_57d40                        #  104   0x57cb3  6      
  movl -0x54(%rbp), %eax             #  105   0x57cb9  3      
  movl %eax, %eax                    #  106   0x57cbc  2      
  cmpb $0x0, (%r15,%rax,1)           #  107   0x57cbe  5      
  jne .L_57f80                       #  108   0x57cc3  6      
  nop                                #  109   0x57cc9  1      
.L_57d40:                            #        0x57cca  0      
  testq %rsi, %rsi                   #  110   0x57cca  3      
  je .L_57f80                        #  111   0x57ccd  6      
  movl %r12d, -0x190(%rbp)           #  112   0x57cd3  7      
  leal -0x190(%rbp), %r12d           #  113   0x57cda  7      
  nop                                #  114   0x57ce1  1      
  movl $0x0, -0x8c(%rbp)             #  115   0x57ce2  10     
  movb $0x0, -0x88(%rbp)             #  116   0x57cec  7      
  movl $0x0, -0x7c(%rbp)             #  117   0x57cf3  7      
  movl %r12d, %edi                   #  118   0x57cfa  3      
  nop                                #  119   0x57cfd  1      
  movl $0x0, -0x78(%rbp)             #  120   0x57cfe  7      
  movl %r13d, -0x84(%rbp)            #  121   0x57d05  7      
  movl %r14d, -0x80(%rbp)            #  122   0x57d0c  4      
  movl $0x0, -0x74(%rbp)             #  123   0x57d10  7      
  xchgw %ax, %ax                     #  124   0x57d17  3      
  callq .d_print_comp                #  125   0x57d1a  5      
  movl -0x8c(%rbp), %esi             #  126   0x57d1f  6      
  leaq 0x4(%r12), %rdi               #  127   0x57d25  5      
  movl -0x80(%rbp), %edx             #  128   0x57d2a  3      
  movslq %esi, %rax                  #  129   0x57d2d  3      
  movl %eax, %eax                    #  130   0x57d30  2      
  movb $0x0, -0x18c(%rbp,%rax,1)     #  131   0x57d32  8      
  nop                                #  132   0x57d3a  1      
  movl -0x84(%rbp), %eax             #  133   0x57d3b  6      
  nop                                #  134   0x57d41  1      
  nop                                #  135   0x57d42  1      
  andl $0xffffffe0, %eax             #  136   0x57d43  5      
  addq %r15, %rax                    #  137   0x57d48  3      
  callq %rax                         #  138   0x57d4b  2      
  xorl %eax, %eax                    #  139   0x57d4d  2      
  cmpl $0x0, -0x74(%rbp)             #  140   0x57d4f  4      
  movl $0x0, -0x8c(%rbp)             #  141   0x57d53  10     
  sete %al                           #  142   0x57d5d  3      
  nop                                #  143   0x57d60  1      
.L_57e00:                            #        0x57d61  0      
  movl %ebx, %esp                    #  144   0x57d61  2      
  addq %r15, %rsp                    #  145   0x57d63  3      
  nop                                #  146   0x57d66  1      
  nop                                #  147   0x57d67  1      
.L_57e20:                            #        0x57d68  0      
  leal -0x20(%rbp), %esp             #  148   0x57d68  3      
  addq %r15, %rsp                    #  149   0x57d6b  3      
  popq %rbx                          #  150   0x57d6e  2      
  popq %r12                          #  151   0x57d70  3      
  popq %r13                          #  152   0x57d73  3      
  popq %r14                          #  153   0x57d76  3      
  popq %r11                          #  154   0x57d79  3      
  movl %r11d, %ebp                   #  155   0x57d7c  3      
  addq %r15, %rbp                    #  156   0x57d7f  3      
  popq %r11                          #  157   0x57d82  3      
  nop                                #  158   0x57d85  1      
  andl $0xffffffe0, %r11d            #  159   0x57d86  7      
  addq %r15, %r11                    #  160   0x57d8d  3      
  jmpq %r11                          #  161   0x57d90  3      
  nop                                #  162   0x57d93  1      
  nop                                #  163   0x57d94  1      
.L_57e60:                            #        0x57d95  0      
  movl %ebx, %ebx                    #  164   0x57d95  2      
  movzbl 0x9(%r15,%rbx,1), %eax      #  165   0x57d97  6      
  cmpb $0x49, %al                    #  166   0x57d9d  2      
  sete %dl                           #  167   0x57d9f  3      
  jne .L_57fa0                       #  168   0x57da2  6      
  nop                                #  169   0x57da8  1      
.L_57e80:                            #        0x57da9  0      
  movl %ebx, %ebx                    #  170   0x57da9  2      
  cmpb $0x5f, 0xa(%r15,%rbx,1)       #  171   0x57dab  6      
  jne .L_57c00                       #  172   0x57db1  6      
  cmpb $0x1, %dl                     #  173   0x57db7  3      
  movl $0x100229cd, %eax             #  174   0x57dba  5      
  movl $0x100229b0, %edi             #  175   0x57dbf  5      
  sbbl %esi, %esi                    #  176   0x57dc4  2      
  addl $0x1d, %esi                   #  177   0x57dc6  3      
  testb %dl, %dl                     #  178   0x57dc9  2      
  movl %r14d, %edx                   #  179   0x57dcb  3      
  cmovneq %rax, %rdi                 #  180   0x57dce  4      
  addl $0xb, %ebx                    #  181   0x57dd2  3      
  nop                                #  182   0x57dd5  1      
  andl $0xffffffe0, %r13d            #  183   0x57dd6  7      
  addq %r15, %r13                    #  184   0x57ddd  3      
  callq %r13                         #  185   0x57de0  3      
  movl %ebx, %edi                    #  186   0x57de3  2      
  nop                                #  187   0x57de5  1      
  nop                                #  188   0x57de6  1      
  callq .strlen                      #  189   0x57de7  5      
  movl %r14d, %edx                   #  190   0x57dec  3      
  movl %eax, %esi                    #  191   0x57def  2      
  movl %ebx, %edi                    #  192   0x57df1  2      
  nop                                #  193   0x57df3  1      
  andl $0xffffffe0, %r13d            #  194   0x57df4  7      
  addq %r15, %r13                    #  195   0x57dfb  3      
  callq %r13                         #  196   0x57dfe  3      
  movl $0x1, %eax                    #  197   0x57e01  5      
  jmpq .L_57e20                      #  198   0x57e06  5      
  nop                                #  199   0x57e0b  1      
  nop                                #  200   0x57e0c  1      
.L_57f20:                            #        0x57e0d  0      
  xorl %edx, %edx                    #  201   0x57e0d  2      
  movl %ebx, %ebx                    #  202   0x57e0f  2      
  cmpb $0x5a, 0x1(%r15,%rbx,1)       #  203   0x57e11  6      
  jne .L_57ba0                       #  204   0x57e17  6      
  jmpq .L_57c20                      #  205   0x57e1d  5      
  nop                                #  206   0x57e22  1      
.L_57f40:                            #        0x57e23  0      
  leal -0x60(%rbp), %edi             #  207   0x57e23  3      
  nop                                #  208   0x57e26  1      
  nop                                #  209   0x57e27  1      
  callq .d_type                      #  210   0x57e28  5      
  movl %eax, %esi                    #  211   0x57e2d  2      
  jmpq .L_57d20                      #  212   0x57e2f  5      
  nop                                #  213   0x57e34  1      
  nop                                #  214   0x57e35  1      
.L_57f80:                            #        0x57e36  0      
  xorl %eax, %eax                    #  215   0x57e36  2      
  jmpq .L_57e00                      #  216   0x57e38  5      
  nop                                #  217   0x57e3d  1      
  nop                                #  218   0x57e3e  1      
.L_57fa0:                            #        0x57e3f  0      
  cmpb $0x44, %al                    #  219   0x57e3f  2      
  jne .L_57c00                       #  220   0x57e41  6      
  jmpq .L_57e80                      #  221   0x57e47  5      
  nop                                #  222   0x57e4c  1      
  nop                                #  223   0x57e4d  1      
.L_57fc0:                            #        0x57e4e  0      
  addl $0x1, %eax                    #  224   0x57e4e  3      
  movl %eax, -0x54(%rbp)             #  225   0x57e51  3      
  movl %eax, %eax                    #  226   0x57e54  2      
  cmpb $0x5a, (%r15,%rax,1)          #  227   0x57e56  5      
  jne .L_57d00                       #  228   0x57e5b  6      
  leal -0x60(%rbp), %edi             #  229   0x57e61  3      
  addl $0x1, %eax                    #  230   0x57e64  3      
  movl $0x1, %esi                    #  231   0x57e67  5      
  xchgw %ax, %ax                     #  232   0x57e6c  3      
  movl %eax, -0x54(%rbp)             #  233   0x57e6f  3      
  nop                                #  234   0x57e72  1      
  nop                                #  235   0x57e73  1      
  callq .d_encoding                  #  236   0x57e74  5      
  movl %eax, %esi                    #  237   0x57e79  2      
  jmpq .L_57d20                      #  238   0x57e7b  5      
  nop                                #  239   0x57e80  1      
  nop                                #  240   0x57e81  1      
                                                              
.size d_demangle_callback, .-d_demangle_callback

