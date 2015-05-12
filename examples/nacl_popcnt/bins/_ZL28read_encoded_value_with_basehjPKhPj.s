  .text
  .globl _ZL28read_encoded_value_with_basehjPKhPj
  .type _ZL28read_encoded_value_with_basehjPKhPj, @function

#! file-offset 0x49b80
#! rip-offset  0x49b80
#! capacity    608 bytes

# Text                                      #  Line  RIP      Bytes  
._ZL28read_encoded_value_with_basehjPKhPj:  #        0x49b80  0      
  pushq %r12                                #  1     0x49b80  3      
  movl %edx, %eax                           #  2     0x49b83  2      
  movl %ecx, %r10d                          #  3     0x49b85  3      
  pushq %rbx                                #  4     0x49b88  2      
  subl $0x8, %esp                           #  5     0x49b8a  3      
  addq %r15, %rsp                           #  6     0x49b8d  3      
  cmpb $0x50, %dil                          #  7     0x49b90  4      
  je .L_49da0                               #  8     0x49b94  6      
  movzbl %dil, %r9d                         #  9     0x49b9a  4      
  movq %rax, %rbx                           #  10    0x49b9e  3      
  nop                                       #  11    0x49ba1  1      
  movl %r9d, %edx                           #  12    0x49ba2  3      
  andl $0xf, %edx                           #  13    0x49ba5  3      
  cmpl $0xc, %edx                           #  14    0x49ba8  3      
  jbe .L_49be0                              #  15    0x49bab  6      
  nop                                       #  16    0x49bb1  1      
  nop                                       #  17    0x49bb2  1      
  nop                                       #  18    0x49bb3  1      
  nop                                       #  19    0x49bb4  1      
  callq .abort                              #  20    0x49bb5  5      
.L_49be0:                                   #        0x49bba  0      
  movl %edx, %edx                           #  21    0x49bba  2      
  movl %edx, %edx                           #  22    0x49bbc  2      
  movq 0x10020ae0(%r15,%rdx,8), %rdx        #  23    0x49bbe  8      
  andl $0xffffffe0, %edx                    #  24    0x49bc6  6      
  addq %r15, %rdx                           #  25    0x49bcc  3      
  jmpq %rdx                                 #  26    0x49bcf  2      
  nop                                       #  27    0x49bd1  1      
  movl %eax, %eax                           #  28    0x49bd2  2      
  movl (%r15,%rax,1), %edx                  #  29    0x49bd4  4      
  addl $0x4, %eax                           #  30    0x49bd8  3      
  nop                                       #  31    0x49bdb  1      
  nop                                       #  32    0x49bdc  1      
.L_49c20:                                   #        0x49bdd  0      
  testl %edx, %edx                          #  33    0x49bdd  2      
  je .L_49c40                               #  34    0x49bdf  6      
  andl $0x70, %r9d                          #  35    0x49be5  4      
  cmpl $0x10, %r9d                          #  36    0x49be9  4      
  cmovel %ebx, %esi                         #  37    0x49bed  3      
  addl %esi, %edx                           #  38    0x49bf0  2      
  testb %dil, %dil                          #  39    0x49bf2  3      
  jns .L_49c40                              #  40    0x49bf5  6      
  movl %edx, %edx                           #  41    0x49bfb  2      
  movl %edx, %edx                           #  42    0x49bfd  2      
  movl (%r15,%rdx,1), %edx                  #  43    0x49bff  4      
  xchgw %ax, %ax                            #  44    0x49c03  3      
.L_49c40:                                   #        0x49c06  0      
  movl %r10d, %r10d                         #  45    0x49c06  3      
  movl %edx, (%r15,%r10,1)                  #  46    0x49c09  4      
  addl $0x8, %esp                           #  47    0x49c0d  3      
  addq %r15, %rsp                           #  48    0x49c10  3      
  popq %rbx                                 #  49    0x49c13  2      
  popq %r12                                 #  50    0x49c15  3      
  popq %r11                                 #  51    0x49c18  3      
  andl $0xffffffe0, %r11d                   #  52    0x49c1b  7      
  addq %r15, %r11                           #  53    0x49c22  3      
  jmpq %r11                                 #  54    0x49c25  3      
  nop                                       #  55    0x49c28  1      
  movl %eax, %eax                           #  56    0x49c29  2      
  movl (%r15,%rax,1), %edx                  #  57    0x49c2b  4      
  addl $0x8, %eax                           #  58    0x49c2f  3      
  jmpq .L_49c20                             #  59    0x49c32  5      
  nop                                       #  60    0x49c37  1      
  nop                                       #  61    0x49c38  1      
  xorl %edx, %edx                           #  62    0x49c39  2      
  xorl %ecx, %ecx                           #  63    0x49c3b  2      
  nop                                       #  64    0x49c3d  1      
  nop                                       #  65    0x49c3e  1      
.L_49ca0:                                   #        0x49c3f  0      
  movl %eax, %eax                           #  66    0x49c3f  2      
  movzbl (%r15,%rax,1), %r11d               #  67    0x49c41  5      
  movl $0x7f, %r8d                          #  68    0x49c46  6      
  addl $0x1, %eax                           #  69    0x49c4c  3      
  andl %r11d, %r8d                          #  70    0x49c4f  3      
  shll %cl, %r8d                            #  71    0x49c52  3      
  addl $0x7, %ecx                           #  72    0x49c55  3      
  orl %r8d, %edx                            #  73    0x49c58  3      
  testb %r11b, %r11b                        #  74    0x49c5b  3      
  nop                                       #  75    0x49c5e  1      
  js .L_49ca0                               #  76    0x49c5f  6      
  jmpq .L_49c20                             #  77    0x49c65  5      
  nop                                       #  78    0x49c6a  1      
  nop                                       #  79    0x49c6b  1      
  xorl %edx, %edx                           #  80    0x49c6c  2      
  xorl %ecx, %ecx                           #  81    0x49c6e  2      
  nop                                       #  82    0x49c70  1      
  nop                                       #  83    0x49c71  1      
.L_49d00:                                   #        0x49c72  0      
  movl %eax, %eax                           #  84    0x49c72  2      
  movzbl (%r15,%rax,1), %r11d               #  85    0x49c74  5      
  addl $0x1, %eax                           #  86    0x49c79  3      
  movzbl %r11b, %r12d                       #  87    0x49c7c  4      
  movl %r12d, %r8d                          #  88    0x49c80  3      
  andl $0x7f, %r8d                          #  89    0x49c83  4      
  shll %cl, %r8d                            #  90    0x49c87  3      
  addl $0x7, %ecx                           #  91    0x49c8a  3      
  orl %r8d, %edx                            #  92    0x49c8d  3      
  xchgw %ax, %ax                            #  93    0x49c90  3      
  testb %r11b, %r11b                        #  94    0x49c93  3      
  js .L_49d00                               #  95    0x49c96  6      
  cmpl $0x1f, %ecx                          #  96    0x49c9c  3      
  ja .L_49c20                               #  97    0x49c9f  6      
  andl $0x40, %r12d                         #  98    0x49ca5  4      
  je .L_49c20                               #  99    0x49ca9  6      
  movl $0xffffffff, %r8d                    #  100   0x49caf  6      
  xchgw %ax, %ax                            #  101   0x49cb5  3      
  shll %cl, %r8d                            #  102   0x49cb8  3      
  orl %r8d, %edx                            #  103   0x49cbb  3      
  jmpq .L_49c20                             #  104   0x49cbe  5      
  nop                                       #  105   0x49cc3  1      
  nop                                       #  106   0x49cc4  1      
  movl %eax, %eax                           #  107   0x49cc5  2      
  movswl (%r15,%rax,1), %edx                #  108   0x49cc7  5      
  addl $0x2, %eax                           #  109   0x49ccc  3      
  jmpq .L_49c20                             #  110   0x49ccf  5      
  xchgw %ax, %ax                            #  111   0x49cd4  3      
  nop                                       #  112   0x49cd7  1      
  movl %eax, %eax                           #  113   0x49cd8  2      
  movzwl (%r15,%rax,1), %edx                #  114   0x49cda  5      
  addl $0x2, %eax                           #  115   0x49cdf  3      
  jmpq .L_49c20                             #  116   0x49ce2  5      
  xchgw %ax, %ax                            #  117   0x49ce7  3      
  nop                                       #  118   0x49cea  1      
.L_49da0:                                   #        0x49ceb  0      
  addl $0x3, %eax                           #  119   0x49ceb  3      
  andl $0xfffffffc, %eax                    #  120   0x49cee  5      
  movl %eax, %edx                           #  121   0x49cf3  2      
  addl $0x4, %eax                           #  122   0x49cf5  3      
  movl %edx, %edx                           #  123   0x49cf8  2      
  movl (%r15,%rdx,1), %edx                  #  124   0x49cfa  4      
  movl %eax, %eax                           #  125   0x49cfe  2      
  movl %r10d, %r10d                         #  126   0x49d00  3      
  movl %edx, (%r15,%r10,1)                  #  127   0x49d03  4      
  addl $0x8, %esp                           #  128   0x49d07  3      
  addq %r15, %rsp                           #  129   0x49d0a  3      
  popq %rbx                                 #  130   0x49d0d  2      
  popq %r12                                 #  131   0x49d0f  3      
  popq %r11                                 #  132   0x49d12  3      
  andl $0xffffffe0, %r11d                   #  133   0x49d15  7      
  addq %r15, %r11                           #  134   0x49d1c  3      
  jmpq %r11                                 #  135   0x49d1f  3      
  nop                                       #  136   0x49d22  1      
  nop                                       #  137   0x49d23  1      
  nop                                       #  138   0x49d24  1      
  nop                                       #  139   0x49d25  1      
  nop                                       #  140   0x49d26  1      
  nop                                       #  141   0x49d27  1      
  nop                                       #  142   0x49d28  1      
  nop                                       #  143   0x49d29  1      
  nop                                       #  144   0x49d2a  1      
  nop                                       #  145   0x49d2b  1      
  nop                                       #  146   0x49d2c  1      
  nop                                       #  147   0x49d2d  1      
  nop                                       #  148   0x49d2e  1      
  nop                                       #  149   0x49d2f  1      
  nop                                       #  150   0x49d30  1      
  nop                                       #  151   0x49d31  1      
  nop                                       #  152   0x49d32  1      
                                                                     
.size _ZL28read_encoded_value_with_basehjPKhPj, .-_ZL28read_encoded_value_with_basehjPKhPj

