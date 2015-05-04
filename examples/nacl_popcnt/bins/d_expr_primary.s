  .text
  .globl d_expr_primary
  .type d_expr_primary, @function

#! file-offset 0x52be0
#! rip-offset  0x52be0
#! capacity    672 bytes

# Text                          #  Line  RIP      Bytes  
.d_expr_primary:                #        0x52be0  0      
  movq %rbx, -0x18(%rsp)        #  1     0x52be0  5      
  movl %edi, %ebx               #  2     0x52be5  2      
  movq %r12, -0x10(%rsp)        #  3     0x52be7  5      
  movq %r13, -0x8(%rsp)         #  4     0x52bec  5      
  subl $0x18, %esp              #  5     0x52bf1  3      
  addq %r15, %rsp               #  6     0x52bf4  3      
  movl %ebx, %ebx               #  7     0x52bf7  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x52bf9  5      
  xchgw %ax, %ax                #  9     0x52bfe  3      
  movl %eax, %eax               #  10    0x52c01  2      
  cmpb $0x4c, (%r15,%rax,1)     #  11    0x52c03  5      
  je .L_52c60                   #  12    0x52c08  6      
  nop                           #  13    0x52c0e  1      
  nop                           #  14    0x52c0f  1      
.L_52c20:                       #        0x52c10  0      
  xorl %eax, %eax               #  15    0x52c10  2      
  nop                           #  16    0x52c12  1      
  nop                           #  17    0x52c13  1      
.L_52c40:                       #        0x52c14  0      
  movq (%rsp), %rbx             #  18    0x52c14  4      
  movq 0x8(%rsp), %r12          #  19    0x52c18  5      
  movq 0x10(%rsp), %r13         #  20    0x52c1d  5      
  addl $0x18, %esp              #  21    0x52c22  3      
  addq %r15, %rsp               #  22    0x52c25  3      
  popq %r11                     #  23    0x52c28  3      
  andl $0xffffffe0, %r11d       #  24    0x52c2b  7      
  addq %r15, %r11               #  25    0x52c32  3      
  jmpq %r11                     #  26    0x52c35  3      
.L_52c60:                       #        0x52c38  0      
  leal 0x1(%rax), %edx          #  27    0x52c38  3      
  movl %ebx, %ebx               #  28    0x52c3b  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  29    0x52c3d  5      
  movl %edx, %edx               #  30    0x52c42  2      
  movzbl (%r15,%rdx,1), %ecx    #  31    0x52c44  5      
  cmpb $0x5f, %cl               #  32    0x52c49  3      
  sete %al                      #  33    0x52c4c  3      
  cmpb $0x5a, %cl               #  34    0x52c4f  3      
  je .L_52cc0                   #  35    0x52c52  6      
  testb %al, %al                #  36    0x52c58  2      
  xchgw %ax, %ax                #  37    0x52c5a  3      
  je .L_52d00                   #  38    0x52c5d  6      
  addl $0x1, %edx               #  39    0x52c63  3      
  xorl %eax, %eax               #  40    0x52c66  2      
  movl %ebx, %ebx               #  41    0x52c68  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  42    0x52c6a  5      
  movl %edx, %edx               #  43    0x52c6f  2      
  movzbl (%r15,%rdx,1), %ecx    #  44    0x52c71  5      
  cmpb $0x5a, %cl               #  45    0x52c76  3      
  je .L_52cc0                   #  46    0x52c79  6      
  nop                           #  47    0x52c7f  1      
.L_52ca0:                       #        0x52c80  0      
  cmpb $0x45, %cl               #  48    0x52c80  3      
  jne .L_52c20                  #  49    0x52c83  6      
  addl $0x1, %edx               #  50    0x52c89  3      
  movl %ebx, %ebx               #  51    0x52c8c  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  52    0x52c8e  5      
  jmpq .L_52c40                 #  53    0x52c93  5      
  nop                           #  54    0x52c98  1      
.L_52cc0:                       #        0x52c99  0      
  addl $0x1, %edx               #  55    0x52c99  3      
  xorl %esi, %esi               #  56    0x52c9c  2      
  movl %ebx, %edi               #  57    0x52c9e  2      
  movl %ebx, %ebx               #  58    0x52ca0  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  59    0x52ca2  5      
  nop                           #  60    0x52ca7  1      
  callq .d_encoding             #  61    0x52ca8  5      
  movl %ebx, %ebx               #  62    0x52cad  2      
  movl 0xc(%r15,%rbx,1), %edx   #  63    0x52caf  5      
  movl %eax, %eax               #  64    0x52cb4  2      
  movl %edx, %edx               #  65    0x52cb6  2      
  movzbl (%r15,%rdx,1), %ecx    #  66    0x52cb8  5      
  jmpq .L_52ca0                 #  67    0x52cbd  5      
  nop                           #  68    0x52cc2  1      
.L_52d00:                       #        0x52cc3  0      
  movl %ebx, %edi               #  69    0x52cc3  2      
  nop                           #  70    0x52cc5  1      
  nop                           #  71    0x52cc6  1      
  callq .d_type                 #  72    0x52cc7  5      
  movl %eax, %r12d              #  73    0x52ccc  3      
  testq %r12, %r12              #  74    0x52ccf  3      
  je .L_52c20                   #  75    0x52cd2  6      
  movl %r12d, %r12d             #  76    0x52cd8  3      
  cmpl $0x23, (%r15,%r12,1)     #  77    0x52cdb  5      
  je .L_52e20                   #  78    0x52ce0  6      
  nop                           #  79    0x52ce6  1      
.L_52d40:                       #        0x52ce7  0      
  movl %ebx, %ebx               #  80    0x52ce7  2      
  movl 0xc(%r15,%rbx,1), %esi   #  81    0x52ce9  5      
  movl $0x34, %r13d             #  82    0x52cee  6      
  movl %esi, %esi               #  83    0x52cf4  2      
  movzbl (%r15,%rsi,1), %eax    #  84    0x52cf6  5      
  cmpb $0x6e, %al               #  85    0x52cfb  2      
  je .L_52e60                   #  86    0x52cfd  6      
  nop                           #  87    0x52d03  1      
.L_52d60:                       #        0x52d04  0      
  xorl %edx, %edx               #  88    0x52d04  2      
  cmpb $0x45, %al               #  89    0x52d06  2      
  je .L_52dc0                   #  90    0x52d08  6      
  testb %al, %al                #  91    0x52d0e  2      
  movq %rsi, %rdx               #  92    0x52d10  3      
  jne .L_52da0                  #  93    0x52d13  6      
  jmpq .L_52c20                 #  94    0x52d19  5      
  nop                           #  95    0x52d1e  1      
.L_52d80:                       #        0x52d1f  0      
  testb %al, %al                #  96    0x52d1f  2      
  je .L_52c20                   #  97    0x52d21  6      
  nop                           #  98    0x52d27  1      
  nop                           #  99    0x52d28  1      
.L_52da0:                       #        0x52d29  0      
  addl $0x1, %edx               #  100   0x52d29  3      
  movl %ebx, %ebx               #  101   0x52d2c  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  102   0x52d2e  5      
  movl %edx, %edx               #  103   0x52d33  2      
  movzbl (%r15,%rdx,1), %eax    #  104   0x52d35  5      
  cmpb $0x45, %al               #  105   0x52d3a  2      
  jne .L_52d80                  #  106   0x52d3c  6      
  subl %esi, %edx               #  107   0x52d42  2      
  nop                           #  108   0x52d44  1      
.L_52dc0:                       #        0x52d45  0      
  movl %ebx, %edi               #  109   0x52d45  2      
  nop                           #  110   0x52d47  1      
  nop                           #  111   0x52d48  1      
  callq .d_make_name            #  112   0x52d49  5      
  movl %r12d, %edx              #  113   0x52d4e  3      
  movl %eax, %ecx               #  114   0x52d51  2      
  movl %r13d, %esi              #  115   0x52d53  3      
  movl %ebx, %edi               #  116   0x52d56  2      
  xchgw %ax, %ax                #  117   0x52d58  3      
  nop                           #  118   0x52d5b  1      
  callq .d_make_comp            #  119   0x52d5c  5      
  movl %ebx, %ebx               #  120   0x52d61  2      
  movl 0xc(%r15,%rbx,1), %edx   #  121   0x52d63  5      
  movl %eax, %eax               #  122   0x52d68  2      
  movl %edx, %edx               #  123   0x52d6a  2      
  movzbl (%r15,%rdx,1), %ecx    #  124   0x52d6c  5      
  jmpq .L_52ca0                 #  125   0x52d71  5      
  nop                           #  126   0x52d76  1      
.L_52e20:                       #        0x52d77  0      
  movl %r12d, %r12d             #  127   0x52d77  3      
  movl 0x4(%r15,%r12,1), %eax   #  128   0x52d7a  5      
  movl %eax, %eax               #  129   0x52d7f  2      
  movl 0x10(%r15,%rax,1), %edx  #  130   0x52d81  5      
  testl %edx, %edx              #  131   0x52d86  2      
  je .L_52d40                   #  132   0x52d88  6      
  movl %eax, %eax               #  133   0x52d8e  2      
  movl 0x4(%r15,%rax,1), %eax   #  134   0x52d90  5      
  xchgw %ax, %ax                #  135   0x52d95  3      
  movl %ebx, %ebx               #  136   0x52d98  2      
  subl %eax, 0x30(%r15,%rbx,1)  #  137   0x52d9a  5      
  jmpq .L_52d40                 #  138   0x52d9f  5      
  nop                           #  139   0x52da4  1      
  nop                           #  140   0x52da5  1      
.L_52e60:                       #        0x52da6  0      
  addl $0x1, %esi               #  141   0x52da6  3      
  movb $0x35, %r13b             #  142   0x52da9  3      
  movl %ebx, %ebx               #  143   0x52dac  2      
  movl %esi, 0xc(%r15,%rbx,1)   #  144   0x52dae  5      
  movl %esi, %esi               #  145   0x52db3  2      
  movzbl (%r15,%rsi,1), %eax    #  146   0x52db5  5      
  jmpq .L_52d60                 #  147   0x52dba  5      
  nop                           #  148   0x52dbf  1      
                                                         
.size d_expr_primary, .-d_expr_primary

