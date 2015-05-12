  .text
  .globl __swbuf_r
  .type __swbuf_r, @function

#! file-offset 0x76e60
#! rip-offset  0x76e60
#! capacity    672 bytes

# Text                                 #  Line  RIP      Bytes  
.__swbuf_r:                            #        0x76e60  0      
  movq %r13, -0x10(%rsp)               #  1     0x76e60  5      
  movl %edi, %r13d                     #  2     0x76e65  3      
  movq %rbx, -0x20(%rsp)               #  3     0x76e68  5      
  movq %r12, -0x18(%rsp)               #  4     0x76e6d  5      
  movq %r14, -0x8(%rsp)                #  5     0x76e72  5      
  subl $0x28, %esp                     #  6     0x76e77  3      
  addq %r15, %rsp                      #  7     0x76e7a  3      
  testq %r13, %r13                     #  8     0x76e7d  3      
  movl %esi, %ebx                      #  9     0x76e80  2      
  movl %edx, %r12d                     #  10    0x76e82  3      
  je .L_76ea0                          #  11    0x76e85  6      
  movl %r13d, %r13d                    #  12    0x76e8b  3      
  movl 0x38(%r15,%r13,1), %esi         #  13    0x76e8e  5      
  testl %esi, %esi                     #  14    0x76e93  2      
  je .L_77040                          #  15    0x76e95  6      
  nop                                  #  16    0x76e9b  1      
.L_76ea0:                              #        0x76e9c  0      
  movl %r12d, %r12d                    #  17    0x76e9c  3      
  movzwl 0xc(%r15,%r12,1), %edx        #  18    0x76e9f  6      
  movl %r12d, %r12d                    #  19    0x76ea5  3      
  movl 0x18(%r15,%r12,1), %eax         #  20    0x76ea8  5      
  movl %r12d, %r12d                    #  21    0x76ead  3      
  movl %eax, 0x8(%r15,%r12,1)          #  22    0x76eb0  5      
  movswl %dx, %eax                     #  23    0x76eb5  3      
  testb $0x8, %al                      #  24    0x76eb8  2      
  xchgw %ax, %ax                       #  25    0x76eba  3      
  je .L_77080                          #  26    0x76ebd  6      
  movl %r12d, %r12d                    #  27    0x76ec3  3      
  movl 0x10(%r15,%r12,1), %ecx         #  28    0x76ec6  5      
  testl %ecx, %ecx                     #  29    0x76ecb  2      
  je .L_77080                          #  30    0x76ecd  6      
  nop                                  #  31    0x76ed3  1      
.L_76ee0:                              #        0x76ed4  0      
  testb $0x20, %ah                     #  32    0x76ed4  3      
  je .L_76fa0                          #  33    0x76ed7  6      
  nop                                  #  34    0x76edd  1      
  nop                                  #  35    0x76ede  1      
.L_76f00:                              #        0x76edf  0      
  movl %r12d, %r12d                    #  36    0x76edf  3      
  movl (%r15,%r12,1), %eax             #  37    0x76ee2  4      
  movl %r12d, %r12d                    #  38    0x76ee6  3      
  subl 0x10(%r15,%r12,1), %eax         #  39    0x76ee9  5      
  movl %r12d, %r12d                    #  40    0x76eee  3      
  cmpl 0x14(%r15,%r12,1), %eax         #  41    0x76ef1  5      
  jge .L_770c0                         #  42    0x76ef6  6      
  addl $0x1, %eax                      #  43    0x76efc  3      
.L_76f20:                              #        0x76eff  0      
  movl %r12d, %r12d                    #  44    0x76eff  3      
  movl (%r15,%r12,1), %edx             #  45    0x76f02  4      
  movl %r12d, %r12d                    #  46    0x76f06  3      
  subl $0x1, 0x8(%r15,%r12,1)          #  47    0x76f09  6      
  movzbl %bl, %r14d                    #  48    0x76f0f  4      
  movl %edx, %edx                      #  49    0x76f13  2      
  movb %bl, (%r15,%rdx,1)              #  50    0x76f15  4      
  addl $0x1, %edx                      #  51    0x76f19  3      
  nop                                  #  52    0x76f1c  1      
  movl %r12d, %r12d                    #  53    0x76f1d  3      
  cmpl %eax, 0x14(%r15,%r12,1)         #  54    0x76f20  5      
  movl %r12d, %r12d                    #  55    0x76f25  3      
  movl %edx, (%r15,%r12,1)             #  56    0x76f28  4      
  je .L_76fe0                          #  57    0x76f2c  6      
  cmpl $0xa, %r14d                     #  58    0x76f32  4      
  je .L_76fc0                          #  59    0x76f36  6      
  nop                                  #  60    0x76f3c  1      
.L_76f60:                              #        0x76f3d  0      
  movl %r14d, %eax                     #  61    0x76f3d  3      
  movq 0x8(%rsp), %rbx                 #  62    0x76f40  5      
  movq 0x10(%rsp), %r12                #  63    0x76f45  5      
  movq 0x18(%rsp), %r13                #  64    0x76f4a  5      
  movq 0x20(%rsp), %r14                #  65    0x76f4f  5      
  addl $0x28, %esp                     #  66    0x76f54  3      
  addq %r15, %rsp                      #  67    0x76f57  3      
  popq %r11                            #  68    0x76f5a  3      
  nop                                  #  69    0x76f5d  1      
  andl $0xffffffe0, %r11d              #  70    0x76f5e  7      
  addq %r15, %r11                      #  71    0x76f65  3      
  jmpq %r11                            #  72    0x76f68  3      
  nop                                  #  73    0x76f6b  1      
  nop                                  #  74    0x76f6c  1      
.L_76fa0:                              #        0x76f6d  0      
  orb $0x20, %dh                       #  75    0x76f6d  3      
  movl %r12d, %r12d                    #  76    0x76f70  3      
  andl $0xffffdfff, 0x78(%r15,%r12,1)  #  77    0x76f73  9      
  movl %r12d, %r12d                    #  78    0x76f7c  3      
  movw %dx, 0xc(%r15,%r12,1)           #  79    0x76f7f  6      
  jmpq .L_76f00                        #  80    0x76f85  5      
  nop                                  #  81    0x76f8a  1      
.L_76fc0:                              #        0x76f8b  0      
  movl %r12d, %r12d                    #  82    0x76f8b  3      
  testb $0x1, 0xc(%r15,%r12,1)         #  83    0x76f8e  6      
  je .L_76f60                          #  84    0x76f94  6      
  nop                                  #  85    0x76f9a  1      
  nop                                  #  86    0x76f9b  1      
.L_76fe0:                              #        0x76f9c  0      
  movl %r12d, %esi                     #  87    0x76f9c  3      
  movl %r13d, %edi                     #  88    0x76f9f  3      
  nop                                  #  89    0x76fa2  1      
  nop                                  #  90    0x76fa3  1      
  callq ._fflush_r                     #  91    0x76fa4  5      
  testl %eax, %eax                     #  92    0x76fa9  2      
  je .L_76f60                          #  93    0x76fab  6      
  nop                                  #  94    0x76fb1  1      
  nop                                  #  95    0x76fb2  1      
.L_77020:                              #        0x76fb3  0      
  movl $0xffffffff, %r14d              #  96    0x76fb3  6      
  jmpq .L_76f60                        #  97    0x76fb9  5      
  nop                                  #  98    0x76fbe  1      
  nop                                  #  99    0x76fbf  1      
.L_77040:                              #        0x76fc0  0      
  movl %r13d, %edi                     #  100   0x76fc0  3      
  nop                                  #  101   0x76fc3  1      
  nop                                  #  102   0x76fc4  1      
  callq .__sinit                       #  103   0x76fc5  5      
  jmpq .L_76ea0                        #  104   0x76fca  5      
  nop                                  #  105   0x76fcf  1      
  nop                                  #  106   0x76fd0  1      
.L_77080:                              #        0x76fd1  0      
  movl %r12d, %esi                     #  107   0x76fd1  3      
  movl %r13d, %edi                     #  108   0x76fd4  3      
  nop                                  #  109   0x76fd7  1      
  nop                                  #  110   0x76fd8  1      
  callq .__swsetup_r                   #  111   0x76fd9  5      
  testl %eax, %eax                     #  112   0x76fde  2      
  jne .L_77020                         #  113   0x76fe0  6      
  movl %r12d, %r12d                    #  114   0x76fe6  3      
  movzwl 0xc(%r15,%r12,1), %edx        #  115   0x76fe9  6      
  movswl %dx, %eax                     #  116   0x76fef  3      
  jmpq .L_76ee0                        #  117   0x76ff2  5      
  nop                                  #  118   0x76ff7  1      
.L_770c0:                              #        0x76ff8  0      
  movl %r12d, %esi                     #  119   0x76ff8  3      
  movl %r13d, %edi                     #  120   0x76ffb  3      
  nop                                  #  121   0x76ffe  1      
  nop                                  #  122   0x76fff  1      
  callq ._fflush_r                     #  123   0x77000  5      
  testl %eax, %eax                     #  124   0x77005  2      
  jne .L_77020                         #  125   0x77007  6      
  movb $0x1, %al                       #  126   0x7700d  2      
  jmpq .L_76f20                        #  127   0x7700f  5      
  xchgw %ax, %ax                       #  128   0x77014  3      
  nop                                  #  129   0x77017  1      
                                                                
.size __swbuf_r, .-__swbuf_r

