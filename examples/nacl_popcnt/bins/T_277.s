  .text
  .globl T_277
  .type T_277, @function

#! file-offset 0x669a0
#! rip-offset  0x669a0
#! capacity    896 bytes

# Text                          #  Line  RIP      Bytes  
.T_277:                         #        0x669a0  0      
  pushq %r13                    #  1     0x669a0  3      
  cmpl $0xf, %edi               #  2     0x669a3  3      
  pushq %r12                    #  3     0x669a6  3      
  pushq %rbx                    #  4     0x669a9  2      
  movl %edi, %ebx               #  5     0x669ab  2      
  ja .L_66b00                   #  6     0x669ad  6      
  movl $0xffffffb0, %edx        #  7     0x669b3  5      
  movl $0x10, %ebx              #  8     0x669b8  5      
  nop                           #  9     0x669bd  1      
.L_669c0:                       #        0x669be  0      
  cmpl %edx, %esi               #  10    0x669be  2      
  jb .L_66a20                   #  11    0x669c0  6      
  nop                           #  12    0x669c6  1      
  nop                           #  13    0x669c7  1      
  callq .__errno                #  14    0x669c8  5      
  movl %eax, %eax               #  15    0x669cd  2      
  xorl %r13d, %r13d             #  16    0x669cf  3      
  movl %eax, %eax               #  17    0x669d2  2      
  movl $0xc, (%r15,%rax,1)      #  18    0x669d4  8      
  xchgw %ax, %ax                #  19    0x669dc  3      
  nop                           #  20    0x669df  1      
.L_66a00:                       #        0x669e0  0      
  popq %rbx                     #  21    0x669e0  2      
  popq %r12                     #  22    0x669e2  3      
  movl %r13d, %eax              #  23    0x669e5  3      
  popq %r13                     #  24    0x669e8  3      
  popq %r11                     #  25    0x669eb  3      
  andl $0xffffffe0, %r11d       #  26    0x669ee  7      
  addq %r15, %r11               #  27    0x669f5  3      
  jmpq %r11                     #  28    0x669f8  3      
  nop                           #  29    0x669fb  1      
.L_66a20:                       #        0x669fc  0      
  cmpl $0xa, %esi               #  30    0x669fc  3      
  movl $0x10, %r12d             #  31    0x669ff  6      
  ja .L_66b40                   #  32    0x66a05  6      
  xchgw %ax, %ax                #  33    0x66a0b  3      
  nop                           #  34    0x66a0e  1      
.L_66a40:                       #        0x66a0f  0      
  leal 0xc(%r12,%rbx,1), %edi   #  35    0x66a0f  5      
  nop                           #  36    0x66a14  1      
  nop                           #  37    0x66a15  1      
  callq .malloc                 #  38    0x66a16  5      
  movl %eax, %r13d              #  39    0x66a1b  3      
  testq %r13, %r13              #  40    0x66a1e  3      
  je .L_66a00                   #  41    0x66a21  6      
  testb $0x2, 0xffd004e(%rip)   #  42    0x66a27  7      
  jne .L_66cc0                  #  43    0x66a2e  6      
  nop                           #  44    0x66a34  1      
.L_66a80:                       #        0x66a35  0      
  leal -0x1(%rbx), %eax         #  45    0x66a35  3      
  leal -0x8(%r13), %edi         #  46    0x66a38  4      
  testl %r13d, %eax             #  47    0x66a3c  3      
  jne .L_66b60                  #  48    0x66a3f  6      
  movl %edi, %edi               #  49    0x66a45  2      
  movl 0x4(%r15,%rdi,1), %eax   #  50    0x66a47  5      
  movq %rdi, %r13               #  51    0x66a4c  3      
  nop                           #  52    0x66a4f  1      
.L_66aa0:                       #        0x66a50  0      
  testb $0x3, %al               #  53    0x66a50  2      
  je .L_66ac0                   #  54    0x66a52  6      
  movl %eax, %esi               #  55    0x66a58  2      
  leal 0x10(%r12), %edx         #  56    0x66a5a  5      
  andl $0xfffffff8, %esi        #  57    0x66a5f  6      
  cmpl %edx, %esi               #  58    0x66a65  2      
  ja .L_66be0                   #  59    0x66a67  6      
  nop                           #  60    0x66a6d  1      
.L_66ac0:                       #        0x66a6e  0      
  addl $0x8, %r13d              #  61    0x66a6e  4      
  testb $0x2, 0xffd0003(%rip)   #  62    0x66a72  7      
  je .L_66a00                   #  63    0x66a79  6      
  mfence                        #  64    0x66a7f  3      
  movl $0x0, 0xffcfff4(%rip)    #  65    0x66a82  10     
  xchgw %ax, %ax                #  66    0x66a8c  3      
  movl %r13d, %eax              #  67    0x66a8f  3      
  popq %rbx                     #  68    0x66a92  2      
  popq %r12                     #  69    0x66a94  3      
  popq %r13                     #  70    0x66a97  3      
  popq %r11                     #  71    0x66a9a  3      
  andl $0xffffffe0, %r11d       #  72    0x66a9d  7      
  addq %r15, %r11               #  73    0x66aa4  3      
  jmpq %r11                     #  74    0x66aa7  3      
  nop                           #  75    0x66aaa  1      
.L_66b00:                       #        0x66aab  0      
  leal -0x1(%rbx), %eax         #  76    0x66aab  3      
  testl %edi, %eax              #  77    0x66aae  2      
  je .L_66d00                   #  78    0x66ab0  6      
  cmpl $0x10, %edi              #  79    0x66ab6  3      
  movl $0xffffffb0, %edx        #  80    0x66ab9  5      
  je .L_669c0                   #  81    0x66abe  6      
  movl $0x10, %eax              #  82    0x66ac4  5      
  xchgw %ax, %ax                #  83    0x66ac9  3      
.L_66b20:                       #        0x66acc  0      
  addl %eax, %eax               #  84    0x66acc  2      
  cmpl %eax, %ebx               #  85    0x66ace  2      
  ja .L_66b20                   #  86    0x66ad0  6      
  movl $0xffffffc0, %edx        #  87    0x66ad6  5      
  movl %eax, %ebx               #  88    0x66adb  2      
  subl %eax, %edx               #  89    0x66add  2      
  jmpq .L_669c0                 #  90    0x66adf  5      
  nop                           #  91    0x66ae4  1      
.L_66b40:                       #        0x66ae5  0      
  leal 0xb(%rsi), %r12d         #  92    0x66ae5  4      
  andl $0xfffffff8, %r12d       #  93    0x66ae9  7      
  jmpq .L_66a40                 #  94    0x66af0  5      
  nop                           #  95    0x66af5  1      
  nop                           #  96    0x66af6  1      
.L_66b60:                       #        0x66af7  0      
  leal (%rax,%r13,1), %r13d     #  97    0x66af7  4      
  movl %ebx, %eax               #  98    0x66afb  2      
  negl %eax                     #  99    0x66afd  2      
  andl %eax, %r13d              #  100   0x66aff  3      
  subl $0x8, %r13d              #  101   0x66b02  4      
  movl %r13d, %esi              #  102   0x66b06  3      
  subl %edi, %esi               #  103   0x66b09  2      
  cmpl $0xf, %esi               #  104   0x66b0b  3      
  ja .L_66ba0                   #  105   0x66b0e  6      
  leal (%rbx,%r13,1), %r13d     #  106   0x66b14  4      
  movl %r13d, %esi              #  107   0x66b18  3      
  subl %edi, %esi               #  108   0x66b1b  2      
  nop                           #  109   0x66b1d  1      
  nop                           #  110   0x66b1e  1      
.L_66ba0:                       #        0x66b1f  0      
  movl %edi, %edi               #  111   0x66b1f  2      
  movl 0x4(%r15,%rdi,1), %edx   #  112   0x66b21  5      
  movl %edx, %eax               #  113   0x66b26  2      
  andl $0xfffffff8, %eax        #  114   0x66b28  5      
  subl %esi, %eax               #  115   0x66b2d  2      
  andl $0x3, %edx               #  116   0x66b2f  3      
  jne .L_66c40                  #  117   0x66b32  6      
  movl %edi, %edi               #  118   0x66b38  2      
  addl (%r15,%rdi,1), %esi      #  119   0x66b3a  4      
  nop                           #  120   0x66b3e  1      
  movl %r13d, %r13d             #  121   0x66b3f  3      
  movl %eax, 0x4(%r15,%r13,1)   #  122   0x66b42  5      
  movl %r13d, %r13d             #  123   0x66b47  3      
  movl %esi, (%r15,%r13,1)      #  124   0x66b4a  4      
  jmpq .L_66aa0                 #  125   0x66b4e  5      
  nop                           #  126   0x66b53  1      
.L_66be0:                       #        0x66b54  0      
  subl %r12d, %esi              #  127   0x66b54  3      
  leal (%r12,%r13,1), %edi      #  128   0x66b57  4      
  andl $0x1, %eax               #  129   0x66b5b  3      
  orl $0x2, %r12d               #  130   0x66b5e  4      
  orl %eax, %r12d               #  131   0x66b62  3      
  movl %esi, %eax               #  132   0x66b65  2      
  orl $0x3, %eax                #  133   0x66b67  3      
  movl %r13d, %r13d             #  134   0x66b6a  3      
  movl %r12d, 0x4(%r15,%r13,1)  #  135   0x66b6d  5      
  xchgw %ax, %ax                #  136   0x66b72  3      
  movl %edi, %edi               #  137   0x66b75  2      
  movl %eax, 0x4(%r15,%rdi,1)   #  138   0x66b77  5      
  leal (%rsi,%rdi,1), %eax      #  139   0x66b7c  3      
  movl %eax, %eax               #  140   0x66b7f  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  141   0x66b81  6      
  nop                           #  142   0x66b87  1      
  callq .T_267                  #  143   0x66b88  5      
  jmpq .L_66ac0                 #  144   0x66b8d  5      
  nop                           #  145   0x66b92  1      
  nop                           #  146   0x66b93  1      
.L_66c40:                       #        0x66b94  0      
  movl %r13d, %r13d             #  147   0x66b94  3      
  movl 0x4(%r15,%r13,1), %edx   #  148   0x66b97  5      
  andl $0x1, %edx               #  149   0x66b9c  3      
  orl $0x2, %edx                #  150   0x66b9f  3      
  orl %eax, %edx                #  151   0x66ba2  2      
  addl %r13d, %eax              #  152   0x66ba4  3      
  movl %r13d, %r13d             #  153   0x66ba7  3      
  movl %edx, 0x4(%r15,%r13,1)   #  154   0x66baa  5      
  nop                           #  155   0x66baf  1      
  movl %eax, %eax               #  156   0x66bb0  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  157   0x66bb2  6      
  movl %edi, %edi               #  158   0x66bb8  2      
  movl 0x4(%r15,%rdi,1), %eax   #  159   0x66bba  5      
  andl $0x1, %eax               #  160   0x66bbf  3      
  orl $0x2, %eax                #  161   0x66bc2  3      
  orl %esi, %eax                #  162   0x66bc5  2      
  movl %edi, %edi               #  163   0x66bc7  2      
  movl %eax, 0x4(%r15,%rdi,1)   #  164   0x66bc9  5      
  xchgw %ax, %ax                #  165   0x66bce  3      
  leal (%rsi,%rdi,1), %eax      #  166   0x66bd1  3      
  movl %eax, %eax               #  167   0x66bd4  2      
  orl $0x1, 0x4(%r15,%rax,1)    #  168   0x66bd6  6      
  nop                           #  169   0x66bdc  1      
  nop                           #  170   0x66bdd  1      
  callq .T_267                  #  171   0x66bde  5      
  movl %r13d, %r13d             #  172   0x66be3  3      
  movl 0x4(%r15,%r13,1), %eax   #  173   0x66be6  5      
  jmpq .L_66aa0                 #  174   0x66beb  5      
  nop                           #  175   0x66bf0  1      
  nop                           #  176   0x66bf1  1      
.L_66cc0:                       #        0x66bf2  0      
  movl $0x1, %eax               #  177   0x66bf2  5      
  xchgl %eax, 0xffcfe83(%rip)   #  178   0x66bf7  6      
  testl %eax, %eax              #  179   0x66bfd  2      
  je .L_66a80                   #  180   0x66bff  6      
  movl $0x10036a80, %edi        #  181   0x66c05  5      
  nop                           #  182   0x66c0a  1      
  callq .spin_acquire_lock      #  183   0x66c0b  5      
  testl %eax, %eax              #  184   0x66c10  2      
  je .L_66a80                   #  185   0x66c12  6      
  xorl %r13d, %r13d             #  186   0x66c18  3      
  jmpq .L_66a00                 #  187   0x66c1b  5      
  nop                           #  188   0x66c20  1      
  nop                           #  189   0x66c21  1      
.L_66d00:                       #        0x66c22  0      
  movl $0xffffffc0, %edx        #  190   0x66c22  5      
  subl %edi, %edx               #  191   0x66c27  2      
  jmpq .L_669c0                 #  192   0x66c29  5      
  nop                           #  193   0x66c2e  1      
  nop                           #  194   0x66c2f  1      
                                                         
.size T_277, .-T_277

