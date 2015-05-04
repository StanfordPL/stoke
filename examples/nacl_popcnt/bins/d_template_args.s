  .text
  .globl d_template_args
  .type d_template_args, @function

#! file-offset 0x52e80
#! rip-offset  0x52e80
#! capacity    672 bytes

# Text                           #  Line  RIP      Bytes  
.d_template_args:                #        0x52e80  0      
  pushq %r13                     #  1     0x52e80  3      
  pushq %r12                     #  2     0x52e83  3      
  pushq %rbx                     #  3     0x52e86  2      
  movl %edi, %ebx                #  4     0x52e88  2      
  subl $0x10, %esp               #  5     0x52e8a  3      
  addq %r15, %rsp                #  6     0x52e8d  3      
  movl %ebx, %ebx                #  7     0x52e90  2      
  movl 0xc(%r15,%rbx,1), %ecx    #  8     0x52e92  5      
  movl %ebx, %ebx                #  9     0x52e97  2      
  movl 0x2c(%r15,%rbx,1), %r13d  #  10    0x52e99  5      
  nop                            #  11    0x52e9e  1      
  movl %ecx, %ecx                #  12    0x52e9f  2      
  cmpb $0x49, (%r15,%rcx,1)      #  13    0x52ea1  5      
  je .L_52ee0                    #  14    0x52ea6  6      
  nop                            #  15    0x52eac  1      
  nop                            #  16    0x52ead  1      
.L_52ec0:                        #        0x52eae  0      
  addl $0x10, %esp               #  17    0x52eae  3      
  addq %r15, %rsp                #  18    0x52eb1  3      
  xorl %eax, %eax                #  19    0x52eb4  2      
  popq %rbx                      #  20    0x52eb6  2      
  popq %r12                      #  21    0x52eb8  3      
  popq %r13                      #  22    0x52ebb  3      
  popq %r11                      #  23    0x52ebe  3      
  andl $0xffffffe0, %r11d        #  24    0x52ec1  7      
  addq %r15, %r11                #  25    0x52ec8  3      
  jmpq %r11                      #  26    0x52ecb  3      
  nop                            #  27    0x52ece  1      
.L_52ee0:                        #        0x52ecf  0      
  addl $0x1, %ecx                #  28    0x52ecf  3      
  movl %ebx, %ebx                #  29    0x52ed2  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  30    0x52ed4  5      
  movl %ecx, %ecx                #  31    0x52ed9  2      
  cmpb $0x45, (%r15,%rcx,1)      #  32    0x52edb  5      
  jne .L_52f40                   #  33    0x52ee0  6      
  addl $0x1, %ecx                #  34    0x52ee6  3      
  movl %ebx, %edi                #  35    0x52ee9  2      
  xorl %edx, %edx                #  36    0x52eeb  2      
  nop                            #  37    0x52eed  1      
  movl %ebx, %ebx                #  38    0x52eee  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  39    0x52ef0  5      
  movl $0x2a, %esi               #  40    0x52ef5  5      
  xorl %ecx, %ecx                #  41    0x52efa  2      
  nop                            #  42    0x52efc  1      
  callq .d_make_comp             #  43    0x52efd  5      
  addl $0x10, %esp               #  44    0x52f02  3      
  addq %r15, %rsp                #  45    0x52f05  3      
  movl %eax, %eax                #  46    0x52f08  2      
  popq %rbx                      #  47    0x52f0a  2      
  popq %r12                      #  48    0x52f0c  3      
  popq %r13                      #  49    0x52f0f  3      
  popq %r11                      #  50    0x52f12  3      
  andl $0xffffffe0, %r11d        #  51    0x52f15  7      
  addq %r15, %r11                #  52    0x52f1c  3      
  jmpq %r11                      #  53    0x52f1f  3      
  nop                            #  54    0x52f22  1      
.L_52f40:                        #        0x52f23  0      
  movl $0x0, 0xc(%rsp)           #  55    0x52f23  8      
  leal 0xc(%rsp), %r12d          #  56    0x52f2b  5      
  movl %ecx, %ecx                #  57    0x52f30  2      
  movzbl (%r15,%rcx,1), %edx     #  58    0x52f32  5      
  jmpq .L_53000                  #  59    0x52f37  5      
  nop                            #  60    0x52f3c  1      
.L_52f60:                        #        0x52f3d  0      
  cmpb $0x58, %dl                #  61    0x52f3d  3      
  je .L_53080                    #  62    0x52f40  6      
  cmpb $0x49, %dl                #  63    0x52f46  3      
  je .L_53040                    #  64    0x52f49  6      
  movl %ebx, %edi                #  65    0x52f4f  2      
  nop                            #  66    0x52f51  1      
  callq .d_type                  #  67    0x52f52  5      
  movl %eax, %edx                #  68    0x52f57  2      
  nop                            #  69    0x52f59  1      
  nop                            #  70    0x52f5a  1      
.L_52fa0:                        #        0x52f5b  0      
  testq %rdx, %rdx               #  71    0x52f5b  3      
  je .L_52ec0                    #  72    0x52f5e  6      
  xorl %ecx, %ecx                #  73    0x52f64  2      
  movl $0x2a, %esi               #  74    0x52f66  5      
  movl %ebx, %edi                #  75    0x52f6b  2      
  nop                            #  76    0x52f6d  1      
  callq .d_make_comp             #  77    0x52f6e  5      
  movl %eax, %eax                #  78    0x52f73  2      
  testq %rax, %rax               #  79    0x52f75  3      
  movl %r12d, %r12d              #  80    0x52f78  3      
  movl %eax, (%r15,%r12,1)       #  81    0x52f7b  4      
  je .L_52ec0                    #  82    0x52f7f  6      
  movl %ebx, %ebx                #  83    0x52f85  2      
  movl 0xc(%r15,%rbx,1), %ecx    #  84    0x52f87  5      
  movl %ecx, %ecx                #  85    0x52f8c  2      
  movzbl (%r15,%rcx,1), %edx     #  86    0x52f8e  5      
  cmpb $0x45, %dl                #  87    0x52f93  3      
  je .L_530e0                    #  88    0x52f96  6      
  leal 0x8(%rax), %r12d          #  89    0x52f9c  4      
  nop                            #  90    0x52fa0  1      
  nop                            #  91    0x52fa1  1      
.L_53000:                        #        0x52fa2  0      
  cmpb $0x4c, %dl                #  92    0x52fa2  3      
  jne .L_52f60                   #  93    0x52fa5  6      
  movl %ebx, %edi                #  94    0x52fab  2      
  nop                            #  95    0x52fad  1      
  nop                            #  96    0x52fae  1      
  callq .d_expr_primary          #  97    0x52faf  5      
  movl %eax, %edx                #  98    0x52fb4  2      
  jmpq .L_52fa0                  #  99    0x52fb6  5      
  nop                            #  100   0x52fbb  1      
  nop                            #  101   0x52fbc  1      
.L_53040:                        #        0x52fbd  0      
  movl %ebx, %edi                #  102   0x52fbd  2      
  nop                            #  103   0x52fbf  1      
  nop                            #  104   0x52fc0  1      
  callq .d_template_args         #  105   0x52fc1  5      
  movl %eax, %edx                #  106   0x52fc6  2      
  jmpq .L_52fa0                  #  107   0x52fc8  5      
  nop                            #  108   0x52fcd  1      
  nop                            #  109   0x52fce  1      
.L_53080:                        #        0x52fcf  0      
  addl $0x1, %ecx                #  110   0x52fcf  3      
  movl %ebx, %edi                #  111   0x52fd2  2      
  movl %ebx, %ebx                #  112   0x52fd4  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  113   0x52fd6  5      
  nop                            #  114   0x52fdb  1      
  callq .d_expression            #  115   0x52fdc  5      
  movl %eax, %edx                #  116   0x52fe1  2      
  movl %ebx, %ebx                #  117   0x52fe3  2      
  movl 0xc(%r15,%rbx,1), %eax    #  118   0x52fe5  5      
  movl %eax, %eax                #  119   0x52fea  2      
  cmpb $0x45, (%r15,%rax,1)      #  120   0x52fec  5      
  jne .L_52ec0                   #  121   0x52ff1  6      
  addl $0x1, %eax                #  122   0x52ff7  3      
  movl %ebx, %ebx                #  123   0x52ffa  2      
  movl %eax, 0xc(%r15,%rbx,1)    #  124   0x52ffc  5      
  jmpq .L_52fa0                  #  125   0x53001  5      
  nop                            #  126   0x53006  1      
  nop                            #  127   0x53007  1      
.L_530e0:                        #        0x53008  0      
  addl $0x1, %ecx                #  128   0x53008  3      
  movl %ebx, %ebx                #  129   0x5300b  2      
  movl %r13d, 0x2c(%r15,%rbx,1)  #  130   0x5300d  5      
  movl 0xc(%rsp), %eax           #  131   0x53012  4      
  movl %ebx, %ebx                #  132   0x53016  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  133   0x53018  5      
  addl $0x10, %esp               #  134   0x5301d  3      
  addq %r15, %rsp                #  135   0x53020  3      
  popq %rbx                      #  136   0x53023  2      
  popq %r12                      #  137   0x53025  3      
  popq %r13                      #  138   0x53028  3      
  popq %r11                      #  139   0x5302b  3      
  andl $0xffffffe0, %r11d        #  140   0x5302e  7      
  addq %r15, %r11                #  141   0x53035  3      
  jmpq %r11                      #  142   0x53038  3      
  nop                            #  143   0x5303b  1      
  nop                            #  144   0x5303c  1      
                                                          
.size d_template_args, .-d_template_args

