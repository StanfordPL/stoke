  .text
  .globl _ZL28read_encoded_value_with_basehjPKhPj
  .type _ZL28read_encoded_value_with_basehjPKhPj, @function

#! file-offset 0x49c00
#! rip-offset  0x49c00
#! capacity    608 bytes

# Text                                      #  Line  RIP      Bytes  
._ZL28read_encoded_value_with_basehjPKhPj:  #        0x49c00  0      
  pushq %r12                                #  1     0x49c00  3      
  movl %edx, %eax                           #  2     0x49c03  2      
  movl %ecx, %r10d                          #  3     0x49c05  3      
  pushq %rbx                                #  4     0x49c08  2      
  subl $0x8, %esp                           #  5     0x49c0a  3      
  addq %r15, %rsp                           #  6     0x49c0d  3      
  cmpb $0x50, %dil                          #  7     0x49c10  4      
  je .L_49e20                               #  8     0x49c14  6      
  movzbl %dil, %r9d                         #  9     0x49c1a  4      
  movq %rax, %rbx                           #  10    0x49c1e  3      
  nop                                       #  11    0x49c21  1      
  movl %r9d, %edx                           #  12    0x49c22  3      
  andl $0xf, %edx                           #  13    0x49c25  3      
  cmpl $0xc, %edx                           #  14    0x49c28  3      
  jbe .L_49c60                              #  15    0x49c2b  6      
  nop                                       #  16    0x49c31  1      
  nop                                       #  17    0x49c32  1      
  nop                                       #  18    0x49c33  1      
  nop                                       #  19    0x49c34  1      
  callq .abort                              #  20    0x49c35  5      
.L_49c60:                                   #        0x49c3a  0      
  movl %edx, %edx                           #  21    0x49c3a  2      
  movl %edx, %edx                           #  22    0x49c3c  2      
  movq 0x10020ae0(%r15,%rdx,8), %rdx        #  23    0x49c3e  8      
  andl $0xffffffe0, %edx                    #  24    0x49c46  6      
  addq %r15, %rdx                           #  25    0x49c4c  3      
  jmpq %rdx                                 #  26    0x49c4f  2      
  nop                                       #  27    0x49c51  1      
  movl %eax, %eax                           #  28    0x49c52  2      
  movl (%r15,%rax,1), %edx                  #  29    0x49c54  4      
  addl $0x4, %eax                           #  30    0x49c58  3      
  nop                                       #  31    0x49c5b  1      
  nop                                       #  32    0x49c5c  1      
.L_49ca0:                                   #        0x49c5d  0      
  testl %edx, %edx                          #  33    0x49c5d  2      
  je .L_49cc0                               #  34    0x49c5f  6      
  andl $0x70, %r9d                          #  35    0x49c65  4      
  cmpl $0x10, %r9d                          #  36    0x49c69  4      
  cmovel %ebx, %esi                         #  37    0x49c6d  3      
  addl %esi, %edx                           #  38    0x49c70  2      
  testb %dil, %dil                          #  39    0x49c72  3      
  jns .L_49cc0                              #  40    0x49c75  6      
  movl %edx, %edx                           #  41    0x49c7b  2      
  movl %edx, %edx                           #  42    0x49c7d  2      
  movl (%r15,%rdx,1), %edx                  #  43    0x49c7f  4      
  xchgw %ax, %ax                            #  44    0x49c83  3      
.L_49cc0:                                   #        0x49c86  0      
  movl %r10d, %r10d                         #  45    0x49c86  3      
  movl %edx, (%r15,%r10,1)                  #  46    0x49c89  4      
  addl $0x8, %esp                           #  47    0x49c8d  3      
  addq %r15, %rsp                           #  48    0x49c90  3      
  popq %rbx                                 #  49    0x49c93  2      
  popq %r12                                 #  50    0x49c95  3      
  popq %r11                                 #  51    0x49c98  3      
  andl $0xffffffe0, %r11d                   #  52    0x49c9b  7      
  addq %r15, %r11                           #  53    0x49ca2  3      
  jmpq %r11                                 #  54    0x49ca5  3      
  nop                                       #  55    0x49ca8  1      
  movl %eax, %eax                           #  56    0x49ca9  2      
  movl (%r15,%rax,1), %edx                  #  57    0x49cab  4      
  addl $0x8, %eax                           #  58    0x49caf  3      
  jmpq .L_49ca0                             #  59    0x49cb2  5      
  nop                                       #  60    0x49cb7  1      
  nop                                       #  61    0x49cb8  1      
  xorl %edx, %edx                           #  62    0x49cb9  2      
  xorl %ecx, %ecx                           #  63    0x49cbb  2      
  nop                                       #  64    0x49cbd  1      
  nop                                       #  65    0x49cbe  1      
.L_49d20:                                   #        0x49cbf  0      
  movl %eax, %eax                           #  66    0x49cbf  2      
  movzbl (%r15,%rax,1), %r11d               #  67    0x49cc1  5      
  movl $0x7f, %r8d                          #  68    0x49cc6  6      
  addl $0x1, %eax                           #  69    0x49ccc  3      
  andl %r11d, %r8d                          #  70    0x49ccf  3      
  shll %cl, %r8d                            #  71    0x49cd2  3      
  addl $0x7, %ecx                           #  72    0x49cd5  3      
  orl %r8d, %edx                            #  73    0x49cd8  3      
  testb %r11b, %r11b                        #  74    0x49cdb  3      
  nop                                       #  75    0x49cde  1      
  js .L_49d20                               #  76    0x49cdf  6      
  jmpq .L_49ca0                             #  77    0x49ce5  5      
  nop                                       #  78    0x49cea  1      
  nop                                       #  79    0x49ceb  1      
  xorl %edx, %edx                           #  80    0x49cec  2      
  xorl %ecx, %ecx                           #  81    0x49cee  2      
  nop                                       #  82    0x49cf0  1      
  nop                                       #  83    0x49cf1  1      
.L_49d80:                                   #        0x49cf2  0      
  movl %eax, %eax                           #  84    0x49cf2  2      
  movzbl (%r15,%rax,1), %r11d               #  85    0x49cf4  5      
  addl $0x1, %eax                           #  86    0x49cf9  3      
  movzbl %r11b, %r12d                       #  87    0x49cfc  4      
  movl %r12d, %r8d                          #  88    0x49d00  3      
  andl $0x7f, %r8d                          #  89    0x49d03  4      
  shll %cl, %r8d                            #  90    0x49d07  3      
  addl $0x7, %ecx                           #  91    0x49d0a  3      
  orl %r8d, %edx                            #  92    0x49d0d  3      
  xchgw %ax, %ax                            #  93    0x49d10  3      
  testb %r11b, %r11b                        #  94    0x49d13  3      
  js .L_49d80                               #  95    0x49d16  6      
  cmpl $0x1f, %ecx                          #  96    0x49d1c  3      
  ja .L_49ca0                               #  97    0x49d1f  6      
  andl $0x40, %r12d                         #  98    0x49d25  4      
  je .L_49ca0                               #  99    0x49d29  6      
  movl $0xffffffff, %r8d                    #  100   0x49d2f  6      
  xchgw %ax, %ax                            #  101   0x49d35  3      
  shll %cl, %r8d                            #  102   0x49d38  3      
  orl %r8d, %edx                            #  103   0x49d3b  3      
  jmpq .L_49ca0                             #  104   0x49d3e  5      
  nop                                       #  105   0x49d43  1      
  nop                                       #  106   0x49d44  1      
  movl %eax, %eax                           #  107   0x49d45  2      
  movswl (%r15,%rax,1), %edx                #  108   0x49d47  5      
  addl $0x2, %eax                           #  109   0x49d4c  3      
  jmpq .L_49ca0                             #  110   0x49d4f  5      
  xchgw %ax, %ax                            #  111   0x49d54  3      
  nop                                       #  112   0x49d57  1      
  movl %eax, %eax                           #  113   0x49d58  2      
  movzwl (%r15,%rax,1), %edx                #  114   0x49d5a  5      
  addl $0x2, %eax                           #  115   0x49d5f  3      
  jmpq .L_49ca0                             #  116   0x49d62  5      
  xchgw %ax, %ax                            #  117   0x49d67  3      
  nop                                       #  118   0x49d6a  1      
.L_49e20:                                   #        0x49d6b  0      
  addl $0x3, %eax                           #  119   0x49d6b  3      
  andl $0xfffffffc, %eax                    #  120   0x49d6e  5      
  movl %eax, %edx                           #  121   0x49d73  2      
  addl $0x4, %eax                           #  122   0x49d75  3      
  movl %edx, %edx                           #  123   0x49d78  2      
  movl (%r15,%rdx,1), %edx                  #  124   0x49d7a  4      
  movl %eax, %eax                           #  125   0x49d7e  2      
  movl %r10d, %r10d                         #  126   0x49d80  3      
  movl %edx, (%r15,%r10,1)                  #  127   0x49d83  4      
  addl $0x8, %esp                           #  128   0x49d87  3      
  addq %r15, %rsp                           #  129   0x49d8a  3      
  popq %rbx                                 #  130   0x49d8d  2      
  popq %r12                                 #  131   0x49d8f  3      
  popq %r11                                 #  132   0x49d92  3      
  andl $0xffffffe0, %r11d                   #  133   0x49d95  7      
  addq %r15, %r11                           #  134   0x49d9c  3      
  jmpq %r11                                 #  135   0x49d9f  3      
  nop                                       #  136   0x49da2  1      
  nop                                       #  137   0x49da3  1      
  nop                                       #  138   0x49da4  1      
  nop                                       #  139   0x49da5  1      
  nop                                       #  140   0x49da6  1      
  nop                                       #  141   0x49da7  1      
  nop                                       #  142   0x49da8  1      
  nop                                       #  143   0x49da9  1      
  nop                                       #  144   0x49daa  1      
  nop                                       #  145   0x49dab  1      
  nop                                       #  146   0x49dac  1      
  nop                                       #  147   0x49dad  1      
  nop                                       #  148   0x49dae  1      
  nop                                       #  149   0x49daf  1      
  nop                                       #  150   0x49db0  1      
  nop                                       #  151   0x49db1  1      
  nop                                       #  152   0x49db2  1      
                                                                     
.size _ZL28read_encoded_value_with_basehjPKhPj, .-_ZL28read_encoded_value_with_basehjPKhPj

