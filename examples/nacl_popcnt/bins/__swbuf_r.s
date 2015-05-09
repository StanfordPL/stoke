  .text
  .globl __swbuf_r
  .type __swbuf_r, @function

#! file-offset 0x76e40
#! rip-offset  0x76e40
#! capacity    672 bytes

# Text                                 #  Line  RIP      Bytes  
.__swbuf_r:                            #        0x76e40  0      
  movq %r13, -0x10(%rsp)               #  1     0x76e40  5      
  movl %edi, %r13d                     #  2     0x76e45  3      
  movq %rbx, -0x20(%rsp)               #  3     0x76e48  5      
  movq %r12, -0x18(%rsp)               #  4     0x76e4d  5      
  movq %r14, -0x8(%rsp)                #  5     0x76e52  5      
  subl $0x28, %esp                     #  6     0x76e57  3      
  addq %r15, %rsp                      #  7     0x76e5a  3      
  testq %r13, %r13                     #  8     0x76e5d  3      
  movl %esi, %ebx                      #  9     0x76e60  2      
  movl %edx, %r12d                     #  10    0x76e62  3      
  je .L_76e80                          #  11    0x76e65  6      
  movl %r13d, %r13d                    #  12    0x76e6b  3      
  movl 0x38(%r15,%r13,1), %esi         #  13    0x76e6e  5      
  testl %esi, %esi                     #  14    0x76e73  2      
  je .L_77020                          #  15    0x76e75  6      
  nop                                  #  16    0x76e7b  1      
.L_76e80:                              #        0x76e7c  0      
  movl %r12d, %r12d                    #  17    0x76e7c  3      
  movzwl 0xc(%r15,%r12,1), %edx        #  18    0x76e7f  6      
  movl %r12d, %r12d                    #  19    0x76e85  3      
  movl 0x18(%r15,%r12,1), %eax         #  20    0x76e88  5      
  movl %r12d, %r12d                    #  21    0x76e8d  3      
  movl %eax, 0x8(%r15,%r12,1)          #  22    0x76e90  5      
  movswl %dx, %eax                     #  23    0x76e95  3      
  testb $0x8, %al                      #  24    0x76e98  2      
  xchgw %ax, %ax                       #  25    0x76e9a  3      
  je .L_77060                          #  26    0x76e9d  6      
  movl %r12d, %r12d                    #  27    0x76ea3  3      
  movl 0x10(%r15,%r12,1), %ecx         #  28    0x76ea6  5      
  testl %ecx, %ecx                     #  29    0x76eab  2      
  je .L_77060                          #  30    0x76ead  6      
  nop                                  #  31    0x76eb3  1      
.L_76ec0:                              #        0x76eb4  0      
  testb $0x20, %ah                     #  32    0x76eb4  3      
  je .L_76f80                          #  33    0x76eb7  6      
  nop                                  #  34    0x76ebd  1      
  nop                                  #  35    0x76ebe  1      
.L_76ee0:                              #        0x76ebf  0      
  movl %r12d, %r12d                    #  36    0x76ebf  3      
  movl (%r15,%r12,1), %eax             #  37    0x76ec2  4      
  movl %r12d, %r12d                    #  38    0x76ec6  3      
  subl 0x10(%r15,%r12,1), %eax         #  39    0x76ec9  5      
  movl %r12d, %r12d                    #  40    0x76ece  3      
  cmpl 0x14(%r15,%r12,1), %eax         #  41    0x76ed1  5      
  jge .L_770a0                         #  42    0x76ed6  6      
  addl $0x1, %eax                      #  43    0x76edc  3      
.L_76f00:                              #        0x76edf  0      
  movl %r12d, %r12d                    #  44    0x76edf  3      
  movl (%r15,%r12,1), %edx             #  45    0x76ee2  4      
  movl %r12d, %r12d                    #  46    0x76ee6  3      
  subl $0x1, 0x8(%r15,%r12,1)          #  47    0x76ee9  6      
  movzbl %bl, %r14d                    #  48    0x76eef  4      
  movl %edx, %edx                      #  49    0x76ef3  2      
  movb %bl, (%r15,%rdx,1)              #  50    0x76ef5  4      
  addl $0x1, %edx                      #  51    0x76ef9  3      
  nop                                  #  52    0x76efc  1      
  movl %r12d, %r12d                    #  53    0x76efd  3      
  cmpl %eax, 0x14(%r15,%r12,1)         #  54    0x76f00  5      
  movl %r12d, %r12d                    #  55    0x76f05  3      
  movl %edx, (%r15,%r12,1)             #  56    0x76f08  4      
  je .L_76fc0                          #  57    0x76f0c  6      
  cmpl $0xa, %r14d                     #  58    0x76f12  4      
  je .L_76fa0                          #  59    0x76f16  6      
  nop                                  #  60    0x76f1c  1      
.L_76f40:                              #        0x76f1d  0      
  movl %r14d, %eax                     #  61    0x76f1d  3      
  movq 0x8(%rsp), %rbx                 #  62    0x76f20  5      
  movq 0x10(%rsp), %r12                #  63    0x76f25  5      
  movq 0x18(%rsp), %r13                #  64    0x76f2a  5      
  movq 0x20(%rsp), %r14                #  65    0x76f2f  5      
  addl $0x28, %esp                     #  66    0x76f34  3      
  addq %r15, %rsp                      #  67    0x76f37  3      
  popq %r11                            #  68    0x76f3a  3      
  nop                                  #  69    0x76f3d  1      
  andl $0xffffffe0, %r11d              #  70    0x76f3e  7      
  addq %r15, %r11                      #  71    0x76f45  3      
  jmpq %r11                            #  72    0x76f48  3      
  nop                                  #  73    0x76f4b  1      
  nop                                  #  74    0x76f4c  1      
.L_76f80:                              #        0x76f4d  0      
  orb $0x20, %dh                       #  75    0x76f4d  3      
  movl %r12d, %r12d                    #  76    0x76f50  3      
  andl $0xffffdfff, 0x78(%r15,%r12,1)  #  77    0x76f53  9      
  movl %r12d, %r12d                    #  78    0x76f5c  3      
  movw %dx, 0xc(%r15,%r12,1)           #  79    0x76f5f  6      
  jmpq .L_76ee0                        #  80    0x76f65  5      
  nop                                  #  81    0x76f6a  1      
.L_76fa0:                              #        0x76f6b  0      
  movl %r12d, %r12d                    #  82    0x76f6b  3      
  testb $0x1, 0xc(%r15,%r12,1)         #  83    0x76f6e  6      
  je .L_76f40                          #  84    0x76f74  6      
  nop                                  #  85    0x76f7a  1      
  nop                                  #  86    0x76f7b  1      
.L_76fc0:                              #        0x76f7c  0      
  movl %r12d, %esi                     #  87    0x76f7c  3      
  movl %r13d, %edi                     #  88    0x76f7f  3      
  nop                                  #  89    0x76f82  1      
  nop                                  #  90    0x76f83  1      
  callq ._fflush_r                     #  91    0x76f84  5      
  testl %eax, %eax                     #  92    0x76f89  2      
  je .L_76f40                          #  93    0x76f8b  6      
  nop                                  #  94    0x76f91  1      
  nop                                  #  95    0x76f92  1      
.L_77000:                              #        0x76f93  0      
  movl $0xffffffff, %r14d              #  96    0x76f93  6      
  jmpq .L_76f40                        #  97    0x76f99  5      
  nop                                  #  98    0x76f9e  1      
  nop                                  #  99    0x76f9f  1      
.L_77020:                              #        0x76fa0  0      
  movl %r13d, %edi                     #  100   0x76fa0  3      
  nop                                  #  101   0x76fa3  1      
  nop                                  #  102   0x76fa4  1      
  callq .__sinit                       #  103   0x76fa5  5      
  jmpq .L_76e80                        #  104   0x76faa  5      
  nop                                  #  105   0x76faf  1      
  nop                                  #  106   0x76fb0  1      
.L_77060:                              #        0x76fb1  0      
  movl %r12d, %esi                     #  107   0x76fb1  3      
  movl %r13d, %edi                     #  108   0x76fb4  3      
  nop                                  #  109   0x76fb7  1      
  nop                                  #  110   0x76fb8  1      
  callq .__swsetup_r                   #  111   0x76fb9  5      
  testl %eax, %eax                     #  112   0x76fbe  2      
  jne .L_77000                         #  113   0x76fc0  6      
  movl %r12d, %r12d                    #  114   0x76fc6  3      
  movzwl 0xc(%r15,%r12,1), %edx        #  115   0x76fc9  6      
  movswl %dx, %eax                     #  116   0x76fcf  3      
  jmpq .L_76ec0                        #  117   0x76fd2  5      
  nop                                  #  118   0x76fd7  1      
.L_770a0:                              #        0x76fd8  0      
  movl %r12d, %esi                     #  119   0x76fd8  3      
  movl %r13d, %edi                     #  120   0x76fdb  3      
  nop                                  #  121   0x76fde  1      
  nop                                  #  122   0x76fdf  1      
  callq ._fflush_r                     #  123   0x76fe0  5      
  testl %eax, %eax                     #  124   0x76fe5  2      
  jne .L_77000                         #  125   0x76fe7  6      
  movb $0x1, %al                       #  126   0x76fed  2      
  jmpq .L_76f00                        #  127   0x76fef  5      
  xchgw %ax, %ax                       #  128   0x76ff4  3      
  nop                                  #  129   0x76ff7  1      
                                                                
.size __swbuf_r, .-__swbuf_r

