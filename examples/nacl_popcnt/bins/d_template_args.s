  .text
  .globl d_template_args
  .type d_template_args, @function

#! file-offset 0x52e00
#! rip-offset  0x52e00
#! capacity    672 bytes

# Text                           #  Line  RIP      Bytes  
.d_template_args:                #        0x52e00  0      
  pushq %r13                     #  1     0x52e00  3      
  pushq %r12                     #  2     0x52e03  3      
  pushq %rbx                     #  3     0x52e06  2      
  movl %edi, %ebx                #  4     0x52e08  2      
  subl $0x10, %esp               #  5     0x52e0a  3      
  addq %r15, %rsp                #  6     0x52e0d  3      
  movl %ebx, %ebx                #  7     0x52e10  2      
  movl 0xc(%r15,%rbx,1), %ecx    #  8     0x52e12  5      
  movl %ebx, %ebx                #  9     0x52e17  2      
  movl 0x2c(%r15,%rbx,1), %r13d  #  10    0x52e19  5      
  nop                            #  11    0x52e1e  1      
  movl %ecx, %ecx                #  12    0x52e1f  2      
  cmpb $0x49, (%r15,%rcx,1)      #  13    0x52e21  5      
  je .L_52e60                    #  14    0x52e26  6      
  nop                            #  15    0x52e2c  1      
  nop                            #  16    0x52e2d  1      
.L_52e40:                        #        0x52e2e  0      
  addl $0x10, %esp               #  17    0x52e2e  3      
  addq %r15, %rsp                #  18    0x52e31  3      
  xorl %eax, %eax                #  19    0x52e34  2      
  popq %rbx                      #  20    0x52e36  2      
  popq %r12                      #  21    0x52e38  3      
  popq %r13                      #  22    0x52e3b  3      
  popq %r11                      #  23    0x52e3e  3      
  andl $0xffffffe0, %r11d        #  24    0x52e41  7      
  addq %r15, %r11                #  25    0x52e48  3      
  jmpq %r11                      #  26    0x52e4b  3      
  nop                            #  27    0x52e4e  1      
.L_52e60:                        #        0x52e4f  0      
  addl $0x1, %ecx                #  28    0x52e4f  3      
  movl %ebx, %ebx                #  29    0x52e52  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  30    0x52e54  5      
  movl %ecx, %ecx                #  31    0x52e59  2      
  cmpb $0x45, (%r15,%rcx,1)      #  32    0x52e5b  5      
  jne .L_52ec0                   #  33    0x52e60  6      
  addl $0x1, %ecx                #  34    0x52e66  3      
  movl %ebx, %edi                #  35    0x52e69  2      
  xorl %edx, %edx                #  36    0x52e6b  2      
  nop                            #  37    0x52e6d  1      
  movl %ebx, %ebx                #  38    0x52e6e  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  39    0x52e70  5      
  movl $0x2a, %esi               #  40    0x52e75  5      
  xorl %ecx, %ecx                #  41    0x52e7a  2      
  nop                            #  42    0x52e7c  1      
  callq .d_make_comp             #  43    0x52e7d  5      
  addl $0x10, %esp               #  44    0x52e82  3      
  addq %r15, %rsp                #  45    0x52e85  3      
  movl %eax, %eax                #  46    0x52e88  2      
  popq %rbx                      #  47    0x52e8a  2      
  popq %r12                      #  48    0x52e8c  3      
  popq %r13                      #  49    0x52e8f  3      
  popq %r11                      #  50    0x52e92  3      
  andl $0xffffffe0, %r11d        #  51    0x52e95  7      
  addq %r15, %r11                #  52    0x52e9c  3      
  jmpq %r11                      #  53    0x52e9f  3      
  nop                            #  54    0x52ea2  1      
.L_52ec0:                        #        0x52ea3  0      
  movl $0x0, 0xc(%rsp)           #  55    0x52ea3  8      
  leal 0xc(%rsp), %r12d          #  56    0x52eab  5      
  movl %ecx, %ecx                #  57    0x52eb0  2      
  movzbl (%r15,%rcx,1), %edx     #  58    0x52eb2  5      
  jmpq .L_52f80                  #  59    0x52eb7  5      
  nop                            #  60    0x52ebc  1      
.L_52ee0:                        #        0x52ebd  0      
  cmpb $0x58, %dl                #  61    0x52ebd  3      
  je .L_53000                    #  62    0x52ec0  6      
  cmpb $0x49, %dl                #  63    0x52ec6  3      
  je .L_52fc0                    #  64    0x52ec9  6      
  movl %ebx, %edi                #  65    0x52ecf  2      
  nop                            #  66    0x52ed1  1      
  callq .d_type                  #  67    0x52ed2  5      
  movl %eax, %edx                #  68    0x52ed7  2      
  nop                            #  69    0x52ed9  1      
  nop                            #  70    0x52eda  1      
.L_52f20:                        #        0x52edb  0      
  testq %rdx, %rdx               #  71    0x52edb  3      
  je .L_52e40                    #  72    0x52ede  6      
  xorl %ecx, %ecx                #  73    0x52ee4  2      
  movl $0x2a, %esi               #  74    0x52ee6  5      
  movl %ebx, %edi                #  75    0x52eeb  2      
  nop                            #  76    0x52eed  1      
  callq .d_make_comp             #  77    0x52eee  5      
  movl %eax, %eax                #  78    0x52ef3  2      
  testq %rax, %rax               #  79    0x52ef5  3      
  movl %r12d, %r12d              #  80    0x52ef8  3      
  movl %eax, (%r15,%r12,1)       #  81    0x52efb  4      
  je .L_52e40                    #  82    0x52eff  6      
  movl %ebx, %ebx                #  83    0x52f05  2      
  movl 0xc(%r15,%rbx,1), %ecx    #  84    0x52f07  5      
  movl %ecx, %ecx                #  85    0x52f0c  2      
  movzbl (%r15,%rcx,1), %edx     #  86    0x52f0e  5      
  cmpb $0x45, %dl                #  87    0x52f13  3      
  je .L_53060                    #  88    0x52f16  6      
  leal 0x8(%rax), %r12d          #  89    0x52f1c  4      
  nop                            #  90    0x52f20  1      
  nop                            #  91    0x52f21  1      
.L_52f80:                        #        0x52f22  0      
  cmpb $0x4c, %dl                #  92    0x52f22  3      
  jne .L_52ee0                   #  93    0x52f25  6      
  movl %ebx, %edi                #  94    0x52f2b  2      
  nop                            #  95    0x52f2d  1      
  nop                            #  96    0x52f2e  1      
  callq .d_expr_primary          #  97    0x52f2f  5      
  movl %eax, %edx                #  98    0x52f34  2      
  jmpq .L_52f20                  #  99    0x52f36  5      
  nop                            #  100   0x52f3b  1      
  nop                            #  101   0x52f3c  1      
.L_52fc0:                        #        0x52f3d  0      
  movl %ebx, %edi                #  102   0x52f3d  2      
  nop                            #  103   0x52f3f  1      
  nop                            #  104   0x52f40  1      
  callq .d_template_args         #  105   0x52f41  5      
  movl %eax, %edx                #  106   0x52f46  2      
  jmpq .L_52f20                  #  107   0x52f48  5      
  nop                            #  108   0x52f4d  1      
  nop                            #  109   0x52f4e  1      
.L_53000:                        #        0x52f4f  0      
  addl $0x1, %ecx                #  110   0x52f4f  3      
  movl %ebx, %edi                #  111   0x52f52  2      
  movl %ebx, %ebx                #  112   0x52f54  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  113   0x52f56  5      
  nop                            #  114   0x52f5b  1      
  callq .d_expression            #  115   0x52f5c  5      
  movl %eax, %edx                #  116   0x52f61  2      
  movl %ebx, %ebx                #  117   0x52f63  2      
  movl 0xc(%r15,%rbx,1), %eax    #  118   0x52f65  5      
  movl %eax, %eax                #  119   0x52f6a  2      
  cmpb $0x45, (%r15,%rax,1)      #  120   0x52f6c  5      
  jne .L_52e40                   #  121   0x52f71  6      
  addl $0x1, %eax                #  122   0x52f77  3      
  movl %ebx, %ebx                #  123   0x52f7a  2      
  movl %eax, 0xc(%r15,%rbx,1)    #  124   0x52f7c  5      
  jmpq .L_52f20                  #  125   0x52f81  5      
  nop                            #  126   0x52f86  1      
  nop                            #  127   0x52f87  1      
.L_53060:                        #        0x52f88  0      
  addl $0x1, %ecx                #  128   0x52f88  3      
  movl %ebx, %ebx                #  129   0x52f8b  2      
  movl %r13d, 0x2c(%r15,%rbx,1)  #  130   0x52f8d  5      
  movl 0xc(%rsp), %eax           #  131   0x52f92  4      
  movl %ebx, %ebx                #  132   0x52f96  2      
  movl %ecx, 0xc(%r15,%rbx,1)    #  133   0x52f98  5      
  addl $0x10, %esp               #  134   0x52f9d  3      
  addq %r15, %rsp                #  135   0x52fa0  3      
  popq %rbx                      #  136   0x52fa3  2      
  popq %r12                      #  137   0x52fa5  3      
  popq %r13                      #  138   0x52fa8  3      
  popq %r11                      #  139   0x52fab  3      
  andl $0xffffffe0, %r11d        #  140   0x52fae  7      
  addq %r15, %r11                #  141   0x52fb5  3      
  jmpq %r11                      #  142   0x52fb8  3      
  nop                            #  143   0x52fbb  1      
  nop                            #  144   0x52fbc  1      
                                                          
.size d_template_args, .-d_template_args

