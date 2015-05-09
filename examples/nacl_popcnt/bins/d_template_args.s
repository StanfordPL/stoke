  .text
  .globl d_template_args
  .type d_template_args, @function

#! file-offset 0x52de0
#! rip-offset  0x52de0
#! capacity    672 bytes

# Text                           #  Line  RIP      Bytes  
.d_template_args:                #        0x52de0  0      
  pushq %r13                     #  1     0x52de0  3      
  pushq %r12                     #  2     0x52de3  3      
  pushq %rbx                     #  3     0x52de6  2      
  movl %edi, %ebx                #  4     0x52de8  2      
  subl $0x10, %esp               #  5     0x52dea  3      
  addq %r15, %rsp                #  6     0x52ded  3      
  movl %ebx, %ebx                #  7     0x52df0  2      
  movl 0xc(%r15,%rbx,1), %ecx    #  8     0x52df2  5      
  movl %ebx, %ebx                #  9     0x52df7  2      
  movl 0x2c(%r15,%rbx,1), %r13d  #  10    0x52df9  5      
  nop                            #  11    0x52dfe  1      
  movl %ecx, %ecx                #  12    0x52dff  2      
  cmpb $0x49, (%r15,%rcx,1)      #  13    0x52e01  5      
  je .L_52e40                    #  14    0x52e06  6      
  nop                            #  15    0x52e0c  1      
  nop                            #  16    0x52e0d  1      
.L_52e20:                        #        0x52e0e  0      
  addl $0x10, %esp               #  17    0x52e0e  3      
  addq %r15, %rsp                #  18    0x52e11  3      
  xorl %eax, %eax                #  19    0x52e14  2      
  popq %rbx                      #  20    0x52e16  2      
  popq %r12                      #  21    0x52e18  3      
  popq %r13                      #  22    0x52e1b  3      
  popq %r11                      #  23    0x52e1e  3      
  andl $0xffffffe0, %r11d        #  24    0x52e21  7      
  addq %r15, %r11                #  25    0x52e28  3      
  jmpq %r11                      #  26    0x52e2b  3      
  nop                            #  27    0x52e2e  1      
.L_52e40:                        #        0x52e2f  0      
  addl $0x1, %ecx                #  28    0x52e2f  3      
  movl %ebx, %ebx                #  29    0x52e32  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  30    0x52e34  5      
  movl %ecx, %ecx                #  31    0x52e39  2      
  cmpb $0x45, (%r15,%rcx,1)      #  32    0x52e3b  5      
  jne .L_52ea0                   #  33    0x52e40  6      
  addl $0x1, %ecx                #  34    0x52e46  3      
  movl %ebx, %edi                #  35    0x52e49  2      
  xorl %edx, %edx                #  36    0x52e4b  2      
  nop                            #  37    0x52e4d  1      
  movl %ebx, %ebx                #  38    0x52e4e  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  39    0x52e50  5      
  movl $0x2a, %esi               #  40    0x52e55  5      
  xorl %ecx, %ecx                #  41    0x52e5a  2      
  nop                            #  42    0x52e5c  1      
  callq .d_make_comp             #  43    0x52e5d  5      
  addl $0x10, %esp               #  44    0x52e62  3      
  addq %r15, %rsp                #  45    0x52e65  3      
  movl %eax, %eax                #  46    0x52e68  2      
  popq %rbx                      #  47    0x52e6a  2      
  popq %r12                      #  48    0x52e6c  3      
  popq %r13                      #  49    0x52e6f  3      
  popq %r11                      #  50    0x52e72  3      
  andl $0xffffffe0, %r11d        #  51    0x52e75  7      
  addq %r15, %r11                #  52    0x52e7c  3      
  jmpq %r11                      #  53    0x52e7f  3      
  nop                            #  54    0x52e82  1      
.L_52ea0:                        #        0x52e83  0      
  movl $0x0, 0xc(%rsp)           #  55    0x52e83  8      
  leal 0xc(%rsp), %r12d          #  56    0x52e8b  5      
  movl %ecx, %ecx                #  57    0x52e90  2      
  movzbl (%r15,%rcx,1), %edx     #  58    0x52e92  5      
  jmpq .L_52f60                  #  59    0x52e97  5      
  nop                            #  60    0x52e9c  1      
.L_52ec0:                        #        0x52e9d  0      
  cmpb $0x58, %dl                #  61    0x52e9d  3      
  je .L_52fe0                    #  62    0x52ea0  6      
  cmpb $0x49, %dl                #  63    0x52ea6  3      
  je .L_52fa0                    #  64    0x52ea9  6      
  movl %ebx, %edi                #  65    0x52eaf  2      
  nop                            #  66    0x52eb1  1      
  callq .d_type                  #  67    0x52eb2  5      
  movl %eax, %edx                #  68    0x52eb7  2      
  nop                            #  69    0x52eb9  1      
  nop                            #  70    0x52eba  1      
.L_52f00:                        #        0x52ebb  0      
  testq %rdx, %rdx               #  71    0x52ebb  3      
  je .L_52e20                    #  72    0x52ebe  6      
  xorl %ecx, %ecx                #  73    0x52ec4  2      
  movl $0x2a, %esi               #  74    0x52ec6  5      
  movl %ebx, %edi                #  75    0x52ecb  2      
  nop                            #  76    0x52ecd  1      
  callq .d_make_comp             #  77    0x52ece  5      
  movl %eax, %eax                #  78    0x52ed3  2      
  testq %rax, %rax               #  79    0x52ed5  3      
  movl %r12d, %r12d              #  80    0x52ed8  3      
  movl %eax, (%r15,%r12,1)       #  81    0x52edb  4      
  je .L_52e20                    #  82    0x52edf  6      
  movl %ebx, %ebx                #  83    0x52ee5  2      
  movl 0xc(%r15,%rbx,1), %ecx    #  84    0x52ee7  5      
  movl %ecx, %ecx                #  85    0x52eec  2      
  movzbl (%r15,%rcx,1), %edx     #  86    0x52eee  5      
  cmpb $0x45, %dl                #  87    0x52ef3  3      
  je .L_53040                    #  88    0x52ef6  6      
  leal 0x8(%rax), %r12d          #  89    0x52efc  4      
  nop                            #  90    0x52f00  1      
  nop                            #  91    0x52f01  1      
.L_52f60:                        #        0x52f02  0      
  cmpb $0x4c, %dl                #  92    0x52f02  3      
  jne .L_52ec0                   #  93    0x52f05  6      
  movl %ebx, %edi                #  94    0x52f0b  2      
  nop                            #  95    0x52f0d  1      
  nop                            #  96    0x52f0e  1      
  callq .d_expr_primary          #  97    0x52f0f  5      
  movl %eax, %edx                #  98    0x52f14  2      
  jmpq .L_52f00                  #  99    0x52f16  5      
  nop                            #  100   0x52f1b  1      
  nop                            #  101   0x52f1c  1      
.L_52fa0:                        #        0x52f1d  0      
  movl %ebx, %edi                #  102   0x52f1d  2      
  nop                            #  103   0x52f1f  1      
  nop                            #  104   0x52f20  1      
  callq .d_template_args         #  105   0x52f21  5      
  movl %eax, %edx                #  106   0x52f26  2      
  jmpq .L_52f00                  #  107   0x52f28  5      
  nop                            #  108   0x52f2d  1      
  nop                            #  109   0x52f2e  1      
.L_52fe0:                        #        0x52f2f  0      
  addl $0x1, %ecx                #  110   0x52f2f  3      
  movl %ebx, %edi                #  111   0x52f32  2      
  movl %ebx, %ebx                #  112   0x52f34  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  113   0x52f36  5      
  nop                            #  114   0x52f3b  1      
  callq .d_expression            #  115   0x52f3c  5      
  movl %eax, %edx                #  116   0x52f41  2      
  movl %ebx, %ebx                #  117   0x52f43  2      
  movl 0xc(%r15,%rbx,1), %eax    #  118   0x52f45  5      
  movl %eax, %eax                #  119   0x52f4a  2      
  cmpb $0x45, (%r15,%rax,1)      #  120   0x52f4c  5      
  jne .L_52e20                   #  121   0x52f51  6      
  addl $0x1, %eax                #  122   0x52f57  3      
  movl %ebx, %ebx                #  123   0x52f5a  2      
  movl %eax, 0xc(%r15,%rbx,1)    #  124   0x52f5c  5      
  jmpq .L_52f00                  #  125   0x52f61  5      
  nop                            #  126   0x52f66  1      
  nop                            #  127   0x52f67  1      
.L_53040:                        #        0x52f68  0      
  addl $0x1, %ecx                #  128   0x52f68  3      
  movl %ebx, %ebx                #  129   0x52f6b  2      
  movl %r13d, 0x2c(%r15,%rbx,1)  #  130   0x52f6d  5      
  movl 0xc(%rsp), %eax           #  131   0x52f72  4      
  movl %ebx, %ebx                #  132   0x52f76  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  133   0x52f78  5      
  addl $0x10, %esp               #  134   0x52f7d  3      
  addq %r15, %rsp                #  135   0x52f80  3      
  popq %rbx                      #  136   0x52f83  2      
  popq %r12                      #  137   0x52f85  3      
  popq %r13                      #  138   0x52f88  3      
  popq %r11                      #  139   0x52f8b  3      
  andl $0xffffffe0, %r11d        #  140   0x52f8e  7      
  addq %r15, %r11                #  141   0x52f95  3      
  jmpq %r11                      #  142   0x52f98  3      
  nop                            #  143   0x52f9b  1      
  nop                            #  144   0x52f9c  1      
                                                          
.size d_template_args, .-d_template_args

