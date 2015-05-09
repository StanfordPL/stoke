  .text
  .globl __register_exitproc
  .type __register_exitproc, @function

#! file-offset 0x77da0
#! rip-offset  0x77da0
#! capacity    736 bytes

# Text                                   #  Line  RIP      Bytes  
.__register_exitproc:                    #        0x77da0  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x77da0  5      
  movq %r12, -0x18(%rsp)                 #  2     0x77da5  5      
  movl %edx, %edx                        #  3     0x77daa  2      
  movq %r13, -0x10(%rsp)                 #  4     0x77dac  5      
  movq %r14, -0x8(%rsp)                  #  5     0x77db1  5      
  movl %edi, %ebx                        #  6     0x77db6  2      
  subl $0x38, %esp                       #  7     0x77db8  3      
  addq %r15, %rsp                        #  8     0x77dbb  3      
  xchgw %ax, %ax                         #  9     0x77dbe  3      
  movl $0x100309a0, %edi                 #  10    0x77dc1  5      
  movl %esi, %r12d                       #  11    0x77dc6  3      
  movq %rdx, 0x8(%rsp)                   #  12    0x77dc9  5      
  movl %ecx, %r13d                       #  13    0x77dce  3      
  nop                                    #  14    0x77dd1  1      
  callq .__local_lock_acquire_recursive  #  15    0x77dd2  5      
  movl 0xffab6ae(%rip), %r14d            #  16    0x77dd7  7      
  movl %r14d, %r14d                      #  17    0x77dde  3      
  movl 0x148(%r15,%r14,1), %eax          #  18    0x77de1  8      
  testq %rax, %rax                       #  19    0x77de9  3      
  je .L_77f60                            #  20    0x77dec  6      
  nop                                    #  21    0x77df2  1      
.L_77e00:                                #        0x77df3  0      
  movl %eax, %eax                        #  22    0x77df3  2      
  movl 0x4(%r15,%rax,1), %esi            #  23    0x77df5  5      
  cmpl $0x1f, %esi                       #  24    0x77dfa  3      
  jg .L_77f80                            #  25    0x77dfd  6      
  nop                                    #  26    0x77e03  1      
  nop                                    #  27    0x77e04  1      
.L_77e20:                                #        0x77e05  0      
  testl %ebx, %ebx                       #  28    0x77e05  2      
  jne .L_77ee0                           #  29    0x77e07  6      
  nop                                    #  30    0x77e0d  1      
  nop                                    #  31    0x77e0e  1      
.L_77e40:                                #        0x77e0f  0      
  leal (,%rsi,4), %edx                   #  32    0x77e0f  7      
  addl $0x1, %esi                        #  33    0x77e16  3      
  movl $0x100309a0, %edi                 #  34    0x77e19  5      
  movl %eax, %eax                        #  35    0x77e1e  2      
  movl %esi, 0x4(%r15,%rax,1)            #  36    0x77e20  5      
  movslq %edx, %rdx                      #  37    0x77e25  3      
  leaq (%rax,%rdx,1), %rdx               #  38    0x77e28  4      
  nop                                    #  39    0x77e2c  1      
  movl %edx, %edx                        #  40    0x77e2d  2      
  movl %r12d, 0x8(%r15,%rdx,1)           #  41    0x77e2f  5      
  nop                                    #  42    0x77e34  1      
  nop                                    #  43    0x77e35  1      
  callq .__local_lock_release_recursive  #  44    0x77e36  5      
  xorl %eax, %eax                        #  45    0x77e3b  2      
  nop                                    #  46    0x77e3d  1      
  nop                                    #  47    0x77e3e  1      
.L_77ea0:                                #        0x77e3f  0      
  movq 0x18(%rsp), %rbx                  #  48    0x77e3f  5      
  movq 0x20(%rsp), %r12                  #  49    0x77e44  5      
  movq 0x28(%rsp), %r13                  #  50    0x77e49  5      
  movq 0x30(%rsp), %r14                  #  51    0x77e4e  5      
  addl $0x38, %esp                       #  52    0x77e53  3      
  addq %r15, %rsp                        #  53    0x77e56  3      
  popq %r11                              #  54    0x77e59  3      
  nop                                    #  55    0x77e5c  1      
  andl $0xffffffe0, %r11d                #  56    0x77e5d  7      
  addq %r15, %r11                        #  57    0x77e64  3      
  jmpq %r11                              #  58    0x77e67  3      
  nop                                    #  59    0x77e6a  1      
  nop                                    #  60    0x77e6b  1      
.L_77ee0:                                #        0x77e6c  0      
  leal 0x80(,%rsi,4), %esi               #  61    0x77e6c  7      
  movl %eax, %eax                        #  62    0x77e73  2      
  movl 0x4(%r15,%rax,1), %ecx            #  63    0x77e75  5      
  movl 0x8(%rsp), %edx                   #  64    0x77e7a  4      
  movslq %esi, %rsi                      #  65    0x77e7e  3      
  leaq (%rax,%rsi,1), %rsi               #  66    0x77e81  4      
  movl %esi, %esi                        #  67    0x77e85  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  68    0x77e87  5      
  leal 0x100(,%rcx,4), %esi              #  69    0x77e8c  7      
  movl $0x1, %edx                        #  70    0x77e93  5      
  shll %cl, %edx                         #  71    0x77e98  2      
  movl %eax, %eax                        #  72    0x77e9a  2      
  orl %edx, 0x188(%r15,%rax,1)           #  73    0x77e9c  8      
  cmpl $0x2, %ebx                        #  74    0x77ea4  3      
  movslq %esi, %rsi                      #  75    0x77ea7  3      
  xchgw %ax, %ax                         #  76    0x77eaa  3      
  leaq (%rax,%rsi,1), %rsi               #  77    0x77ead  4      
  movl %esi, %esi                        #  78    0x77eb1  2      
  movl %r13d, 0x8(%r15,%rsi,1)           #  79    0x77eb3  5      
  movl %ecx, %esi                        #  80    0x77eb8  2      
  jne .L_77e40                           #  81    0x77eba  6      
  movl %eax, %eax                        #  82    0x77ec0  2      
  orl %edx, 0x18c(%r15,%rax,1)           #  83    0x77ec2  8      
  nop                                    #  84    0x77eca  1      
  jmpq .L_77e40                          #  85    0x77ecb  5      
  nop                                    #  86    0x77ed0  1      
  nop                                    #  87    0x77ed1  1      
.L_77f60:                                #        0x77ed2  0      
  leal 0x14c(%r14), %eax                 #  88    0x77ed2  7      
  movl %r14d, %r14d                      #  89    0x77ed9  3      
  movl %eax, 0x148(%r15,%r14,1)          #  90    0x77edc  8      
  jmpq .L_77e00                          #  91    0x77ee4  5      
  nop                                    #  92    0x77ee9  1      
.L_77f80:                                #        0x77eea  0      
  movl $0x63820, %eax                    #  93    0x77eea  5      
  testl %eax, %eax                       #  94    0x77eef  2      
  jne .L_77fc0                           #  95    0x77ef1  6      
  nop                                    #  96    0x77ef7  1      
  nop                                    #  97    0x77ef8  1      
.L_77fa0:                                #        0x77ef9  0      
  movl $0xffffffff, %eax                 #  98    0x77ef9  5      
  jmpq .L_77ea0                          #  99    0x77efe  5      
  nop                                    #  100   0x77f03  1      
  nop                                    #  101   0x77f04  1      
.L_77fc0:                                #        0x77f05  0      
  movl $0x190, %edi                      #  102   0x77f05  5      
  nop                                    #  103   0x77f0a  1      
  nop                                    #  104   0x77f0b  1      
  callq .malloc                          #  105   0x77f0c  5      
  movl %eax, %eax                        #  106   0x77f11  2      
  testq %rax, %rax                       #  107   0x77f13  3      
  je .L_78040                            #  108   0x77f16  6      
  movl %r14d, %r14d                      #  109   0x77f1c  3      
  movl 0x148(%r15,%r14,1), %edx          #  110   0x77f1f  8      
  movl %eax, %eax                        #  111   0x77f27  2      
  movl $0x0, 0x4(%r15,%rax,1)            #  112   0x77f29  9      
  xorl %esi, %esi                        #  113   0x77f32  2      
  nop                                    #  114   0x77f34  1      
  movl %eax, %eax                        #  115   0x77f35  2      
  movl $0x0, 0x188(%r15,%rax,1)          #  116   0x77f37  12     
  movl %eax, %eax                        #  117   0x77f43  2      
  movl $0x0, 0x18c(%r15,%rax,1)          #  118   0x77f45  12     
  nop                                    #  119   0x77f51  1      
  movl %eax, %eax                        #  120   0x77f52  2      
  movl %edx, (%r15,%rax,1)               #  121   0x77f54  4      
  movl %r14d, %r14d                      #  122   0x77f58  3      
  movl %eax, 0x148(%r15,%r14,1)          #  123   0x77f5b  8      
  jmpq .L_77e20                          #  124   0x77f63  5      
  nop                                    #  125   0x77f68  1      
.L_78040:                                #        0x77f69  0      
  movl $0x100309a0, %edi                 #  126   0x77f69  5      
  nop                                    #  127   0x77f6e  1      
  nop                                    #  128   0x77f6f  1      
  callq .__local_lock_release_recursive  #  129   0x77f70  5      
  jmpq .L_77fa0                          #  130   0x77f75  5      
  nop                                    #  131   0x77f7a  1      
  nop                                    #  132   0x77f7b  1      
  nop                                    #  133   0x77f7c  1      
  nop                                    #  134   0x77f7d  1      
  nop                                    #  135   0x77f7e  1      
  nop                                    #  136   0x77f7f  1      
  nop                                    #  137   0x77f80  1      
  nop                                    #  138   0x77f81  1      
  nop                                    #  139   0x77f82  1      
  nop                                    #  140   0x77f83  1      
  nop                                    #  141   0x77f84  1      
  nop                                    #  142   0x77f85  1      
  nop                                    #  143   0x77f86  1      
  nop                                    #  144   0x77f87  1      
  nop                                    #  145   0x77f88  1      
  nop                                    #  146   0x77f89  1      
  nop                                    #  147   0x77f8a  1      
  nop                                    #  148   0x77f8b  1      
  nop                                    #  149   0x77f8c  1      
  nop                                    #  150   0x77f8d  1      
  nop                                    #  151   0x77f8e  1      
  nop                                    #  152   0x77f8f  1      
  nop                                    #  153   0x77f90  1      
  nop                                    #  154   0x77f91  1      
  nop                                    #  155   0x77f92  1      
  nop                                    #  156   0x77f93  1      
  nop                                    #  157   0x77f94  1      
                                                                  
.size __register_exitproc, .-__register_exitproc

