  .text
  .globl T_277
  .type T_277, @function

#! file-offset 0x669c0
#! rip-offset  0x669c0
#! capacity    896 bytes

# Text                          #  Line  RIP      Bytes  
.T_277:                         #        0x669c0  0      
  pushq %r13                    #  1     0x669c0  3      
  cmpl $0xf, %edi               #  2     0x669c3  3      
  pushq %r12                    #  3     0x669c6  3      
  pushq %rbx                    #  4     0x669c9  2      
  movl %edi, %ebx               #  5     0x669cb  2      
  ja .L_66b20                   #  6     0x669cd  6      
  movl $0xffffffb0, %edx        #  7     0x669d3  5      
  movl $0x10, %ebx              #  8     0x669d8  5      
  nop                           #  9     0x669dd  1      
.L_669e0:                       #        0x669de  0      
  cmpl %edx, %esi               #  10    0x669de  2      
  jb .L_66a40                   #  11    0x669e0  6      
  nop                           #  12    0x669e6  1      
  nop                           #  13    0x669e7  1      
  callq .__errno                #  14    0x669e8  5      
  movl %eax, %eax               #  15    0x669ed  2      
  xorl %r13d, %r13d             #  16    0x669ef  3      
  movl %eax, %eax               #  17    0x669f2  2      
  movl $0xc, (%r15,%rax,1)      #  18    0x669f4  8      
  xchgw %ax, %ax                #  19    0x669fc  3      
  nop                           #  20    0x669ff  1      
.L_66a20:                       #        0x66a00  0      
  popq %rbx                     #  21    0x66a00  2      
  popq %r12                     #  22    0x66a02  3      
  movl %r13d, %eax              #  23    0x66a05  3      
  popq %r13                     #  24    0x66a08  3      
  popq %r11                     #  25    0x66a0b  3      
  andl $0xffffffe0, %r11d       #  26    0x66a0e  7      
  addq %r15, %r11               #  27    0x66a15  3      
  jmpq %r11                     #  28    0x66a18  3      
  nop                           #  29    0x66a1b  1      
.L_66a40:                       #        0x66a1c  0      
  cmpl $0xa, %esi               #  30    0x66a1c  3      
  movl $0x10, %r12d             #  31    0x66a1f  6      
  ja .L_66b60                   #  32    0x66a25  6      
  xchgw %ax, %ax                #  33    0x66a2b  3      
  nop                           #  34    0x66a2e  1      
.L_66a60:                       #        0x66a2f  0      
  leal 0xc(%r12,%rbx,1), %edi   #  35    0x66a2f  5      
  nop                           #  36    0x66a34  1      
  nop                           #  37    0x66a35  1      
  callq .malloc                 #  38    0x66a36  5      
  movl %eax, %r13d              #  39    0x66a3b  3      
  testq %r13, %r13              #  40    0x66a3e  3      
  je .L_66a20                   #  41    0x66a41  6      
  testb $0x2, 0xffd002e(%rip)   #  42    0x66a47  7      
  jne .L_66ce0                  #  43    0x66a4e  6      
  nop                           #  44    0x66a54  1      
.L_66aa0:                       #        0x66a55  0      
  leal -0x1(%rbx), %eax         #  45    0x66a55  3      
  leal -0x8(%r13), %edi         #  46    0x66a58  4      
  testl %r13d, %eax             #  47    0x66a5c  3      
  jne .L_66b80                  #  48    0x66a5f  6      
  movl %edi, %edi               #  49    0x66a65  2      
  movl 0x4(%r15,%rdi,1), %eax   #  50    0x66a67  5      
  movq %rdi, %r13               #  51    0x66a6c  3      
  nop                           #  52    0x66a6f  1      
.L_66ac0:                       #        0x66a70  0      
  testb $0x3, %al               #  53    0x66a70  2      
  je .L_66ae0                   #  54    0x66a72  6      
  movl %eax, %esi               #  55    0x66a78  2      
  leal 0x10(%r12), %edx         #  56    0x66a7a  5      
  andl $0xfffffff8, %esi        #  57    0x66a7f  6      
  cmpl %edx, %esi               #  58    0x66a85  2      
  ja .L_66c00                   #  59    0x66a87  6      
  nop                           #  60    0x66a8d  1      
.L_66ae0:                       #        0x66a8e  0      
  addl $0x8, %r13d              #  61    0x66a8e  4      
  testb $0x2, 0xffcffe3(%rip)   #  62    0x66a92  7      
  je .L_66a20                   #  63    0x66a99  6      
  mfence                        #  64    0x66a9f  3      
  movl $0x0, 0xffcffd4(%rip)    #  65    0x66aa2  10     
  xchgw %ax, %ax                #  66    0x66aac  3      
  movl %r13d, %eax              #  67    0x66aaf  3      
  popq %rbx                     #  68    0x66ab2  2      
  popq %r12                     #  69    0x66ab4  3      
  popq %r13                     #  70    0x66ab7  3      
  popq %r11                     #  71    0x66aba  3      
  andl $0xffffffe0, %r11d       #  72    0x66abd  7      
  addq %r15, %r11               #  73    0x66ac4  3      
  jmpq %r11                     #  74    0x66ac7  3      
  nop                           #  75    0x66aca  1      
.L_66b20:                       #        0x66acb  0      
  leal -0x1(%rbx), %eax         #  76    0x66acb  3      
  testl %edi, %eax              #  77    0x66ace  2      
  je .L_66d20                   #  78    0x66ad0  6      
  cmpl $0x10, %edi              #  79    0x66ad6  3      
  movl $0xffffffb0, %edx        #  80    0x66ad9  5      
  je .L_669e0                   #  81    0x66ade  6      
  movl $0x10, %eax              #  82    0x66ae4  5      
  xchgw %ax, %ax                #  83    0x66ae9  3      
.L_66b40:                       #        0x66aec  0      
  addl %eax, %eax               #  84    0x66aec  2      
  cmpl %eax, %ebx               #  85    0x66aee  2      
  ja .L_66b40                   #  86    0x66af0  6      
  movl $0xffffffc0, %edx        #  87    0x66af6  5      
  movl %eax, %ebx               #  88    0x66afb  2      
  subl %eax, %edx               #  89    0x66afd  2      
  jmpq .L_669e0                 #  90    0x66aff  5      
  nop                           #  91    0x66b04  1      
.L_66b60:                       #        0x66b05  0      
  leal 0xb(%rsi), %r12d         #  92    0x66b05  4      
  andl $0xfffffff8, %r12d       #  93    0x66b09  7      
  jmpq .L_66a60                 #  94    0x66b10  5      
  nop                           #  95    0x66b15  1      
  nop                           #  96    0x66b16  1      
.L_66b80:                       #        0x66b17  0      
  leal (%rax,%r13,1), %r13d     #  97    0x66b17  4      
  movl %ebx, %eax               #  98    0x66b1b  2      
  negl %eax                     #  99    0x66b1d  2      
  andl %eax, %r13d              #  100   0x66b1f  3      
  subl $0x8, %r13d              #  101   0x66b22  4      
  movl %r13d, %esi              #  102   0x66b26  3      
  subl %edi, %esi               #  103   0x66b29  2      
  cmpl $0xf, %esi               #  104   0x66b2b  3      
  ja .L_66bc0                   #  105   0x66b2e  6      
  leal (%rbx,%r13,1), %r13d     #  106   0x66b34  4      
  movl %r13d, %esi              #  107   0x66b38  3      
  subl %edi, %esi               #  108   0x66b3b  2      
  nop                           #  109   0x66b3d  1      
  nop                           #  110   0x66b3e  1      
.L_66bc0:                       #        0x66b3f  0      
  movl %edi, %edi               #  111   0x66b3f  2      
  movl 0x4(%r15,%rdi,1), %edx   #  112   0x66b41  5      
  movl %edx, %eax               #  113   0x66b46  2      
  andl $0xfffffff8, %eax        #  114   0x66b48  5      
  subl %esi, %eax               #  115   0x66b4d  2      
  andl $0x3, %edx               #  116   0x66b4f  3      
  jne .L_66c60                  #  117   0x66b52  6      
  movl %edi, %edi               #  118   0x66b58  2      
  addl (%r15,%rdi,1), %esi      #  119   0x66b5a  4      
  nop                           #  120   0x66b5e  1      
  movl %r13d, %r13d             #  121   0x66b5f  3      
  movl %eax, 0x4(%r15,%r13,1)   #  122   0x66b62  5      
  movl %r13d, %r13d             #  123   0x66b67  3      
  movl %esi, (%r15,%r13,1)      #  124   0x66b6a  4      
  jmpq .L_66ac0                 #  125   0x66b6e  5      
  nop                           #  126   0x66b73  1      
.L_66c00:                       #        0x66b74  0      
  subl %r12d, %esi              #  127   0x66b74  3      
  leal (%r12,%r13,1), %edi      #  128   0x66b77  4      
  andl $0x1, %eax               #  129   0x66b7b  3      
  orl $0x2, %r12d               #  130   0x66b7e  4      
  orl %eax, %r12d               #  131   0x66b82  3      
  movl %esi, %eax               #  132   0x66b85  2      
  orl $0x3, %eax                #  133   0x66b87  3      
  movl %r13d, %r13d             #  134   0x66b8a  3      
  movl %r12d, 0x4(%r15,%r13,1)  #  135   0x66b8d  5      
  xchgw %ax, %ax                #  136   0x66b92  3      
  movl %edi, %edi               #  137   0x66b95  2      
  movl %eax, 0x4(%r15,%rdi,1)   #  138   0x66b97  5      
  leal (%rsi,%rdi,1), %eax      #  139   0x66b9c  3      
  movl %eax, %eax               #  140   0x66b9f  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  141   0x66ba1  6      
  nop                           #  142   0x66ba7  1      
  callq .T_267                  #  143   0x66ba8  5      
  jmpq .L_66ae0                 #  144   0x66bad  5      
  nop                           #  145   0x66bb2  1      
  nop                           #  146   0x66bb3  1      
.L_66c60:                       #        0x66bb4  0      
  movl %r13d, %r13d             #  147   0x66bb4  3      
  movl 0x4(%r15,%r13,1), %edx   #  148   0x66bb7  5      
  andl $0x1, %edx               #  149   0x66bbc  3      
  orl $0x2, %edx                #  150   0x66bbf  3      
  orl %eax, %edx                #  151   0x66bc2  2      
  addl %r13d, %eax              #  152   0x66bc4  3      
  movl %r13d, %r13d             #  153   0x66bc7  3      
  movl %edx, 0x4(%r15,%r13,1)   #  154   0x66bca  5      
  nop                           #  155   0x66bcf  1      
  movl %eax, %eax               #  156   0x66bd0  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  157   0x66bd2  6      
  movl %edi, %edi               #  158   0x66bd8  2      
  movl 0x4(%r15,%rdi,1), %eax   #  159   0x66bda  5      
  andl $0x1, %eax               #  160   0x66bdf  3      
  orl $0x2, %eax                #  161   0x66be2  3      
  orl %esi, %eax                #  162   0x66be5  2      
  movl %edi, %edi               #  163   0x66be7  2      
  movl %eax, 0x4(%r15,%rdi,1)   #  164   0x66be9  5      
  xchgw %ax, %ax                #  165   0x66bee  3      
  leal (%rsi,%rdi,1), %eax      #  166   0x66bf1  3      
  movl %eax, %eax               #  167   0x66bf4  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  168   0x66bf6  6      
  nop                           #  169   0x66bfc  1      
  nop                           #  170   0x66bfd  1      
  callq .T_267                  #  171   0x66bfe  5      
  movl %r13d, %r13d             #  172   0x66c03  3      
  movl 0x4(%r15,%r13,1), %eax   #  173   0x66c06  5      
  jmpq .L_66ac0                 #  174   0x66c0b  5      
  nop                           #  175   0x66c10  1      
  nop                           #  176   0x66c11  1      
.L_66ce0:                       #        0x66c12  0      
  movl $0x1, %eax               #  177   0x66c12  5      
  xchgl %eax, 0xffcfe63(%rip)   #  178   0x66c17  6      
  testl %eax, %eax              #  179   0x66c1d  2      
  je .L_66aa0                   #  180   0x66c1f  6      
  movl $0x10036a80, %edi        #  181   0x66c25  5      
  nop                           #  182   0x66c2a  1      
  callq .spin_acquire_lock      #  183   0x66c2b  5      
  testl %eax, %eax              #  184   0x66c30  2      
  je .L_66aa0                   #  185   0x66c32  6      
  xorl %r13d, %r13d             #  186   0x66c38  3      
  jmpq .L_66a20                 #  187   0x66c3b  5      
  nop                           #  188   0x66c40  1      
  nop                           #  189   0x66c41  1      
.L_66d20:                       #        0x66c42  0      
  movl $0xffffffc0, %edx        #  190   0x66c42  5      
  subl %edi, %edx               #  191   0x66c47  2      
  jmpq .L_669e0                 #  192   0x66c49  5      
  nop                           #  193   0x66c4e  1      
  nop                           #  194   0x66c4f  1      
                                                         
.size T_277, .-T_277

