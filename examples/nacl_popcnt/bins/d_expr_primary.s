  .text
  .globl d_expr_primary
  .type d_expr_primary, @function

#! file-offset 0x52b60
#! rip-offset  0x52b60
#! capacity    672 bytes

# Text                          #  Line  RIP      Bytes  
.d_expr_primary:                #        0x52b60  0      
  movq %rbx, -0x18(%rsp)        #  1     0x52b60  5      
  movl %edi, %ebx               #  2     0x52b65  2      
  movq %r12, -0x10(%rsp)        #  3     0x52b67  5      
  movq %r13, -0x8(%rsp)         #  4     0x52b6c  5      
  subl $0x18, %esp              #  5     0x52b71  3      
  addq %r15, %rsp               #  6     0x52b74  3      
  movl %ebx, %ebx               #  7     0x52b77  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x52b79  5      
  xchgw %ax, %ax                #  9     0x52b7e  3      
  movl %eax, %eax               #  10    0x52b81  2      
  cmpb $0x4c, (%r15,%rax,1)     #  11    0x52b83  5      
  je .L_52be0                   #  12    0x52b88  6      
  nop                           #  13    0x52b8e  1      
  nop                           #  14    0x52b8f  1      
.L_52ba0:                       #        0x52b90  0      
  xorl %eax, %eax               #  15    0x52b90  2      
  nop                           #  16    0x52b92  1      
  nop                           #  17    0x52b93  1      
.L_52bc0:                       #        0x52b94  0      
  movq (%rsp), %rbx             #  18    0x52b94  4      
  movq 0x8(%rsp), %r12          #  19    0x52b98  5      
  movq 0x10(%rsp), %r13         #  20    0x52b9d  5      
  addl $0x18, %esp              #  21    0x52ba2  3      
  addq %r15, %rsp               #  22    0x52ba5  3      
  popq %r11                     #  23    0x52ba8  3      
  andl $0xffffffe0, %r11d       #  24    0x52bab  7      
  addq %r15, %r11               #  25    0x52bb2  3      
  jmpq %r11                     #  26    0x52bb5  3      
.L_52be0:                       #        0x52bb8  0      
  leal 0x1(%rax), %edx          #  27    0x52bb8  3      
  movl %ebx, %ebx               #  28    0x52bbb  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  29    0x52bbd  5      
  movl %edx, %edx               #  30    0x52bc2  2      
  movzbl (%r15,%rdx,1), %ecx    #  31    0x52bc4  5      
  cmpb $0x5f, %cl               #  32    0x52bc9  3      
  sete %al                      #  33    0x52bcc  3      
  cmpb $0x5a, %cl               #  34    0x52bcf  3      
  je .L_52c40                   #  35    0x52bd2  6      
  testb %al, %al                #  36    0x52bd8  2      
  xchgw %ax, %ax                #  37    0x52bda  3      
  je .L_52c80                   #  38    0x52bdd  6      
  addl $0x1, %edx               #  39    0x52be3  3      
  xorl %eax, %eax               #  40    0x52be6  2      
  movl %ebx, %ebx               #  41    0x52be8  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  42    0x52bea  5      
  movl %edx, %edx               #  43    0x52bef  2      
  movzbl (%r15,%rdx,1), %ecx    #  44    0x52bf1  5      
  cmpb $0x5a, %cl               #  45    0x52bf6  3      
  je .L_52c40                   #  46    0x52bf9  6      
  nop                           #  47    0x52bff  1      
.L_52c20:                       #        0x52c00  0      
  cmpb $0x45, %cl               #  48    0x52c00  3      
  jne .L_52ba0                  #  49    0x52c03  6      
  addl $0x1, %edx               #  50    0x52c09  3      
  movl %ebx, %ebx               #  51    0x52c0c  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  52    0x52c0e  5      
  jmpq .L_52bc0                 #  53    0x52c13  5      
  nop                           #  54    0x52c18  1      
.L_52c40:                       #        0x52c19  0      
  addl $0x1, %edx               #  55    0x52c19  3      
  xorl %esi, %esi               #  56    0x52c1c  2      
  movl %ebx, %edi               #  57    0x52c1e  2      
  movl %ebx, %ebx               #  58    0x52c20  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  59    0x52c22  5      
  nop                           #  60    0x52c27  1      
  callq .d_encoding             #  61    0x52c28  5      
  movl %ebx, %ebx               #  62    0x52c2d  2      
  movl 0xc(%r15,%rbx,1), %edx   #  63    0x52c2f  5      
  movl %eax, %eax               #  64    0x52c34  2      
  movl %edx, %edx               #  65    0x52c36  2      
  movzbl (%r15,%rdx,1), %ecx    #  66    0x52c38  5      
  jmpq .L_52c20                 #  67    0x52c3d  5      
  nop                           #  68    0x52c42  1      
.L_52c80:                       #        0x52c43  0      
  movl %ebx, %edi               #  69    0x52c43  2      
  nop                           #  70    0x52c45  1      
  nop                           #  71    0x52c46  1      
  callq .d_type                 #  72    0x52c47  5      
  movl %eax, %r12d              #  73    0x52c4c  3      
  testq %r12, %r12              #  74    0x52c4f  3      
  je .L_52ba0                   #  75    0x52c52  6      
  movl %r12d, %r12d             #  76    0x52c58  3      
  cmpl $0x23, (%r15,%r12,1)     #  77    0x52c5b  5      
  je .L_52da0                   #  78    0x52c60  6      
  nop                           #  79    0x52c66  1      
.L_52cc0:                       #        0x52c67  0      
  movl %ebx, %ebx               #  80    0x52c67  2      
  movl 0xc(%r15,%rbx,1), %esi   #  81    0x52c69  5      
  movl $0x34, %r13d             #  82    0x52c6e  6      
  movl %esi, %esi               #  83    0x52c74  2      
  movzbl (%r15,%rsi,1), %eax    #  84    0x52c76  5      
  cmpb $0x6e, %al               #  85    0x52c7b  2      
  je .L_52de0                   #  86    0x52c7d  6      
  nop                           #  87    0x52c83  1      
.L_52ce0:                       #        0x52c84  0      
  xorl %edx, %edx               #  88    0x52c84  2      
  cmpb $0x45, %al               #  89    0x52c86  2      
  je .L_52d40                   #  90    0x52c88  6      
  testb %al, %al                #  91    0x52c8e  2      
  movq %rsi, %rdx               #  92    0x52c90  3      
  jne .L_52d20                  #  93    0x52c93  6      
  jmpq .L_52ba0                 #  94    0x52c99  5      
  nop                           #  95    0x52c9e  1      
.L_52d00:                       #        0x52c9f  0      
  testb %al, %al                #  96    0x52c9f  2      
  je .L_52ba0                   #  97    0x52ca1  6      
  nop                           #  98    0x52ca7  1      
  nop                           #  99    0x52ca8  1      
.L_52d20:                       #        0x52ca9  0      
  addl $0x1, %edx               #  100   0x52ca9  3      
  movl %ebx, %ebx               #  101   0x52cac  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  102   0x52cae  5      
  movl %edx, %edx               #  103   0x52cb3  2      
  movzbl (%r15,%rdx,1), %eax    #  104   0x52cb5  5      
  cmpb $0x45, %al               #  105   0x52cba  2      
  jne .L_52d00                  #  106   0x52cbc  6      
  subl %esi, %edx               #  107   0x52cc2  2      
  nop                           #  108   0x52cc4  1      
.L_52d40:                       #        0x52cc5  0      
  movl %ebx, %edi               #  109   0x52cc5  2      
  nop                           #  110   0x52cc7  1      
  nop                           #  111   0x52cc8  1      
  callq .d_make_name            #  112   0x52cc9  5      
  movl %r12d, %edx              #  113   0x52cce  3      
  movl %eax, %ecx               #  114   0x52cd1  2      
  movl %r13d, %esi              #  115   0x52cd3  3      
  movl %ebx, %edi               #  116   0x52cd6  2      
  xchgw %ax, %ax                #  117   0x52cd8  3      
  nop                           #  118   0x52cdb  1      
  callq .d_make_comp            #  119   0x52cdc  5      
  movl %ebx, %ebx               #  120   0x52ce1  2      
  movl 0xc(%r15,%rbx,1), %edx   #  121   0x52ce3  5      
  movl %eax, %eax               #  122   0x52ce8  2      
  movl %edx, %edx               #  123   0x52cea  2      
  movzbl (%r15,%rdx,1), %ecx    #  124   0x52cec  5      
  jmpq .L_52c20                 #  125   0x52cf1  5      
  nop                           #  126   0x52cf6  1      
.L_52da0:                       #        0x52cf7  0      
  movl %r12d, %r12d             #  127   0x52cf7  3      
  movl 0x4(%r15,%r12,1), %eax   #  128   0x52cfa  5      
  movl %eax, %eax               #  129   0x52cff  2      
  movl 0x10(%r15,%rax,1), %edx  #  130   0x52d01  5      
  testl %edx, %edx              #  131   0x52d06  2      
  je .L_52cc0                   #  132   0x52d08  6      
  movl %eax, %eax               #  133   0x52d0e  2      
  movl 0x4(%r15,%rax,1), %eax   #  134   0x52d10  5      
  xchgw %ax, %ax                #  135   0x52d15  3      
  movl %ebx, %ebx               #  136   0x52d18  2      
  subl %eax, 0x30(%r15,%rbx,1)  #  137   0x52d1a  5      
  jmpq .L_52cc0                 #  138   0x52d1f  5      
  nop                           #  139   0x52d24  1      
  nop                           #  140   0x52d25  1      
.L_52de0:                       #        0x52d26  0      
  addl $0x1, %esi               #  141   0x52d26  3      
  movb $0x35, %r13b             #  142   0x52d29  3      
  movl %ebx, %ebx               #  143   0x52d2c  2      
  movl %esi, 0xc(%r15,%rbx,1)   #  144   0x52d2e  5      
  movl %esi, %esi               #  145   0x52d33  2      
  movzbl (%r15,%rsi,1), %eax    #  146   0x52d35  5      
  jmpq .L_52ce0                 #  147   0x52d3a  5      
  nop                           #  148   0x52d3f  1      
                                                         
.size d_expr_primary, .-d_expr_primary

