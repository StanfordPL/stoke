  .text
  .globl T_277
  .type T_277, @function

#! file-offset 0x66a40
#! rip-offset  0x66a40
#! capacity    896 bytes

# Text                          #  Line  RIP      Bytes  
.T_277:                         #        0x66a40  0      
  pushq %r13                    #  1     0x66a40  3      
  cmpl $0xf, %edi               #  2     0x66a43  3      
  pushq %r12                    #  3     0x66a46  3      
  pushq %rbx                    #  4     0x66a49  2      
  movl %edi, %ebx               #  5     0x66a4b  2      
  ja .L_66ba0                   #  6     0x66a4d  6      
  movl $0xffffffb0, %edx        #  7     0x66a53  5      
  movl $0x10, %ebx              #  8     0x66a58  5      
  nop                           #  9     0x66a5d  1      
.L_66a60:                       #        0x66a5e  0      
  cmpl %edx, %esi               #  10    0x66a5e  2      
  jb .L_66ac0                   #  11    0x66a60  6      
  nop                           #  12    0x66a66  1      
  nop                           #  13    0x66a67  1      
  callq .__errno                #  14    0x66a68  5      
  movl %eax, %eax               #  15    0x66a6d  2      
  xorl %r13d, %r13d             #  16    0x66a6f  3      
  movl %eax, %eax               #  17    0x66a72  2      
  movl $0xc, (%r15,%rax,1)      #  18    0x66a74  8      
  xchgw %ax, %ax                #  19    0x66a7c  3      
  nop                           #  20    0x66a7f  1      
.L_66aa0:                       #        0x66a80  0      
  popq %rbx                     #  21    0x66a80  2      
  popq %r12                     #  22    0x66a82  3      
  movl %r13d, %eax              #  23    0x66a85  3      
  popq %r13                     #  24    0x66a88  3      
  popq %r11                     #  25    0x66a8b  3      
  andl $0xffffffe0, %r11d       #  26    0x66a8e  7      
  addq %r15, %r11               #  27    0x66a95  3      
  jmpq %r11                     #  28    0x66a98  3      
  nop                           #  29    0x66a9b  1      
.L_66ac0:                       #        0x66a9c  0      
  cmpl $0xa, %esi               #  30    0x66a9c  3      
  movl $0x10, %r12d             #  31    0x66a9f  6      
  ja .L_66be0                   #  32    0x66aa5  6      
  xchgw %ax, %ax                #  33    0x66aab  3      
  nop                           #  34    0x66aae  1      
.L_66ae0:                       #        0x66aaf  0      
  leal 0xc(%r12,%rbx,1), %edi   #  35    0x66aaf  5      
  nop                           #  36    0x66ab4  1      
  nop                           #  37    0x66ab5  1      
  callq .malloc                 #  38    0x66ab6  5      
  movl %eax, %r13d              #  39    0x66abb  3      
  testq %r13, %r13              #  40    0x66abe  3      
  je .L_66aa0                   #  41    0x66ac1  6      
  testb $0x2, 0xffcffae(%rip)   #  42    0x66ac7  7      
  jne .L_66d60                  #  43    0x66ace  6      
  nop                           #  44    0x66ad4  1      
.L_66b20:                       #        0x66ad5  0      
  leal -0x1(%rbx), %eax         #  45    0x66ad5  3      
  leal -0x8(%r13), %edi         #  46    0x66ad8  4      
  testl %r13d, %eax             #  47    0x66adc  3      
  jne .L_66c00                  #  48    0x66adf  6      
  movl %edi, %edi               #  49    0x66ae5  2      
  movl 0x4(%r15,%rdi,1), %eax   #  50    0x66ae7  5      
  movq %rdi, %r13               #  51    0x66aec  3      
  nop                           #  52    0x66aef  1      
.L_66b40:                       #        0x66af0  0      
  testb $0x3, %al               #  53    0x66af0  2      
  je .L_66b60                   #  54    0x66af2  6      
  movl %eax, %esi               #  55    0x66af8  2      
  leal 0x10(%r12), %edx         #  56    0x66afa  5      
  andl $0xfffffff8, %esi        #  57    0x66aff  6      
  cmpl %edx, %esi               #  58    0x66b05  2      
  ja .L_66c80                   #  59    0x66b07  6      
  nop                           #  60    0x66b0d  1      
.L_66b60:                       #        0x66b0e  0      
  addl $0x8, %r13d              #  61    0x66b0e  4      
  testb $0x2, 0xffcff63(%rip)   #  62    0x66b12  7      
  je .L_66aa0                   #  63    0x66b19  6      
  mfence                        #  64    0x66b1f  3      
  movl $0x0, 0xffcff54(%rip)    #  65    0x66b22  10     
  xchgw %ax, %ax                #  66    0x66b2c  3      
  movl %r13d, %eax              #  67    0x66b2f  3      
  popq %rbx                     #  68    0x66b32  2      
  popq %r12                     #  69    0x66b34  3      
  popq %r13                     #  70    0x66b37  3      
  popq %r11                     #  71    0x66b3a  3      
  andl $0xffffffe0, %r11d       #  72    0x66b3d  7      
  addq %r15, %r11               #  73    0x66b44  3      
  jmpq %r11                     #  74    0x66b47  3      
  nop                           #  75    0x66b4a  1      
.L_66ba0:                       #        0x66b4b  0      
  leal -0x1(%rbx), %eax         #  76    0x66b4b  3      
  testl %edi, %eax              #  77    0x66b4e  2      
  je .L_66da0                   #  78    0x66b50  6      
  cmpl $0x10, %edi              #  79    0x66b56  3      
  movl $0xffffffb0, %edx        #  80    0x66b59  5      
  je .L_66a60                   #  81    0x66b5e  6      
  movl $0x10, %eax              #  82    0x66b64  5      
  xchgw %ax, %ax                #  83    0x66b69  3      
.L_66bc0:                       #        0x66b6c  0      
  addl %eax, %eax               #  84    0x66b6c  2      
  cmpl %eax, %ebx               #  85    0x66b6e  2      
  ja .L_66bc0                   #  86    0x66b70  6      
  movl $0xffffffc0, %edx        #  87    0x66b76  5      
  movl %eax, %ebx               #  88    0x66b7b  2      
  subl %eax, %edx               #  89    0x66b7d  2      
  jmpq .L_66a60                 #  90    0x66b7f  5      
  nop                           #  91    0x66b84  1      
.L_66be0:                       #        0x66b85  0      
  leal 0xb(%rsi), %r12d         #  92    0x66b85  4      
  andl $0xfffffff8, %r12d       #  93    0x66b89  7      
  jmpq .L_66ae0                 #  94    0x66b90  5      
  nop                           #  95    0x66b95  1      
  nop                           #  96    0x66b96  1      
.L_66c00:                       #        0x66b97  0      
  leal (%rax,%r13,1), %r13d     #  97    0x66b97  4      
  movl %ebx, %eax               #  98    0x66b9b  2      
  negl %eax                     #  99    0x66b9d  2      
  andl %eax, %r13d              #  100   0x66b9f  3      
  subl $0x8, %r13d              #  101   0x66ba2  4      
  movl %r13d, %esi              #  102   0x66ba6  3      
  subl %edi, %esi               #  103   0x66ba9  2      
  cmpl $0xf, %esi               #  104   0x66bab  3      
  ja .L_66c40                   #  105   0x66bae  6      
  leal (%rbx,%r13,1), %r13d     #  106   0x66bb4  4      
  movl %r13d, %esi              #  107   0x66bb8  3      
  subl %edi, %esi               #  108   0x66bbb  2      
  nop                           #  109   0x66bbd  1      
  nop                           #  110   0x66bbe  1      
.L_66c40:                       #        0x66bbf  0      
  movl %edi, %edi               #  111   0x66bbf  2      
  movl 0x4(%r15,%rdi,1), %edx   #  112   0x66bc1  5      
  movl %edx, %eax               #  113   0x66bc6  2      
  andl $0xfffffff8, %eax        #  114   0x66bc8  5      
  subl %esi, %eax               #  115   0x66bcd  2      
  andl $0x3, %edx               #  116   0x66bcf  3      
  jne .L_66ce0                  #  117   0x66bd2  6      
  movl %edi, %edi               #  118   0x66bd8  2      
  addl (%r15,%rdi,1), %esi      #  119   0x66bda  4      
  nop                           #  120   0x66bde  1      
  movl %r13d, %r13d             #  121   0x66bdf  3      
  movl %eax, 0x4(%r15,%r13,1)   #  122   0x66be2  5      
  movl %r13d, %r13d             #  123   0x66be7  3      
  movl %esi, (%r15,%r13,1)      #  124   0x66bea  4      
  jmpq .L_66b40                 #  125   0x66bee  5      
  nop                           #  126   0x66bf3  1      
.L_66c80:                       #        0x66bf4  0      
  subl %r12d, %esi              #  127   0x66bf4  3      
  leal (%r12,%r13,1), %edi      #  128   0x66bf7  4      
  andl $0x1, %eax               #  129   0x66bfb  3      
  orl $0x2, %r12d               #  130   0x66bfe  4      
  orl %eax, %r12d               #  131   0x66c02  3      
  movl %esi, %eax               #  132   0x66c05  2      
  orl $0x3, %eax                #  133   0x66c07  3      
  movl %r13d, %r13d             #  134   0x66c0a  3      
  movl %r12d, 0x4(%r15,%r13,1)  #  135   0x66c0d  5      
  xchgw %ax, %ax                #  136   0x66c12  3      
  movl %edi, %edi               #  137   0x66c15  2      
  movl %eax, 0x4(%r15,%rdi,1)   #  138   0x66c17  5      
  leal (%rsi,%rdi,1), %eax      #  139   0x66c1c  3      
  movl %eax, %eax               #  140   0x66c1f  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  141   0x66c21  6      
  nop                           #  142   0x66c27  1      
  callq .T_267                  #  143   0x66c28  5      
  jmpq .L_66b60                 #  144   0x66c2d  5      
  nop                           #  145   0x66c32  1      
  nop                           #  146   0x66c33  1      
.L_66ce0:                       #        0x66c34  0      
  movl %r13d, %r13d             #  147   0x66c34  3      
  movl 0x4(%r15,%r13,1), %edx   #  148   0x66c37  5      
  andl $0x1, %edx               #  149   0x66c3c  3      
  orl $0x2, %edx                #  150   0x66c3f  3      
  orl %eax, %edx                #  151   0x66c42  2      
  addl %r13d, %eax              #  152   0x66c44  3      
  movl %r13d, %r13d             #  153   0x66c47  3      
  movl %edx, 0x4(%r15,%r13,1)   #  154   0x66c4a  5      
  nop                           #  155   0x66c4f  1      
  movl %eax, %eax               #  156   0x66c50  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  157   0x66c52  6      
  movl %edi, %edi               #  158   0x66c58  2      
  movl 0x4(%r15,%rdi,1), %eax   #  159   0x66c5a  5      
  andl $0x1, %eax               #  160   0x66c5f  3      
  orl $0x2, %eax                #  161   0x66c62  3      
  orl %esi, %eax                #  162   0x66c65  2      
  movl %edi, %edi               #  163   0x66c67  2      
  movl %eax, 0x4(%r15,%rdi,1)   #  164   0x66c69  5      
  xchgw %ax, %ax                #  165   0x66c6e  3      
  leal (%rsi,%rdi,1), %eax      #  166   0x66c71  3      
  movl %eax, %eax               #  167   0x66c74  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  168   0x66c76  6      
  nop                           #  169   0x66c7c  1      
  nop                           #  170   0x66c7d  1      
  callq .T_267                  #  171   0x66c7e  5      
  movl %r13d, %r13d             #  172   0x66c83  3      
  movl 0x4(%r15,%r13,1), %eax   #  173   0x66c86  5      
  jmpq .L_66b40                 #  174   0x66c8b  5      
  nop                           #  175   0x66c90  1      
  nop                           #  176   0x66c91  1      
.L_66d60:                       #        0x66c92  0      
  movl $0x1, %eax               #  177   0x66c92  5      
  xchgl %eax, 0xffcfde3(%rip)   #  178   0x66c97  6      
  testl %eax, %eax              #  179   0x66c9d  2      
  je .L_66b20                   #  180   0x66c9f  6      
  movl $0x10036a80, %edi        #  181   0x66ca5  5      
  nop                           #  182   0x66caa  1      
  callq .spin_acquire_lock      #  183   0x66cab  5      
  testl %eax, %eax              #  184   0x66cb0  2      
  je .L_66b20                   #  185   0x66cb2  6      
  xorl %r13d, %r13d             #  186   0x66cb8  3      
  jmpq .L_66aa0                 #  187   0x66cbb  5      
  nop                           #  188   0x66cc0  1      
  nop                           #  189   0x66cc1  1      
.L_66da0:                       #        0x66cc2  0      
  movl $0xffffffc0, %edx        #  190   0x66cc2  5      
  subl %edi, %edx               #  191   0x66cc7  2      
  jmpq .L_66a60                 #  192   0x66cc9  5      
  nop                           #  193   0x66cce  1      
  nop                           #  194   0x66ccf  1      
                                                         
.size T_277, .-T_277

