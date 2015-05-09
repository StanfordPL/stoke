  .text
  .globl d_demangle_callback
  .type d_demangle_callback, @function

#! file-offset 0x57b40
#! rip-offset  0x57b40
#! capacity    1216 bytes

# Text                               #  Line  RIP      Bytes  
.d_demangle_callback:                #        0x57b40  0      
  pushq %rbp                         #  1     0x57b40  2      
  movq %rsp, %rbp                    #  2     0x57b42  3      
  pushq %r14                         #  3     0x57b45  3      
  movl %ecx, %r14d                   #  4     0x57b48  3      
  pushq %r13                         #  5     0x57b4b  3      
  movl %edx, %r13d                   #  6     0x57b4e  3      
  pushq %r12                         #  7     0x57b51  3      
  movl %esi, %r12d                   #  8     0x57b54  3      
  pushq %rbx                         #  9     0x57b57  2      
  movl %edi, %ebx                    #  10    0x57b59  2      
  subl $0x180, %esp                  #  11    0x57b5b  6      
  addq %r15, %rsp                    #  12    0x57b61  3      
  nop                                #  13    0x57b64  1      
  movl %ebx, %ebx                    #  14    0x57b65  2      
  cmpb $0x5f, (%r15,%rbx,1)          #  15    0x57b67  5      
  je .L_57f00                        #  16    0x57b6c  6      
  nop                                #  17    0x57b72  1      
  nop                                #  18    0x57b73  1      
.L_57b80:                            #        0x57b74  0      
  movl $0x10022830, %edi             #  19    0x57b74  5      
  movl $0x8, %ecx                    #  20    0x57b79  5      
  movq %rbx, %rsi                    #  21    0x57b7e  3      
  movl %esi, %esi                    #  22    0x57b81  2      
  leaq (%r15,%rsi,1), %rsi           #  23    0x57b83  4      
  movl %edi, %edi                    #  24    0x57b87  2      
  leaq (%r15,%rdi,1), %rdi           #  25    0x57b89  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  26    0x57b8d  3      
  movl %esi, %esi                    #  27    0x57b90  2      
  movl %edi, %edi                    #  28    0x57b92  2      
  nop                                #  29    0x57b94  1      
  jne .L_57be0                       #  30    0x57b95  6      
  movl %ebx, %ebx                    #  31    0x57b9b  2      
  movzbl 0x8(%r15,%rbx,1), %eax      #  32    0x57b9d  6      
  cmpb $0x5f, %al                    #  33    0x57ba3  2      
  je .L_57e40                        #  34    0x57ba5  6      
  cmpb $0x2e, %al                    #  35    0x57bab  2      
  je .L_57e40                        #  36    0x57bad  6      
  cmpb $0x24, %al                    #  37    0x57bb3  2      
  nop                                #  38    0x57bb5  1      
  je .L_57e40                        #  39    0x57bb6  6      
  nop                                #  40    0x57bbc  1      
  nop                                #  41    0x57bbd  1      
.L_57be0:                            #        0x57bbe  0      
  xorl %eax, %eax                    #  42    0x57bbe  2      
  testb $0x10, %r12b                 #  43    0x57bc0  4      
  movl $0x1, %edx                    #  44    0x57bc4  5      
  je .L_57e00                        #  45    0x57bc9  6      
  nop                                #  46    0x57bcf  1      
.L_57c00:                            #        0x57bd0  0      
  movl %ebx, %edi                    #  47    0x57bd0  2      
  movl %edx, -0x198(%rbp)            #  48    0x57bd2  6      
  nop                                #  49    0x57bd8  1      
  nop                                #  50    0x57bd9  1      
  callq .strlen                      #  51    0x57bda  5      
  leal (%rax,%rbx,1), %ecx           #  52    0x57bdf  3      
  movl %eax, -0x3c(%rbp)             #  53    0x57be2  3      
  movl %ebx, -0x60(%rbp)             #  54    0x57be5  3      
  movl %ebx, -0x54(%rbp)             #  55    0x57be8  3      
  movl %esp, %ebx                    #  56    0x57beb  2      
  movl -0x198(%rbp), %edx            #  57    0x57bed  6      
  movl %ecx, -0x5c(%rbp)             #  58    0x57bf3  3      
  leal (%rax,%rax,1), %ecx           #  59    0x57bf6  3      
  shll $0x2, %eax                    #  60    0x57bf9  3      
  nop                                #  61    0x57bfc  1      
  movl %r12d, -0x58(%rbp)            #  62    0x57bfd  4      
  movl $0x0, -0x4c(%rbp)             #  63    0x57c01  7      
  movl %ecx, -0x48(%rbp)             #  64    0x57c08  3      
  leal (%rax,%rcx,1), %ecx           #  65    0x57c0b  3      
  movl %eax, %eax                    #  66    0x57c0e  2      
  addq $0x1e, %rax                   #  67    0x57c10  4      
  movl $0x0, -0x40(%rbp)             #  68    0x57c14  7      
  xchgw %ax, %ax                     #  69    0x57c1b  3      
  movl $0x0, -0x38(%rbp)             #  70    0x57c1e  7      
  shll $0x2, %ecx                    #  71    0x57c25  3      
  shrq $0x4, %rax                    #  72    0x57c28  4      
  movl $0x0, -0x34(%rbp)             #  73    0x57c2c  7      
  movl %ecx, %ecx                    #  74    0x57c33  2      
  shlq $0x4, %rax                    #  75    0x57c35  4      
  nop                                #  76    0x57c39  1      
  movl $0x0, -0x30(%rbp)             #  77    0x57c3a  7      
  addq $0x1e, %rcx                   #  78    0x57c41  4      
  shrq $0x4, %rcx                    #  79    0x57c45  4      
  shlq $0x4, %rcx                    #  80    0x57c49  4      
  subl %ecx, %esp                    #  81    0x57c4d  2      
  addq %r15, %rsp                    #  82    0x57c4f  3      
  leal 0xf(%rsp), %ecx               #  83    0x57c52  4      
  nop                                #  84    0x57c56  1      
  subl %eax, %esp                    #  85    0x57c57  2      
  addq %r15, %rsp                    #  86    0x57c59  3      
  leal 0xf(%rsp), %eax               #  87    0x57c5c  4      
  andl $0xfffffff0, %ecx             #  88    0x57c60  6      
  andl $0xfffffff0, %eax             #  89    0x57c66  5      
  testl %edx, %edx                   #  90    0x57c6b  2      
  movl %ecx, -0x50(%rbp)             #  91    0x57c6d  3      
  movl %eax, -0x44(%rbp)             #  92    0x57c70  3      
  jne .L_57f20                       #  93    0x57c73  6      
  movl -0x54(%rbp), %eax             #  94    0x57c79  3      
  movl %eax, %eax                    #  95    0x57c7c  2      
  cmpb $0x5f, (%r15,%rax,1)          #  96    0x57c7e  5      
  je .L_57fa0                        #  97    0x57c83  6      
  nop                                #  98    0x57c89  1      
  nop                                #  99    0x57c8a  1      
.L_57ce0:                            #        0x57c8b  0      
  xorl %esi, %esi                    #  100   0x57c8b  2      
  nop                                #  101   0x57c8d  1      
  nop                                #  102   0x57c8e  1      
.L_57d00:                            #        0x57c8f  0      
  testb $0x1, %r12b                  #  103   0x57c8f  4      
  je .L_57d20                        #  104   0x57c93  6      
  movl -0x54(%rbp), %eax             #  105   0x57c99  3      
  movl %eax, %eax                    #  106   0x57c9c  2      
  cmpb $0x0, (%r15,%rax,1)           #  107   0x57c9e  5      
  jne .L_57f60                       #  108   0x57ca3  6      
  nop                                #  109   0x57ca9  1      
.L_57d20:                            #        0x57caa  0      
  testq %rsi, %rsi                   #  110   0x57caa  3      
  je .L_57f60                        #  111   0x57cad  6      
  movl %r12d, -0x190(%rbp)           #  112   0x57cb3  7      
  leal -0x190(%rbp), %r12d           #  113   0x57cba  7      
  nop                                #  114   0x57cc1  1      
  movl $0x0, -0x8c(%rbp)             #  115   0x57cc2  10     
  movb $0x0, -0x88(%rbp)             #  116   0x57ccc  7      
  movl $0x0, -0x7c(%rbp)             #  117   0x57cd3  7      
  movl %r12d, %edi                   #  118   0x57cda  3      
  nop                                #  119   0x57cdd  1      
  movl $0x0, -0x78(%rbp)             #  120   0x57cde  7      
  movl %r13d, -0x84(%rbp)            #  121   0x57ce5  7      
  movl %r14d, -0x80(%rbp)            #  122   0x57cec  4      
  movl $0x0, -0x74(%rbp)             #  123   0x57cf0  7      
  xchgw %ax, %ax                     #  124   0x57cf7  3      
  callq .d_print_comp                #  125   0x57cfa  5      
  movl -0x8c(%rbp), %esi             #  126   0x57cff  6      
  leaq 0x4(%r12), %rdi               #  127   0x57d05  5      
  movl -0x80(%rbp), %edx             #  128   0x57d0a  3      
  movslq %esi, %rax                  #  129   0x57d0d  3      
  movl %eax, %eax                    #  130   0x57d10  2      
  movb $0x0, -0x18c(%rbp,%rax,1)     #  131   0x57d12  8      
  nop                                #  132   0x57d1a  1      
  movl -0x84(%rbp), %eax             #  133   0x57d1b  6      
  nop                                #  134   0x57d21  1      
  nop                                #  135   0x57d22  1      
  andl $0xffffffe0, %eax             #  136   0x57d23  5      
  addq %r15, %rax                    #  137   0x57d28  3      
  callq %rax                         #  138   0x57d2b  2      
  xorl %eax, %eax                    #  139   0x57d2d  2      
  cmpl $0x0, -0x74(%rbp)             #  140   0x57d2f  4      
  movl $0x0, -0x8c(%rbp)             #  141   0x57d33  10     
  sete %al                           #  142   0x57d3d  3      
  nop                                #  143   0x57d40  1      
.L_57de0:                            #        0x57d41  0      
  movl %ebx, %esp                    #  144   0x57d41  2      
  addq %r15, %rsp                    #  145   0x57d43  3      
  nop                                #  146   0x57d46  1      
  nop                                #  147   0x57d47  1      
.L_57e00:                            #        0x57d48  0      
  leal -0x20(%rbp), %esp             #  148   0x57d48  3      
  addq %r15, %rsp                    #  149   0x57d4b  3      
  popq %rbx                          #  150   0x57d4e  2      
  popq %r12                          #  151   0x57d50  3      
  popq %r13                          #  152   0x57d53  3      
  popq %r14                          #  153   0x57d56  3      
  popq %r11                          #  154   0x57d59  3      
  movl %r11d, %ebp                   #  155   0x57d5c  3      
  addq %r15, %rbp                    #  156   0x57d5f  3      
  popq %r11                          #  157   0x57d62  3      
  nop                                #  158   0x57d65  1      
  andl $0xffffffe0, %r11d            #  159   0x57d66  7      
  addq %r15, %r11                    #  160   0x57d6d  3      
  jmpq %r11                          #  161   0x57d70  3      
  nop                                #  162   0x57d73  1      
  nop                                #  163   0x57d74  1      
.L_57e40:                            #        0x57d75  0      
  movl %ebx, %ebx                    #  164   0x57d75  2      
  movzbl 0x9(%r15,%rbx,1), %eax      #  165   0x57d77  6      
  cmpb $0x49, %al                    #  166   0x57d7d  2      
  sete %dl                           #  167   0x57d7f  3      
  jne .L_57f80                       #  168   0x57d82  6      
  nop                                #  169   0x57d88  1      
.L_57e60:                            #        0x57d89  0      
  movl %ebx, %ebx                    #  170   0x57d89  2      
  cmpb $0x5f, 0xa(%r15,%rbx,1)       #  171   0x57d8b  6      
  jne .L_57be0                       #  172   0x57d91  6      
  cmpb $0x1, %dl                     #  173   0x57d97  3      
  movl $0x100229cd, %eax             #  174   0x57d9a  5      
  movl $0x100229b0, %edi             #  175   0x57d9f  5      
  sbbl %esi, %esi                    #  176   0x57da4  2      
  addl $0x1d, %esi                   #  177   0x57da6  3      
  testb %dl, %dl                     #  178   0x57da9  2      
  movl %r14d, %edx                   #  179   0x57dab  3      
  cmovneq %rax, %rdi                 #  180   0x57dae  4      
  addl $0xb, %ebx                    #  181   0x57db2  3      
  nop                                #  182   0x57db5  1      
  andl $0xffffffe0, %r13d            #  183   0x57db6  7      
  addq %r15, %r13                    #  184   0x57dbd  3      
  callq %r13                         #  185   0x57dc0  3      
  movl %ebx, %edi                    #  186   0x57dc3  2      
  nop                                #  187   0x57dc5  1      
  nop                                #  188   0x57dc6  1      
  callq .strlen                      #  189   0x57dc7  5      
  movl %r14d, %edx                   #  190   0x57dcc  3      
  movl %eax, %esi                    #  191   0x57dcf  2      
  movl %ebx, %edi                    #  192   0x57dd1  2      
  nop                                #  193   0x57dd3  1      
  andl $0xffffffe0, %r13d            #  194   0x57dd4  7      
  addq %r15, %r13                    #  195   0x57ddb  3      
  callq %r13                         #  196   0x57dde  3      
  movl $0x1, %eax                    #  197   0x57de1  5      
  jmpq .L_57e00                      #  198   0x57de6  5      
  nop                                #  199   0x57deb  1      
  nop                                #  200   0x57dec  1      
.L_57f00:                            #        0x57ded  0      
  xorl %edx, %edx                    #  201   0x57ded  2      
  movl %ebx, %ebx                    #  202   0x57def  2      
  cmpb $0x5a, 0x1(%r15,%rbx,1)       #  203   0x57df1  6      
  jne .L_57b80                       #  204   0x57df7  6      
  jmpq .L_57c00                      #  205   0x57dfd  5      
  nop                                #  206   0x57e02  1      
.L_57f20:                            #        0x57e03  0      
  leal -0x60(%rbp), %edi             #  207   0x57e03  3      
  nop                                #  208   0x57e06  1      
  nop                                #  209   0x57e07  1      
  callq .d_type                      #  210   0x57e08  5      
  movl %eax, %esi                    #  211   0x57e0d  2      
  jmpq .L_57d00                      #  212   0x57e0f  5      
  nop                                #  213   0x57e14  1      
  nop                                #  214   0x57e15  1      
.L_57f60:                            #        0x57e16  0      
  xorl %eax, %eax                    #  215   0x57e16  2      
  jmpq .L_57de0                      #  216   0x57e18  5      
  nop                                #  217   0x57e1d  1      
  nop                                #  218   0x57e1e  1      
.L_57f80:                            #        0x57e1f  0      
  cmpb $0x44, %al                    #  219   0x57e1f  2      
  jne .L_57be0                       #  220   0x57e21  6      
  jmpq .L_57e60                      #  221   0x57e27  5      
  nop                                #  222   0x57e2c  1      
  nop                                #  223   0x57e2d  1      
.L_57fa0:                            #        0x57e2e  0      
  addl $0x1, %eax                    #  224   0x57e2e  3      
  movl %eax, -0x54(%rbp)             #  225   0x57e31  3      
  movl %eax, %eax                    #  226   0x57e34  2      
  cmpb $0x5a, (%r15,%rax,1)          #  227   0x57e36  5      
  jne .L_57ce0                       #  228   0x57e3b  6      
  leal -0x60(%rbp), %edi             #  229   0x57e41  3      
  addl $0x1, %eax                    #  230   0x57e44  3      
  movl $0x1, %esi                    #  231   0x57e47  5      
  xchgw %ax, %ax                     #  232   0x57e4c  3      
  movl %eax, -0x54(%rbp)             #  233   0x57e4f  3      
  nop                                #  234   0x57e52  1      
  nop                                #  235   0x57e53  1      
  callq .d_encoding                  #  236   0x57e54  5      
  movl %eax, %esi                    #  237   0x57e59  2      
  jmpq .L_57d00                      #  238   0x57e5b  5      
  nop                                #  239   0x57e60  1      
  nop                                #  240   0x57e61  1      
                                                              
.size d_demangle_callback, .-d_demangle_callback

