  .text
  .globl _ZL28read_encoded_value_with_basehjPKhPj
  .type _ZL28read_encoded_value_with_basehjPKhPj, @function

#! file-offset 0x49b60
#! rip-offset  0x49b60
#! capacity    608 bytes

# Text                                      #  Line  RIP      Bytes  
._ZL28read_encoded_value_with_basehjPKhPj:  #        0x49b60  0      
  pushq %r12                                #  1     0x49b60  3      
  movl %edx, %eax                           #  2     0x49b63  2      
  movl %ecx, %r10d                          #  3     0x49b65  3      
  pushq %rbx                                #  4     0x49b68  2      
  subl $0x8, %esp                           #  5     0x49b6a  3      
  addq %r15, %rsp                           #  6     0x49b6d  3      
  cmpb $0x50, %dil                          #  7     0x49b70  4      
  je .L_49d80                               #  8     0x49b74  6      
  movzbl %dil, %r9d                         #  9     0x49b7a  4      
  movq %rax, %rbx                           #  10    0x49b7e  3      
  nop                                       #  11    0x49b81  1      
  movl %r9d, %edx                           #  12    0x49b82  3      
  andl $0xf, %edx                           #  13    0x49b85  3      
  cmpl $0xc, %edx                           #  14    0x49b88  3      
  jbe .L_49bc0                              #  15    0x49b8b  6      
  nop                                       #  16    0x49b91  1      
  nop                                       #  17    0x49b92  1      
  nop                                       #  18    0x49b93  1      
  nop                                       #  19    0x49b94  1      
  callq .abort                              #  20    0x49b95  5      
.L_49bc0:                                   #        0x49b9a  0      
  movl %edx, %edx                           #  21    0x49b9a  2      
  movl %edx, %edx                           #  22    0x49b9c  2      
  movq 0x10020ae0(%r15,%rdx,8), %rdx        #  23    0x49b9e  8      
  andl $0xffffffe0, %edx                    #  24    0x49ba6  6      
  addq %r15, %rdx                           #  25    0x49bac  3      
  jmpq %rdx                                 #  26    0x49baf  2      
  nop                                       #  27    0x49bb1  1      
  movl %eax, %eax                           #  28    0x49bb2  2      
  movl (%r15,%rax,1), %edx                  #  29    0x49bb4  4      
  addl $0x4, %eax                           #  30    0x49bb8  3      
  nop                                       #  31    0x49bbb  1      
  nop                                       #  32    0x49bbc  1      
.L_49c00:                                   #        0x49bbd  0      
  testl %edx, %edx                          #  33    0x49bbd  2      
  je .L_49c20                               #  34    0x49bbf  6      
  andl $0x70, %r9d                          #  35    0x49bc5  4      
  cmpl $0x10, %r9d                          #  36    0x49bc9  4      
  cmovel %ebx, %esi                         #  37    0x49bcd  3      
  addl %esi, %edx                           #  38    0x49bd0  2      
  testb %dil, %dil                          #  39    0x49bd2  3      
  jns .L_49c20                              #  40    0x49bd5  6      
  movl %edx, %edx                           #  41    0x49bdb  2      
  movl %edx, %edx                           #  42    0x49bdd  2      
  movl (%r15,%rdx,1), %edx                  #  43    0x49bdf  4      
  xchgw %ax, %ax                            #  44    0x49be3  3      
.L_49c20:                                   #        0x49be6  0      
  movl %r10d, %r10d                         #  45    0x49be6  3      
  movl %edx, (%r15,%r10,1)                  #  46    0x49be9  4      
  addl $0x8, %esp                           #  47    0x49bed  3      
  addq %r15, %rsp                           #  48    0x49bf0  3      
  popq %rbx                                 #  49    0x49bf3  2      
  popq %r12                                 #  50    0x49bf5  3      
  popq %r11                                 #  51    0x49bf8  3      
  andl $0xffffffe0, %r11d                   #  52    0x49bfb  7      
  addq %r15, %r11                           #  53    0x49c02  3      
  jmpq %r11                                 #  54    0x49c05  3      
  nop                                       #  55    0x49c08  1      
  movl %eax, %eax                           #  56    0x49c09  2      
  movl (%r15,%rax,1), %edx                  #  57    0x49c0b  4      
  addl $0x8, %eax                           #  58    0x49c0f  3      
  jmpq .L_49c00                             #  59    0x49c12  5      
  nop                                       #  60    0x49c17  1      
  nop                                       #  61    0x49c18  1      
  xorl %edx, %edx                           #  62    0x49c19  2      
  xorl %ecx, %ecx                           #  63    0x49c1b  2      
  nop                                       #  64    0x49c1d  1      
  nop                                       #  65    0x49c1e  1      
.L_49c80:                                   #        0x49c1f  0      
  movl %eax, %eax                           #  66    0x49c1f  2      
  movzbl (%r15,%rax,1), %r11d               #  67    0x49c21  5      
  movl $0x7f, %r8d                          #  68    0x49c26  6      
  addl $0x1, %eax                           #  69    0x49c2c  3      
  andl %r11d, %r8d                          #  70    0x49c2f  3      
  shll %cl, %r8d                            #  71    0x49c32  3      
  addl $0x7, %ecx                           #  72    0x49c35  3      
  orl %r8d, %edx                            #  73    0x49c38  3      
  testb %r11b, %r11b                        #  74    0x49c3b  3      
  nop                                       #  75    0x49c3e  1      
  js .L_49c80                               #  76    0x49c3f  6      
  jmpq .L_49c00                             #  77    0x49c45  5      
  nop                                       #  78    0x49c4a  1      
  nop                                       #  79    0x49c4b  1      
  xorl %edx, %edx                           #  80    0x49c4c  2      
  xorl %ecx, %ecx                           #  81    0x49c4e  2      
  nop                                       #  82    0x49c50  1      
  nop                                       #  83    0x49c51  1      
.L_49ce0:                                   #        0x49c52  0      
  movl %eax, %eax                           #  84    0x49c52  2      
  movzbl (%r15,%rax,1), %r11d               #  85    0x49c54  5      
  addl $0x1, %eax                           #  86    0x49c59  3      
  movzbl %r11b, %r12d                       #  87    0x49c5c  4      
  movl %r12d, %r8d                          #  88    0x49c60  3      
  andl $0x7f, %r8d                          #  89    0x49c63  4      
  shll %cl, %r8d                            #  90    0x49c67  3      
  addl $0x7, %ecx                           #  91    0x49c6a  3      
  orl %r8d, %edx                            #  92    0x49c6d  3      
  xchgw %ax, %ax                            #  93    0x49c70  3      
  testb %r11b, %r11b                        #  94    0x49c73  3      
  js .L_49ce0                               #  95    0x49c76  6      
  cmpl $0x1f, %ecx                          #  96    0x49c7c  3      
  ja .L_49c00                               #  97    0x49c7f  6      
  andl $0x40, %r12d                         #  98    0x49c85  4      
  je .L_49c00                               #  99    0x49c89  6      
  movl $0xffffffff, %r8d                    #  100   0x49c8f  6      
  xchgw %ax, %ax                            #  101   0x49c95  3      
  shll %cl, %r8d                            #  102   0x49c98  3      
  orl %r8d, %edx                            #  103   0x49c9b  3      
  jmpq .L_49c00                             #  104   0x49c9e  5      
  nop                                       #  105   0x49ca3  1      
  nop                                       #  106   0x49ca4  1      
  movl %eax, %eax                           #  107   0x49ca5  2      
  movswl (%r15,%rax,1), %edx                #  108   0x49ca7  5      
  addl $0x2, %eax                           #  109   0x49cac  3      
  jmpq .L_49c00                             #  110   0x49caf  5      
  xchgw %ax, %ax                            #  111   0x49cb4  3      
  nop                                       #  112   0x49cb7  1      
  movl %eax, %eax                           #  113   0x49cb8  2      
  movzwl (%r15,%rax,1), %edx                #  114   0x49cba  5      
  addl $0x2, %eax                           #  115   0x49cbf  3      
  jmpq .L_49c00                             #  116   0x49cc2  5      
  xchgw %ax, %ax                            #  117   0x49cc7  3      
  nop                                       #  118   0x49cca  1      
.L_49d80:                                   #        0x49ccb  0      
  addl $0x3, %eax                           #  119   0x49ccb  3      
  andl $0xfffffffc, %eax                    #  120   0x49cce  5      
  movl %eax, %edx                           #  121   0x49cd3  2      
  addl $0x4, %eax                           #  122   0x49cd5  3      
  movl %edx, %edx                           #  123   0x49cd8  2      
  movl (%r15,%rdx,1), %edx                  #  124   0x49cda  4      
  movl %eax, %eax                           #  125   0x49cde  2      
  movl %r10d, %r10d                         #  126   0x49ce0  3      
  movl %edx, (%r15,%r10,1)                  #  127   0x49ce3  4      
  addl $0x8, %esp                           #  128   0x49ce7  3      
  addq %r15, %rsp                           #  129   0x49cea  3      
  popq %rbx                                 #  130   0x49ced  2      
  popq %r12                                 #  131   0x49cef  3      
  popq %r11                                 #  132   0x49cf2  3      
  andl $0xffffffe0, %r11d                   #  133   0x49cf5  7      
  addq %r15, %r11                           #  134   0x49cfc  3      
  jmpq %r11                                 #  135   0x49cff  3      
  nop                                       #  136   0x49d02  1      
  nop                                       #  137   0x49d03  1      
  nop                                       #  138   0x49d04  1      
  nop                                       #  139   0x49d05  1      
  nop                                       #  140   0x49d06  1      
  nop                                       #  141   0x49d07  1      
  nop                                       #  142   0x49d08  1      
  nop                                       #  143   0x49d09  1      
  nop                                       #  144   0x49d0a  1      
  nop                                       #  145   0x49d0b  1      
  nop                                       #  146   0x49d0c  1      
  nop                                       #  147   0x49d0d  1      
  nop                                       #  148   0x49d0e  1      
  nop                                       #  149   0x49d0f  1      
  nop                                       #  150   0x49d10  1      
  nop                                       #  151   0x49d11  1      
  nop                                       #  152   0x49d12  1      
                                                                     
.size _ZL28read_encoded_value_with_basehjPKhPj, .-_ZL28read_encoded_value_with_basehjPKhPj

