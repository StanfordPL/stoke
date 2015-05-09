  .text
  .globl d_expr_primary
  .type d_expr_primary, @function

#! file-offset 0x52b40
#! rip-offset  0x52b40
#! capacity    672 bytes

# Text                          #  Line  RIP      Bytes  
.d_expr_primary:                #        0x52b40  0      
  movq %rbx, -0x18(%rsp)        #  1     0x52b40  5      
  movl %edi, %ebx               #  2     0x52b45  2      
  movq %r12, -0x10(%rsp)        #  3     0x52b47  5      
  movq %r13, -0x8(%rsp)         #  4     0x52b4c  5      
  subl $0x18, %esp              #  5     0x52b51  3      
  addq %r15, %rsp               #  6     0x52b54  3      
  movl %ebx, %ebx               #  7     0x52b57  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x52b59  5      
  xchgw %ax, %ax                #  9     0x52b5e  3      
  movl %eax, %eax               #  10    0x52b61  2      
  cmpb $0x4c, (%r15,%rax,1)     #  11    0x52b63  5      
  je .L_52bc0                   #  12    0x52b68  6      
  nop                           #  13    0x52b6e  1      
  nop                           #  14    0x52b6f  1      
.L_52b80:                       #        0x52b70  0      
  xorl %eax, %eax               #  15    0x52b70  2      
  nop                           #  16    0x52b72  1      
  nop                           #  17    0x52b73  1      
.L_52ba0:                       #        0x52b74  0      
  movq (%rsp), %rbx             #  18    0x52b74  4      
  movq 0x8(%rsp), %r12          #  19    0x52b78  5      
  movq 0x10(%rsp), %r13         #  20    0x52b7d  5      
  addl $0x18, %esp              #  21    0x52b82  3      
  addq %r15, %rsp               #  22    0x52b85  3      
  popq %r11                     #  23    0x52b88  3      
  andl $0xffffffe0, %r11d       #  24    0x52b8b  7      
  addq %r15, %r11               #  25    0x52b92  3      
  jmpq %r11                     #  26    0x52b95  3      
.L_52bc0:                       #        0x52b98  0      
  leal 0x1(%rax), %edx          #  27    0x52b98  3      
  movl %ebx, %ebx               #  28    0x52b9b  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  29    0x52b9d  5      
  movl %edx, %edx               #  30    0x52ba2  2      
  movzbl (%r15,%rdx,1), %ecx    #  31    0x52ba4  5      
  cmpb $0x5f, %cl               #  32    0x52ba9  3      
  sete %al                      #  33    0x52bac  3      
  cmpb $0x5a, %cl               #  34    0x52baf  3      
  je .L_52c20                   #  35    0x52bb2  6      
  testb %al, %al                #  36    0x52bb8  2      
  xchgw %ax, %ax                #  37    0x52bba  3      
  je .L_52c60                   #  38    0x52bbd  6      
  addl $0x1, %edx               #  39    0x52bc3  3      
  xorl %eax, %eax               #  40    0x52bc6  2      
  movl %ebx, %ebx               #  41    0x52bc8  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  42    0x52bca  5      
  movl %edx, %edx               #  43    0x52bcf  2      
  movzbl (%r15,%rdx,1), %ecx    #  44    0x52bd1  5      
  cmpb $0x5a, %cl               #  45    0x52bd6  3      
  je .L_52c20                   #  46    0x52bd9  6      
  nop                           #  47    0x52bdf  1      
.L_52c00:                       #        0x52be0  0      
  cmpb $0x45, %cl               #  48    0x52be0  3      
  jne .L_52b80                  #  49    0x52be3  6      
  addl $0x1, %edx               #  50    0x52be9  3      
  movl %ebx, %ebx               #  51    0x52bec  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  52    0x52bee  5      
  jmpq .L_52ba0                 #  53    0x52bf3  5      
  nop                           #  54    0x52bf8  1      
.L_52c20:                       #        0x52bf9  0      
  addl $0x1, %edx               #  55    0x52bf9  3      
  xorl %esi, %esi               #  56    0x52bfc  2      
  movl %ebx, %edi               #  57    0x52bfe  2      
  movl %ebx, %ebx               #  58    0x52c00  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  59    0x52c02  5      
  nop                           #  60    0x52c07  1      
  callq .d_encoding             #  61    0x52c08  5      
  movl %ebx, %ebx               #  62    0x52c0d  2      
  movl 0xc(%r15,%rbx,1), %edx   #  63    0x52c0f  5      
  movl %eax, %eax               #  64    0x52c14  2      
  movl %edx, %edx               #  65    0x52c16  2      
  movzbl (%r15,%rdx,1), %ecx    #  66    0x52c18  5      
  jmpq .L_52c00                 #  67    0x52c1d  5      
  nop                           #  68    0x52c22  1      
.L_52c60:                       #        0x52c23  0      
  movl %ebx, %edi               #  69    0x52c23  2      
  nop                           #  70    0x52c25  1      
  nop                           #  71    0x52c26  1      
  callq .d_type                 #  72    0x52c27  5      
  movl %eax, %r12d              #  73    0x52c2c  3      
  testq %r12, %r12              #  74    0x52c2f  3      
  je .L_52b80                   #  75    0x52c32  6      
  movl %r12d, %r12d             #  76    0x52c38  3      
  cmpl $0x23, (%r15,%r12,1)     #  77    0x52c3b  5      
  je .L_52d80                   #  78    0x52c40  6      
  nop                           #  79    0x52c46  1      
.L_52ca0:                       #        0x52c47  0      
  movl %ebx, %ebx               #  80    0x52c47  2      
  movl 0xc(%r15,%rbx,1), %esi   #  81    0x52c49  5      
  movl $0x34, %r13d             #  82    0x52c4e  6      
  movl %esi, %esi               #  83    0x52c54  2      
  movzbl (%r15,%rsi,1), %eax    #  84    0x52c56  5      
  cmpb $0x6e, %al               #  85    0x52c5b  2      
  je .L_52dc0                   #  86    0x52c5d  6      
  nop                           #  87    0x52c63  1      
.L_52cc0:                       #        0x52c64  0      
  xorl %edx, %edx               #  88    0x52c64  2      
  cmpb $0x45, %al               #  89    0x52c66  2      
  je .L_52d20                   #  90    0x52c68  6      
  testb %al, %al                #  91    0x52c6e  2      
  movq %rsi, %rdx               #  92    0x52c70  3      
  jne .L_52d00                  #  93    0x52c73  6      
  jmpq .L_52b80                 #  94    0x52c79  5      
  nop                           #  95    0x52c7e  1      
.L_52ce0:                       #        0x52c7f  0      
  testb %al, %al                #  96    0x52c7f  2      
  je .L_52b80                   #  97    0x52c81  6      
  nop                           #  98    0x52c87  1      
  nop                           #  99    0x52c88  1      
.L_52d00:                       #        0x52c89  0      
  addl $0x1, %edx               #  100   0x52c89  3      
  movl %ebx, %ebx               #  101   0x52c8c  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  102   0x52c8e  5      
  movl %edx, %edx               #  103   0x52c93  2      
  movzbl (%r15,%rdx,1), %eax    #  104   0x52c95  5      
  cmpb $0x45, %al               #  105   0x52c9a  2      
  jne .L_52ce0                  #  106   0x52c9c  6      
  subl %esi, %edx               #  107   0x52ca2  2      
  nop                           #  108   0x52ca4  1      
.L_52d20:                       #        0x52ca5  0      
  movl %ebx, %edi               #  109   0x52ca5  2      
  nop                           #  110   0x52ca7  1      
  nop                           #  111   0x52ca8  1      
  callq .d_make_name            #  112   0x52ca9  5      
  movl %r12d, %edx              #  113   0x52cae  3      
  movl %eax, %ecx               #  114   0x52cb1  2      
  movl %r13d, %esi              #  115   0x52cb3  3      
  movl %ebx, %edi               #  116   0x52cb6  2      
  xchgw %ax, %ax                #  117   0x52cb8  3      
  nop                           #  118   0x52cbb  1      
  callq .d_make_comp            #  119   0x52cbc  5      
  movl %ebx, %ebx               #  120   0x52cc1  2      
  movl 0xc(%r15,%rbx,1), %edx   #  121   0x52cc3  5      
  movl %eax, %eax               #  122   0x52cc8  2      
  movl %edx, %edx               #  123   0x52cca  2      
  movzbl (%r15,%rdx,1), %ecx    #  124   0x52ccc  5      
  jmpq .L_52c00                 #  125   0x52cd1  5      
  nop                           #  126   0x52cd6  1      
.L_52d80:                       #        0x52cd7  0      
  movl %r12d, %r12d             #  127   0x52cd7  3      
  movl 0x4(%r15,%r12,1), %eax   #  128   0x52cda  5      
  movl %eax, %eax               #  129   0x52cdf  2      
  movl 0x10(%r15,%rax,1), %edx  #  130   0x52ce1  5      
  testl %edx, %edx              #  131   0x52ce6  2      
  je .L_52ca0                   #  132   0x52ce8  6      
  movl %eax, %eax               #  133   0x52cee  2      
  movl 0x4(%r15,%rax,1), %eax   #  134   0x52cf0  5      
  xchgw %ax, %ax                #  135   0x52cf5  3      
  movl %ebx, %ebx               #  136   0x52cf8  2      
  subl %eax, 0x30(%r15,%rbx,1)  #  137   0x52cfa  5      
  jmpq .L_52ca0                 #  138   0x52cff  5      
  nop                           #  139   0x52d04  1      
  nop                           #  140   0x52d05  1      
.L_52dc0:                       #        0x52d06  0      
  addl $0x1, %esi               #  141   0x52d06  3      
  movb $0x35, %r13b             #  142   0x52d09  3      
  movl %ebx, %ebx               #  143   0x52d0c  2      
  movl %esi, 0xc(%r15,%rbx,1)   #  144   0x52d0e  5      
  movl %esi, %esi               #  145   0x52d13  2      
  movzbl (%r15,%rsi,1), %eax    #  146   0x52d15  5      
  jmpq .L_52cc0                 #  147   0x52d1a  5      
  nop                           #  148   0x52d1f  1      
                                                         
.size d_expr_primary, .-d_expr_primary

