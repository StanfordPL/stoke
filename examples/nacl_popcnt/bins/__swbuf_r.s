  .text
  .globl __swbuf_r
  .type __swbuf_r, @function

#! file-offset 0x76ee0
#! rip-offset  0x76ee0
#! capacity    672 bytes

# Text                                 #  Line  RIP      Bytes  
.__swbuf_r:                            #        0x76ee0  0      
  movq %r13, -0x10(%rsp)               #  1     0x76ee0  5      
  movl %edi, %r13d                     #  2     0x76ee5  3      
  movq %rbx, -0x20(%rsp)               #  3     0x76ee8  5      
  movq %r12, -0x18(%rsp)               #  4     0x76eed  5      
  movq %r14, -0x8(%rsp)                #  5     0x76ef2  5      
  subl $0x28, %esp                     #  6     0x76ef7  3      
  addq %r15, %rsp                      #  7     0x76efa  3      
  testq %r13, %r13                     #  8     0x76efd  3      
  movl %esi, %ebx                      #  9     0x76f00  2      
  movl %edx, %r12d                     #  10    0x76f02  3      
  je .L_76f20                          #  11    0x76f05  6      
  movl %r13d, %r13d                    #  12    0x76f0b  3      
  movl 0x38(%r15,%r13,1), %esi         #  13    0x76f0e  5      
  testl %esi, %esi                     #  14    0x76f13  2      
  je .L_770c0                          #  15    0x76f15  6      
  nop                                  #  16    0x76f1b  1      
.L_76f20:                              #        0x76f1c  0      
  movl %r12d, %r12d                    #  17    0x76f1c  3      
  movzwl 0xc(%r15,%r12,1), %edx        #  18    0x76f1f  6      
  movl %r12d, %r12d                    #  19    0x76f25  3      
  movl 0x18(%r15,%r12,1), %eax         #  20    0x76f28  5      
  movl %r12d, %r12d                    #  21    0x76f2d  3      
  movl %eax, 0x8(%r15,%r12,1)          #  22    0x76f30  5      
  movswl %dx, %eax                     #  23    0x76f35  3      
  testb $0x8, %al                      #  24    0x76f38  2      
  xchgw %ax, %ax                       #  25    0x76f3a  3      
  je .L_77100                          #  26    0x76f3d  6      
  movl %r12d, %r12d                    #  27    0x76f43  3      
  movl 0x10(%r15,%r12,1), %ecx         #  28    0x76f46  5      
  testl %ecx, %ecx                     #  29    0x76f4b  2      
  je .L_77100                          #  30    0x76f4d  6      
  nop                                  #  31    0x76f53  1      
.L_76f60:                              #        0x76f54  0      
  testb $0x20, %ah                     #  32    0x76f54  3      
  je .L_77020                          #  33    0x76f57  6      
  nop                                  #  34    0x76f5d  1      
  nop                                  #  35    0x76f5e  1      
.L_76f80:                              #        0x76f5f  0      
  movl %r12d, %r12d                    #  36    0x76f5f  3      
  movl (%r15,%r12,1), %eax             #  37    0x76f62  4      
  movl %r12d, %r12d                    #  38    0x76f66  3      
  subl 0x10(%r15,%r12,1), %eax         #  39    0x76f69  5      
  movl %r12d, %r12d                    #  40    0x76f6e  3      
  cmpl 0x14(%r15,%r12,1), %eax         #  41    0x76f71  5      
  jge .L_77140                         #  42    0x76f76  6      
  addl $0x1, %eax                      #  43    0x76f7c  3      
.L_76fa0:                              #        0x76f7f  0      
  movl %r12d, %r12d                    #  44    0x76f7f  3      
  movl (%r15,%r12,1), %edx             #  45    0x76f82  4      
  movl %r12d, %r12d                    #  46    0x76f86  3      
  subl $0x1, 0x8(%r15,%r12,1)          #  47    0x76f89  6      
  movzbl %bl, %r14d                    #  48    0x76f8f  4      
  movl %edx, %edx                      #  49    0x76f93  2      
  movb %bl, (%r15,%rdx,1)              #  50    0x76f95  4      
  addl $0x1, %edx                      #  51    0x76f99  3      
  nop                                  #  52    0x76f9c  1      
  movl %r12d, %r12d                    #  53    0x76f9d  3      
  cmpl %eax, 0x14(%r15,%r12,1)         #  54    0x76fa0  5      
  movl %r12d, %r12d                    #  55    0x76fa5  3      
  movl %edx, (%r15,%r12,1)             #  56    0x76fa8  4      
  je .L_77060                          #  57    0x76fac  6      
  cmpl $0xa, %r14d                     #  58    0x76fb2  4      
  je .L_77040                          #  59    0x76fb6  6      
  nop                                  #  60    0x76fbc  1      
.L_76fe0:                              #        0x76fbd  0      
  movl %r14d, %eax                     #  61    0x76fbd  3      
  movq 0x8(%rsp), %rbx                 #  62    0x76fc0  5      
  movq 0x10(%rsp), %r12                #  63    0x76fc5  5      
  movq 0x18(%rsp), %r13                #  64    0x76fca  5      
  movq 0x20(%rsp), %r14                #  65    0x76fcf  5      
  addl $0x28, %esp                     #  66    0x76fd4  3      
  addq %r15, %rsp                      #  67    0x76fd7  3      
  popq %r11                            #  68    0x76fda  3      
  nop                                  #  69    0x76fdd  1      
  andl $0xffffffe0, %r11d              #  70    0x76fde  7      
  addq %r15, %r11                      #  71    0x76fe5  3      
  jmpq %r11                            #  72    0x76fe8  3      
  nop                                  #  73    0x76feb  1      
  nop                                  #  74    0x76fec  1      
.L_77020:                              #        0x76fed  0      
  orb $0x20, %dh                       #  75    0x76fed  3      
  movl %r12d, %r12d                    #  76    0x76ff0  3      
  andl $0xffffdfff, 0x78(%r15,%r12,1)  #  77    0x76ff3  9      
  movl %r12d, %r12d                    #  78    0x76ffc  3      
  movw %dx, 0xc(%r15,%r12,1)           #  79    0x76fff  6      
  jmpq .L_76f80                        #  80    0x77005  5      
  nop                                  #  81    0x7700a  1      
.L_77040:                              #        0x7700b  0      
  movl %r12d, %r12d                    #  82    0x7700b  3      
  testb $0x1, 0xc(%r15,%r12,1)         #  83    0x7700e  6      
  je .L_76fe0                          #  84    0x77014  6      
  nop                                  #  85    0x7701a  1      
  nop                                  #  86    0x7701b  1      
.L_77060:                              #        0x7701c  0      
  movl %r12d, %esi                     #  87    0x7701c  3      
  movl %r13d, %edi                     #  88    0x7701f  3      
  nop                                  #  89    0x77022  1      
  nop                                  #  90    0x77023  1      
  callq ._fflush_r                     #  91    0x77024  5      
  testl %eax, %eax                     #  92    0x77029  2      
  je .L_76fe0                          #  93    0x7702b  6      
  nop                                  #  94    0x77031  1      
  nop                                  #  95    0x77032  1      
.L_770a0:                              #        0x77033  0      
  movl $0xffffffff, %r14d              #  96    0x77033  6      
  jmpq .L_76fe0                        #  97    0x77039  5      
  nop                                  #  98    0x7703e  1      
  nop                                  #  99    0x7703f  1      
.L_770c0:                              #        0x77040  0      
  movl %r13d, %edi                     #  100   0x77040  3      
  nop                                  #  101   0x77043  1      
  nop                                  #  102   0x77044  1      
  callq .__sinit                       #  103   0x77045  5      
  jmpq .L_76f20                        #  104   0x7704a  5      
  nop                                  #  105   0x7704f  1      
  nop                                  #  106   0x77050  1      
.L_77100:                              #        0x77051  0      
  movl %r12d, %esi                     #  107   0x77051  3      
  movl %r13d, %edi                     #  108   0x77054  3      
  nop                                  #  109   0x77057  1      
  nop                                  #  110   0x77058  1      
  callq .__swsetup_r                   #  111   0x77059  5      
  testl %eax, %eax                     #  112   0x7705e  2      
  jne .L_770a0                         #  113   0x77060  6      
  movl %r12d, %r12d                    #  114   0x77066  3      
  movzwl 0xc(%r15,%r12,1), %edx        #  115   0x77069  6      
  movswl %dx, %eax                     #  116   0x7706f  3      
  jmpq .L_76f60                        #  117   0x77072  5      
  nop                                  #  118   0x77077  1      
.L_77140:                              #        0x77078  0      
  movl %r12d, %esi                     #  119   0x77078  3      
  movl %r13d, %edi                     #  120   0x7707b  3      
  nop                                  #  121   0x7707e  1      
  nop                                  #  122   0x7707f  1      
  callq ._fflush_r                     #  123   0x77080  5      
  testl %eax, %eax                     #  124   0x77085  2      
  jne .L_770a0                         #  125   0x77087  6      
  movb $0x1, %al                       #  126   0x7708d  2      
  jmpq .L_76fa0                        #  127   0x7708f  5      
  xchgw %ax, %ax                       #  128   0x77094  3      
  nop                                  #  129   0x77097  1      
                                                                
.size __swbuf_r, .-__swbuf_r

