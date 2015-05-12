  .text
  .globl __register_exitproc
  .type __register_exitproc, @function

#! file-offset 0x77dc0
#! rip-offset  0x77dc0
#! capacity    736 bytes

# Text                                   #  Line  RIP      Bytes  
.__register_exitproc:                    #        0x77dc0  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x77dc0  5      
  movq %r12, -0x18(%rsp)                 #  2     0x77dc5  5      
  movl %edx, %edx                        #  3     0x77dca  2      
  movq %r13, -0x10(%rsp)                 #  4     0x77dcc  5      
  movq %r14, -0x8(%rsp)                  #  5     0x77dd1  5      
  movl %edi, %ebx                        #  6     0x77dd6  2      
  subl $0x38, %esp                       #  7     0x77dd8  3      
  addq %r15, %rsp                        #  8     0x77ddb  3      
  xchgw %ax, %ax                         #  9     0x77dde  3      
  movl $0x100309a0, %edi                 #  10    0x77de1  5      
  movl %esi, %r12d                       #  11    0x77de6  3      
  movq %rdx, 0x8(%rsp)                   #  12    0x77de9  5      
  movl %ecx, %r13d                       #  13    0x77dee  3      
  nop                                    #  14    0x77df1  1      
  callq .__local_lock_acquire_recursive  #  15    0x77df2  5      
  movl 0xffab68e(%rip), %r14d            #  16    0x77df7  7      
  movl %r14d, %r14d                      #  17    0x77dfe  3      
  movl 0x148(%r15,%r14,1), %eax          #  18    0x77e01  8      
  testq %rax, %rax                       #  19    0x77e09  3      
  je .L_77f80                            #  20    0x77e0c  6      
  nop                                    #  21    0x77e12  1      
.L_77e20:                                #        0x77e13  0      
  movl %eax, %eax                        #  22    0x77e13  2      
  movl 0x4(%r15,%rax,1), %esi            #  23    0x77e15  5      
  cmpl $0x1f, %esi                       #  24    0x77e1a  3      
  jg .L_77fa0                            #  25    0x77e1d  6      
  nop                                    #  26    0x77e23  1      
  nop                                    #  27    0x77e24  1      
.L_77e40:                                #        0x77e25  0      
  testl %ebx, %ebx                       #  28    0x77e25  2      
  jne .L_77f00                           #  29    0x77e27  6      
  nop                                    #  30    0x77e2d  1      
  nop                                    #  31    0x77e2e  1      
.L_77e60:                                #        0x77e2f  0      
  leal (,%rsi,4), %edx                   #  32    0x77e2f  7      
  addl $0x1, %esi                        #  33    0x77e36  3      
  movl $0x100309a0, %edi                 #  34    0x77e39  5      
  movl %eax, %eax                        #  35    0x77e3e  2      
  movl %esi, 0x4(%r15,%rax,1)            #  36    0x77e40  5      
  movslq %edx, %rdx                      #  37    0x77e45  3      
  leaq (%rax,%rdx,1), %rdx               #  38    0x77e48  4      
  nop                                    #  39    0x77e4c  1      
  movl %edx, %edx                        #  40    0x77e4d  2      
  movl %r12d, 0x8(%r15,%rdx,1)           #  41    0x77e4f  5      
  nop                                    #  42    0x77e54  1      
  nop                                    #  43    0x77e55  1      
  callq .__local_lock_release_recursive  #  44    0x77e56  5      
  xorl %eax, %eax                        #  45    0x77e5b  2      
  nop                                    #  46    0x77e5d  1      
  nop                                    #  47    0x77e5e  1      
.L_77ec0:                                #        0x77e5f  0      
  movq 0x18(%rsp), %rbx                  #  48    0x77e5f  5      
  movq 0x20(%rsp), %r12                  #  49    0x77e64  5      
  movq 0x28(%rsp), %r13                  #  50    0x77e69  5      
  movq 0x30(%rsp), %r14                  #  51    0x77e6e  5      
  addl $0x38, %esp                       #  52    0x77e73  3      
  addq %r15, %rsp                        #  53    0x77e76  3      
  popq %r11                              #  54    0x77e79  3      
  nop                                    #  55    0x77e7c  1      
  andl $0xffffffe0, %r11d                #  56    0x77e7d  7      
  addq %r15, %r11                        #  57    0x77e84  3      
  jmpq %r11                              #  58    0x77e87  3      
  nop                                    #  59    0x77e8a  1      
  nop                                    #  60    0x77e8b  1      
.L_77f00:                                #        0x77e8c  0      
  leal 0x80(,%rsi,4), %esi               #  61    0x77e8c  7      
  movl %eax, %eax                        #  62    0x77e93  2      
  movl 0x4(%r15,%rax,1), %ecx            #  63    0x77e95  5      
  movl 0x8(%rsp), %edx                   #  64    0x77e9a  4      
  movslq %esi, %rsi                      #  65    0x77e9e  3      
  leaq (%rax,%rsi,1), %rsi               #  66    0x77ea1  4      
  movl %esi, %esi                        #  67    0x77ea5  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  68    0x77ea7  5      
  leal 0x100(,%rcx,4), %esi              #  69    0x77eac  7      
  movl $0x1, %edx                        #  70    0x77eb3  5      
  shll %cl, %edx                         #  71    0x77eb8  2      
  movl %eax, %eax                        #  72    0x77eba  2      
  orl %edx, 0x188(%r15,%rax,1)           #  73    0x77ebc  8      
  cmpl $0x2, %ebx                        #  74    0x77ec4  3      
  movslq %esi, %rsi                      #  75    0x77ec7  3      
  xchgw %ax, %ax                         #  76    0x77eca  3      
  leaq (%rax,%rsi,1), %rsi               #  77    0x77ecd  4      
  movl %esi, %esi                        #  78    0x77ed1  2      
  movl %r13d, 0x8(%r15,%rsi,1)           #  79    0x77ed3  5      
  movl %ecx, %esi                        #  80    0x77ed8  2      
  jne .L_77e60                           #  81    0x77eda  6      
  movl %eax, %eax                        #  82    0x77ee0  2      
  orl %edx, 0x18c(%r15,%rax,1)           #  83    0x77ee2  8      
  nop                                    #  84    0x77eea  1      
  jmpq .L_77e60                          #  85    0x77eeb  5      
  nop                                    #  86    0x77ef0  1      
  nop                                    #  87    0x77ef1  1      
.L_77f80:                                #        0x77ef2  0      
  leal 0x14c(%r14), %eax                 #  88    0x77ef2  7      
  movl %r14d, %r14d                      #  89    0x77ef9  3      
  movl %eax, 0x148(%r15,%r14,1)          #  90    0x77efc  8      
  jmpq .L_77e20                          #  91    0x77f04  5      
  nop                                    #  92    0x77f09  1      
.L_77fa0:                                #        0x77f0a  0      
  movl $0x63840, %eax                    #  93    0x77f0a  5      
  testl %eax, %eax                       #  94    0x77f0f  2      
  jne .L_77fe0                           #  95    0x77f11  6      
  nop                                    #  96    0x77f17  1      
  nop                                    #  97    0x77f18  1      
.L_77fc0:                                #        0x77f19  0      
  movl $0xffffffff, %eax                 #  98    0x77f19  5      
  jmpq .L_77ec0                          #  99    0x77f1e  5      
  nop                                    #  100   0x77f23  1      
  nop                                    #  101   0x77f24  1      
.L_77fe0:                                #        0x77f25  0      
  movl $0x190, %edi                      #  102   0x77f25  5      
  nop                                    #  103   0x77f2a  1      
  nop                                    #  104   0x77f2b  1      
  callq .malloc                          #  105   0x77f2c  5      
  movl %eax, %eax                        #  106   0x77f31  2      
  testq %rax, %rax                       #  107   0x77f33  3      
  je .L_78060                            #  108   0x77f36  6      
  movl %r14d, %r14d                      #  109   0x77f3c  3      
  movl 0x148(%r15,%r14,1), %edx          #  110   0x77f3f  8      
  movl %eax, %eax                        #  111   0x77f47  2      
  movl $0x0, 0x4(%r15,%rax,1)            #  112   0x77f49  9      
  xorl %esi, %esi                        #  113   0x77f52  2      
  nop                                    #  114   0x77f54  1      
  movl %eax, %eax                        #  115   0x77f55  2      
  movl $0x0, 0x188(%r15,%rax,1)          #  116   0x77f57  12     
  movl %eax, %eax                        #  117   0x77f63  2      
  movl $0x0, 0x18c(%r15,%rax,1)          #  118   0x77f65  12     
  nop                                    #  119   0x77f71  1      
  movl %eax, %eax                        #  120   0x77f72  2      
  movl %edx, (%r15,%rax,1)               #  121   0x77f74  4      
  movl %r14d, %r14d                      #  122   0x77f78  3      
  movl %eax, 0x148(%r15,%r14,1)          #  123   0x77f7b  8      
  jmpq .L_77e40                          #  124   0x77f83  5      
  nop                                    #  125   0x77f88  1      
.L_78060:                                #        0x77f89  0      
  movl $0x100309a0, %edi                 #  126   0x77f89  5      
  nop                                    #  127   0x77f8e  1      
  nop                                    #  128   0x77f8f  1      
  callq .__local_lock_release_recursive  #  129   0x77f90  5      
  jmpq .L_77fc0                          #  130   0x77f95  5      
  nop                                    #  131   0x77f9a  1      
  nop                                    #  132   0x77f9b  1      
  nop                                    #  133   0x77f9c  1      
  nop                                    #  134   0x77f9d  1      
  nop                                    #  135   0x77f9e  1      
  nop                                    #  136   0x77f9f  1      
  nop                                    #  137   0x77fa0  1      
  nop                                    #  138   0x77fa1  1      
  nop                                    #  139   0x77fa2  1      
  nop                                    #  140   0x77fa3  1      
  nop                                    #  141   0x77fa4  1      
  nop                                    #  142   0x77fa5  1      
  nop                                    #  143   0x77fa6  1      
  nop                                    #  144   0x77fa7  1      
  nop                                    #  145   0x77fa8  1      
  nop                                    #  146   0x77fa9  1      
  nop                                    #  147   0x77faa  1      
  nop                                    #  148   0x77fab  1      
  nop                                    #  149   0x77fac  1      
  nop                                    #  150   0x77fad  1      
  nop                                    #  151   0x77fae  1      
  nop                                    #  152   0x77faf  1      
  nop                                    #  153   0x77fb0  1      
  nop                                    #  154   0x77fb1  1      
  nop                                    #  155   0x77fb2  1      
  nop                                    #  156   0x77fb3  1      
  nop                                    #  157   0x77fb4  1      
                                                                  
.size __register_exitproc, .-__register_exitproc

