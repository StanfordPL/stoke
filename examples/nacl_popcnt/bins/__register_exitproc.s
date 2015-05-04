  .text
  .globl __register_exitproc
  .type __register_exitproc, @function

#! file-offset 0x77e40
#! rip-offset  0x77e40
#! capacity    736 bytes

# Text                                   #  Line  RIP      Bytes  
.__register_exitproc:                    #        0x77e40  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x77e40  5      
  movq %r12, -0x18(%rsp)                 #  2     0x77e45  5      
  movl %edx, %edx                        #  3     0x77e4a  2      
  movq %r13, -0x10(%rsp)                 #  4     0x77e4c  5      
  movq %r14, -0x8(%rsp)                  #  5     0x77e51  5      
  movl %edi, %ebx                        #  6     0x77e56  2      
  subl $0x38, %esp                       #  7     0x77e58  3      
  addq %r15, %rsp                        #  8     0x77e5b  3      
  xchgw %ax, %ax                         #  9     0x77e5e  3      
  movl $0x100309a0, %edi                 #  10    0x77e61  5      
  movl %esi, %r12d                       #  11    0x77e66  3      
  movq %rdx, 0x8(%rsp)                   #  12    0x77e69  5      
  movl %ecx, %r13d                       #  13    0x77e6e  3      
  nop                                    #  14    0x77e71  1      
  callq .__local_lock_acquire_recursive  #  15    0x77e72  5      
  movl 0xffab60e(%rip), %r14d            #  16    0x77e77  7      
  movl %r14d, %r14d                      #  17    0x77e7e  3      
  movl 0x148(%r15,%r14,1), %eax          #  18    0x77e81  8      
  testq %rax, %rax                       #  19    0x77e89  3      
  je .L_78000                            #  20    0x77e8c  6      
  nop                                    #  21    0x77e92  1      
.L_77ea0:                                #        0x77e93  0      
  movl %eax, %eax                        #  22    0x77e93  2      
  movl 0x4(%r15,%rax,1), %esi            #  23    0x77e95  5      
  cmpl $0x1f, %esi                       #  24    0x77e9a  3      
  jg .L_78020                            #  25    0x77e9d  6      
  nop                                    #  26    0x77ea3  1      
  nop                                    #  27    0x77ea4  1      
.L_77ec0:                                #        0x77ea5  0      
  testl %ebx, %ebx                       #  28    0x77ea5  2      
  jne .L_77f80                           #  29    0x77ea7  6      
  nop                                    #  30    0x77ead  1      
  nop                                    #  31    0x77eae  1      
.L_77ee0:                                #        0x77eaf  0      
  leal (,%rsi,4), %edx                   #  32    0x77eaf  7      
  addl $0x1, %esi                        #  33    0x77eb6  3      
  movl $0x100309a0, %edi                 #  34    0x77eb9  5      
  movl %eax, %eax                        #  35    0x77ebe  2      
  movl %esi, 0x4(%r15,%rax,1)            #  36    0x77ec0  5      
  movslq %edx, %rdx                      #  37    0x77ec5  3      
  leaq (%rax,%rdx,1), %rdx               #  38    0x77ec8  4      
  nop                                    #  39    0x77ecc  1      
  movl %edx, %edx                        #  40    0x77ecd  2      
  movl %r12d, 0x8(%r15,%rdx,1)           #  41    0x77ecf  5      
  nop                                    #  42    0x77ed4  1      
  nop                                    #  43    0x77ed5  1      
  callq .__local_lock_release_recursive  #  44    0x77ed6  5      
  xorl %eax, %eax                        #  45    0x77edb  2      
  nop                                    #  46    0x77edd  1      
  nop                                    #  47    0x77ede  1      
.L_77f40:                                #        0x77edf  0      
  movq 0x18(%rsp), %rbx                  #  48    0x77edf  5      
  movq 0x20(%rsp), %r12                  #  49    0x77ee4  5      
  movq 0x28(%rsp), %r13                  #  50    0x77ee9  5      
  movq 0x30(%rsp), %r14                  #  51    0x77eee  5      
  addl $0x38, %esp                       #  52    0x77ef3  3      
  addq %r15, %rsp                        #  53    0x77ef6  3      
  popq %r11                              #  54    0x77ef9  3      
  nop                                    #  55    0x77efc  1      
  andl $0xffffffe0, %r11d                #  56    0x77efd  7      
  addq %r15, %r11                        #  57    0x77f04  3      
  jmpq %r11                              #  58    0x77f07  3      
  nop                                    #  59    0x77f0a  1      
  nop                                    #  60    0x77f0b  1      
.L_77f80:                                #        0x77f0c  0      
  leal 0x80(,%rsi,4), %esi               #  61    0x77f0c  7      
  movl %eax, %eax                        #  62    0x77f13  2      
  movl 0x4(%r15,%rax,1), %ecx            #  63    0x77f15  5      
  movl 0x8(%rsp), %edx                   #  64    0x77f1a  4      
  movslq %esi, %rsi                      #  65    0x77f1e  3      
  leaq (%rax,%rsi,1), %rsi               #  66    0x77f21  4      
  movl %esi, %esi                        #  67    0x77f25  2      
  movl %edx, 0x8(%r15,%rsi,1)            #  68    0x77f27  5      
  leal 0x100(,%rcx,4), %esi              #  69    0x77f2c  7      
  movl $0x1, %edx                        #  70    0x77f33  5      
  shll %cl, %edx                         #  71    0x77f38  2      
  movl %eax, %eax                        #  72    0x77f3a  2      
  orl %edx, 0x188(%r15,%rax,1)           #  73    0x77f3c  8      
  cmpl $0x2, %ebx                        #  74    0x77f44  3      
  movslq %esi, %rsi                      #  75    0x77f47  3      
  xchgw %ax, %ax                         #  76    0x77f4a  3      
  leaq (%rax,%rsi,1), %rsi               #  77    0x77f4d  4      
  movl %esi, %esi                        #  78    0x77f51  2      
  movl %r13d, 0x8(%r15,%rsi,1)           #  79    0x77f53  5      
  movl %ecx, %esi                        #  80    0x77f58  2      
  jne .L_77ee0                           #  81    0x77f5a  6      
  movl %eax, %eax                        #  82    0x77f60  2      
  orl %edx, 0x18c(%r15,%rax,1)           #  83    0x77f62  8      
  nop                                    #  84    0x77f6a  1      
  jmpq .L_77ee0                          #  85    0x77f6b  5      
  nop                                    #  86    0x77f70  1      
  nop                                    #  87    0x77f71  1      
.L_78000:                                #        0x77f72  0      
  leal 0x14c(%r14), %eax                 #  88    0x77f72  7      
  movl %r14d, %r14d                      #  89    0x77f79  3      
  movl %eax, 0x148(%r15,%r14,1)          #  90    0x77f7c  8      
  jmpq .L_77ea0                          #  91    0x77f84  5      
  nop                                    #  92    0x77f89  1      
.L_78020:                                #        0x77f8a  0      
  movl $0x638c0, %eax                    #  93    0x77f8a  5      
  testl %eax, %eax                       #  94    0x77f8f  2      
  jne .L_78060                           #  95    0x77f91  6      
  nop                                    #  96    0x77f97  1      
  nop                                    #  97    0x77f98  1      
.L_78040:                                #        0x77f99  0      
  movl $0xffffffff, %eax                 #  98    0x77f99  5      
  jmpq .L_77f40                          #  99    0x77f9e  5      
  nop                                    #  100   0x77fa3  1      
  nop                                    #  101   0x77fa4  1      
.L_78060:                                #        0x77fa5  0      
  movl $0x190, %edi                      #  102   0x77fa5  5      
  nop                                    #  103   0x77faa  1      
  nop                                    #  104   0x77fab  1      
  callq .malloc                          #  105   0x77fac  5      
  movl %eax, %eax                        #  106   0x77fb1  2      
  testq %rax, %rax                       #  107   0x77fb3  3      
  je .L_780e0                            #  108   0x77fb6  6      
  movl %r14d, %r14d                      #  109   0x77fbc  3      
  movl 0x148(%r15,%r14,1), %edx          #  110   0x77fbf  8      
  movl %eax, %eax                        #  111   0x77fc7  2      
  movl $0x0, 0x4(%r15,%rax,1)            #  112   0x77fc9  9      
  xorl %esi, %esi                        #  113   0x77fd2  2      
  nop                                    #  114   0x77fd4  1      
  movl %eax, %eax                        #  115   0x77fd5  2      
  movl $0x0, 0x188(%r15,%rax,1)          #  116   0x77fd7  12     
  movl %eax, %eax                        #  117   0x77fe3  2      
  movl $0x0, 0x18c(%r15,%rax,1)          #  118   0x77fe5  12     
  nop                                    #  119   0x77ff1  1      
  movl %eax, %eax                        #  120   0x77ff2  2      
  movl %edx, (%r15,%rax,1)               #  121   0x77ff4  4      
  movl %r14d, %r14d                      #  122   0x77ff8  3      
  movl %eax, 0x148(%r15,%r14,1)          #  123   0x77ffb  8      
  jmpq .L_77ec0                          #  124   0x78003  5      
  nop                                    #  125   0x78008  1      
.L_780e0:                                #        0x78009  0      
  movl $0x100309a0, %edi                 #  126   0x78009  5      
  nop                                    #  127   0x7800e  1      
  nop                                    #  128   0x7800f  1      
  callq .__local_lock_release_recursive  #  129   0x78010  5      
  jmpq .L_78040                          #  130   0x78015  5      
  nop                                    #  131   0x7801a  1      
  nop                                    #  132   0x7801b  1      
  nop                                    #  133   0x7801c  1      
  nop                                    #  134   0x7801d  1      
  nop                                    #  135   0x7801e  1      
  nop                                    #  136   0x7801f  1      
  nop                                    #  137   0x78020  1      
  nop                                    #  138   0x78021  1      
  nop                                    #  139   0x78022  1      
  nop                                    #  140   0x78023  1      
  nop                                    #  141   0x78024  1      
  nop                                    #  142   0x78025  1      
  nop                                    #  143   0x78026  1      
  nop                                    #  144   0x78027  1      
  nop                                    #  145   0x78028  1      
  nop                                    #  146   0x78029  1      
  nop                                    #  147   0x7802a  1      
  nop                                    #  148   0x7802b  1      
  nop                                    #  149   0x7802c  1      
  nop                                    #  150   0x7802d  1      
  nop                                    #  151   0x7802e  1      
  nop                                    #  152   0x7802f  1      
  nop                                    #  153   0x78030  1      
  nop                                    #  154   0x78031  1      
  nop                                    #  155   0x78032  1      
  nop                                    #  156   0x78033  1      
  nop                                    #  157   0x78034  1      
                                                                  
.size __register_exitproc, .-__register_exitproc

