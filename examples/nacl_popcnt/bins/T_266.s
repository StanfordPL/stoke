  .text
  .globl T_266
  .type T_266, @function

#! file-offset 0x61dc0
#! rip-offset  0x61dc0
#! capacity    768 bytes

# Text                               #  Line  RIP      Bytes  
.T_266:                              #        0x61dc0  0      
  pushq %r12                         #  1     0x61dc0  3      
  pushq %rbx                         #  2     0x61dc3  2      
  subl $0x18, %esp                   #  3     0x61dc5  3      
  addq %r15, %rsp                    #  4     0x61dc8  3      
  movl 0xffd4abf(%rip), %ecx         #  5     0x61dcb  6      
  testl %ecx, %ecx                   #  6     0x61dd1  2      
  je .L_61f60                        #  7     0x61dd3  6      
  nop                                #  8     0x61dd9  1      
.L_61de0:                            #        0x61dda  0      
  cmpl $0xffffffbf, %edi             #  9     0x61dda  6      
  ja .L_61f20                        #  10    0x61de0  6      
  movl 0xffd4aeb(%rip), %r8d         #  11    0x61de6  7      
  testq %r8, %r8                     #  12    0x61ded  3      
  je .L_61f20                        #  13    0x61df0  6      
  movl 0xffd4ad0(%rip), %eax         #  14    0x61df6  6      
  nop                                #  15    0x61dfc  1      
  addl $0x28, %edi                   #  16    0x61dfd  3      
  cmpl %eax, %edi                    #  17    0x61e00  2      
  jae .L_61e80                       #  18    0x61e02  6      
  movl 0xffd4a8a(%rip), %esi         #  19    0x61e08  6      
  movl $0x10036a84, %ecx             #  20    0x61e0e  5      
  movl %ecx, %ebx                    #  21    0x61e13  2      
  nop                                #  22    0x61e15  1      
.L_61e20:                            #        0x61e16  0      
  movl %ebx, %ebx                    #  23    0x61e16  2      
  movl (%r15,%rbx,1), %edx           #  24    0x61e18  4      
  cmpl %edx, %r8d                    #  25    0x61e1c  3      
  jb .L_61e40                        #  26    0x61e1f  6      
  movl %ebx, %ebx                    #  27    0x61e25  2      
  addl 0x4(%r15,%rbx,1), %edx        #  28    0x61e27  5      
  cmpl %r8d, %edx                    #  29    0x61e2c  3      
  ja .L_61e60                        #  30    0x61e2f  6      
  nop                                #  31    0x61e35  1      
.L_61e40:                            #        0x61e36  0      
  movl %ebx, %ebx                    #  32    0x61e36  2      
  movl 0x8(%r15,%rbx,1), %ebx        #  33    0x61e38  5      
  testq %rbx, %rbx                   #  34    0x61e3d  3      
  jne .L_61e20                       #  35    0x61e40  6      
  nop                                #  36    0x61e46  1      
  nop                                #  37    0x61e47  1      
.L_61e60:                            #        0x61e48  0      
  movl %ebx, %ebx                    #  38    0x61e48  2      
  movl 0xc(%r15,%rbx,1), %edx        #  39    0x61e4a  5      
  testb $0x8, %dl                    #  40    0x61e4f  3      
  je .L_61fa0                        #  41    0x61e52  6      
  nop                                #  42    0x61e58  1      
  nop                                #  43    0x61e59  1      
.L_61e80:                            #        0x61e5a  0      
  xorl %r12d, %r12d                  #  44    0x61e5a  3      
  nop                                #  45    0x61e5d  1      
  nop                                #  46    0x61e5e  1      
.L_61ea0:                            #        0x61e5f  0      
  nop                                #  47    0x61e5f  1      
  nop                                #  48    0x61e60  1      
  callq .T_268                       #  49    0x61e61  5      
  addl %eax, %r12d                   #  50    0x61e66  3      
  movl $0x1, %eax                    #  51    0x61e69  5      
  testl %r12d, %r12d                 #  52    0x61e6e  3      
  jne .L_61f40                       #  53    0x61e71  6      
  movl 0xffd4a4f(%rip), %eax         #  54    0x61e77  6      
  cmpl 0xffd4a59(%rip), %eax         #  55    0x61e7d  6      
  jbe .L_61f20                       #  56    0x61e83  6      
  nop                                #  57    0x61e89  1      
  movl $0xffffffff, 0xffd4a48(%rip)  #  58    0x61e8a  10     
  addl $0x18, %esp                   #  59    0x61e94  3      
  addq %r15, %rsp                    #  60    0x61e97  3      
  xorl %eax, %eax                    #  61    0x61e9a  2      
  popq %rbx                          #  62    0x61e9c  2      
  popq %r12                          #  63    0x61e9e  3      
  popq %r11                          #  64    0x61ea1  3      
  nop                                #  65    0x61ea4  1      
  andl $0xffffffe0, %r11d            #  66    0x61ea5  7      
  addq %r15, %r11                    #  67    0x61eac  3      
  jmpq %r11                          #  68    0x61eaf  3      
  nop                                #  69    0x61eb2  1      
  nop                                #  70    0x61eb3  1      
.L_61f20:                            #        0x61eb4  0      
  xorl %eax, %eax                    #  71    0x61eb4  2      
  nop                                #  72    0x61eb6  1      
  nop                                #  73    0x61eb7  1      
.L_61f40:                            #        0x61eb8  0      
  addl $0x18, %esp                   #  74    0x61eb8  3      
  addq %r15, %rsp                    #  75    0x61ebb  3      
  popq %rbx                          #  76    0x61ebe  2      
  popq %r12                          #  77    0x61ec0  3      
  popq %r11                          #  78    0x61ec3  3      
  andl $0xffffffe0, %r11d            #  79    0x61ec6  7      
  addq %r15, %r11                    #  80    0x61ecd  3      
  jmpq %r11                          #  81    0x61ed0  3      
  nop                                #  82    0x61ed3  1      
.L_61f60:                            #        0x61ed4  0      
  movl %edi, 0x8(%rsp)               #  83    0x61ed4  4      
  nop                                #  84    0x61ed8  1      
  nop                                #  85    0x61ed9  1      
  callq .init_mparams                #  86    0x61eda  5      
  movl 0x8(%rsp), %edi               #  87    0x61edf  4      
  jmpq .L_61de0                      #  88    0x61ee3  5      
  nop                                #  89    0x61ee8  1      
  nop                                #  90    0x61ee9  1      
.L_61fa0:                            #        0x61eea  0      
  andl $0x1, %edx                    #  91    0x61eea  3      
  je .L_61e80                        #  92    0x61eed  6      
  leal -0x1(%rax,%rsi,1), %eax       #  93    0x61ef3  4      
  xorl %edx, %edx                    #  94    0x61ef7  2      
  subl %edi, %eax                    #  95    0x61ef9  2      
  movl %ebx, %ebx                    #  96    0x61efb  2      
  movl 0x4(%r15,%rbx,1), %edi        #  97    0x61efd  5      
  divl %esi                          #  98    0x61f02  2      
  leal -0x1(%rax), %r12d             #  99    0x61f04  4      
  xchgw %ax, %ax                     #  100   0x61f08  3      
  imull %esi, %r12d                  #  101   0x61f0b  4      
  cmpl %edi, %r12d                   #  102   0x61f0f  3      
  ja .L_61e80                        #  103   0x61f12  6      
  movl %ebx, %ebx                    #  104   0x61f18  2      
  movl (%r15,%rbx,1), %eax           #  105   0x61f1a  4      
  movl %ecx, %ecx                    #  106   0x61f1e  2      
  leal (%rdi,%rax,1), %edx           #  107   0x61f20  3      
  nop                                #  108   0x61f23  1      
.L_61fe0:                            #        0x61f24  0      
  cmpl %eax, %ecx                    #  109   0x61f24  2      
  jb .L_62000                        #  110   0x61f26  6      
  cmpl %ecx, %edx                    #  111   0x61f2c  2      
  ja .L_61e80                        #  112   0x61f2e  6      
  nop                                #  113   0x61f34  1      
  nop                                #  114   0x61f35  1      
.L_62000:                            #        0x61f36  0      
  movl %ecx, %ecx                    #  115   0x61f36  2      
  movl 0x8(%r15,%rcx,1), %ecx        #  116   0x61f38  5      
  testq %rcx, %rcx                   #  117   0x61f3d  3      
  jne .L_61fe0                       #  118   0x61f40  6      
  subl %r12d, %edi                   #  119   0x61f46  3      
  movl %r12d, %esi                   #  120   0x61f49  3      
  addl %eax, %edi                    #  121   0x61f4c  2      
  nop                                #  122   0x61f4e  1      
  callq .munmap                      #  123   0x61f4f  5      
  testl %eax, %eax                   #  124   0x61f54  2      
  jne .L_61e80                       #  125   0x61f56  6      
  testl %r12d, %r12d                 #  126   0x61f5c  3      
  je .L_61ea0                        #  127   0x61f5f  6      
  movl 0xffd496d(%rip), %ecx         #  128   0x61f65  6      
  movl %ebx, %ebx                    #  129   0x61f6b  2      
  subl %r12d, 0x4(%r15,%rbx,1)       #  130   0x61f6d  5      
  xorl %edx, %edx                    #  131   0x61f72  2      
  subl %r12d, 0xffd4af5(%rip)        #  132   0x61f74  7      
  movl 0xffd494b(%rip), %eax         #  133   0x61f7b  6      
  movl %ecx, %ebx                    #  134   0x61f81  2      
  andl $0x7, %ebx                    #  135   0x61f83  3      
  je .L_62060                        #  136   0x61f86  6      
  movl %ebx, %edx                    #  137   0x61f8c  2      
  negl %edx                          #  138   0x61f8e  2      
  andl $0x7, %edx                    #  139   0x61f90  3      
  nop                                #  140   0x61f93  1      
.L_62060:                            #        0x61f94  0      
  subl %r12d, %eax                   #  141   0x61f94  3      
  leal (%rdx,%rcx,1), %ecx           #  142   0x61f97  3      
  subl %edx, %eax                    #  143   0x61f9a  2      
  movl %eax, %edx                    #  144   0x61f9c  2      
  movl %eax, 0xffd4928(%rip)         #  145   0x61f9e  6      
  addl %ecx, %eax                    #  146   0x61fa4  2      
  orl $0x1, %edx                     #  147   0x61fa6  3      
  movl %ecx, 0xffd4929(%rip)         #  148   0x61fa9  6      
  nop                                #  149   0x61faf  1      
  movl %ecx, %ecx                    #  150   0x61fb0  2      
  movl %edx, 0x4(%r15,%rcx,1)        #  151   0x61fb2  5      
  movl %eax, %eax                    #  152   0x61fb7  2      
  movl $0x28, 0x4(%r15,%rax,1)       #  153   0x61fb9  9      
  movl 0xffd48d8(%rip), %eax         #  154   0x61fc2  6      
  movl %eax, 0xffd490e(%rip)         #  155   0x61fc8  6      
  xchgw %ax, %ax                     #  156   0x61fce  3      
  jmpq .L_61ea0                      #  157   0x61fd1  5      
  nop                                #  158   0x61fd6  1      
  nop                                #  159   0x61fd7  1      
                                                              
.size T_266, .-T_266

