  .text
  .globl T_266
  .type T_266, @function

#! file-offset 0x61d20
#! rip-offset  0x61d20
#! capacity    768 bytes

# Text                               #  Line  RIP      Bytes  
.T_266:                              #        0x61d20  0      
  pushq %r12                         #  1     0x61d20  3      
  pushq %rbx                         #  2     0x61d23  2      
  subl $0x18, %esp                   #  3     0x61d25  3      
  addq %r15, %rsp                    #  4     0x61d28  3      
  movl 0xffd4b5f(%rip), %ecx         #  5     0x61d2b  6      
  testl %ecx, %ecx                   #  6     0x61d31  2      
  je .L_61ec0                        #  7     0x61d33  6      
  nop                                #  8     0x61d39  1      
.L_61d40:                            #        0x61d3a  0      
  cmpl $0xffffffbf, %edi             #  9     0x61d3a  6      
  ja .L_61e80                        #  10    0x61d40  6      
  movl 0xffd4b8b(%rip), %r8d         #  11    0x61d46  7      
  testq %r8, %r8                     #  12    0x61d4d  3      
  je .L_61e80                        #  13    0x61d50  6      
  movl 0xffd4b70(%rip), %eax         #  14    0x61d56  6      
  nop                                #  15    0x61d5c  1      
  addl $0x28, %edi                   #  16    0x61d5d  3      
  cmpl %eax, %edi                    #  17    0x61d60  2      
  jae .L_61de0                       #  18    0x61d62  6      
  movl 0xffd4b2a(%rip), %esi         #  19    0x61d68  6      
  movl $0x10036a84, %ecx             #  20    0x61d6e  5      
  movl %ecx, %ebx                    #  21    0x61d73  2      
  nop                                #  22    0x61d75  1      
.L_61d80:                            #        0x61d76  0      
  movl %ebx, %ebx                    #  23    0x61d76  2      
  movl (%r15,%rbx,1), %edx           #  24    0x61d78  4      
  cmpl %edx, %r8d                    #  25    0x61d7c  3      
  jb .L_61da0                        #  26    0x61d7f  6      
  movl %ebx, %ebx                    #  27    0x61d85  2      
  addl 0x4(%r15,%rbx,1), %edx        #  28    0x61d87  5      
  cmpl %r8d, %edx                    #  29    0x61d8c  3      
  ja .L_61dc0                        #  30    0x61d8f  6      
  nop                                #  31    0x61d95  1      
.L_61da0:                            #        0x61d96  0      
  movl %ebx, %ebx                    #  32    0x61d96  2      
  movl 0x8(%r15,%rbx,1), %ebx        #  33    0x61d98  5      
  testq %rbx, %rbx                   #  34    0x61d9d  3      
  jne .L_61d80                       #  35    0x61da0  6      
  nop                                #  36    0x61da6  1      
  nop                                #  37    0x61da7  1      
.L_61dc0:                            #        0x61da8  0      
  movl %ebx, %ebx                    #  38    0x61da8  2      
  movl 0xc(%r15,%rbx,1), %edx        #  39    0x61daa  5      
  testb $0x8, %dl                    #  40    0x61daf  3      
  je .L_61f00                        #  41    0x61db2  6      
  nop                                #  42    0x61db8  1      
  nop                                #  43    0x61db9  1      
.L_61de0:                            #        0x61dba  0      
  xorl %r12d, %r12d                  #  44    0x61dba  3      
  nop                                #  45    0x61dbd  1      
  nop                                #  46    0x61dbe  1      
.L_61e00:                            #        0x61dbf  0      
  nop                                #  47    0x61dbf  1      
  nop                                #  48    0x61dc0  1      
  callq .T_268                       #  49    0x61dc1  5      
  addl %eax, %r12d                   #  50    0x61dc6  3      
  movl $0x1, %eax                    #  51    0x61dc9  5      
  testl %r12d, %r12d                 #  52    0x61dce  3      
  jne .L_61ea0                       #  53    0x61dd1  6      
  movl 0xffd4aef(%rip), %eax         #  54    0x61dd7  6      
  cmpl 0xffd4af9(%rip), %eax         #  55    0x61ddd  6      
  jbe .L_61e80                       #  56    0x61de3  6      
  nop                                #  57    0x61de9  1      
  movl $0xffffffff, 0xffd4ae8(%rip)  #  58    0x61dea  10     
  addl $0x18, %esp                   #  59    0x61df4  3      
  addq %r15, %rsp                    #  60    0x61df7  3      
  xorl %eax, %eax                    #  61    0x61dfa  2      
  popq %rbx                          #  62    0x61dfc  2      
  popq %r12                          #  63    0x61dfe  3      
  popq %r11                          #  64    0x61e01  3      
  nop                                #  65    0x61e04  1      
  andl $0xffffffe0, %r11d            #  66    0x61e05  7      
  addq %r15, %r11                    #  67    0x61e0c  3      
  jmpq %r11                          #  68    0x61e0f  3      
  nop                                #  69    0x61e12  1      
  nop                                #  70    0x61e13  1      
.L_61e80:                            #        0x61e14  0      
  xorl %eax, %eax                    #  71    0x61e14  2      
  nop                                #  72    0x61e16  1      
  nop                                #  73    0x61e17  1      
.L_61ea0:                            #        0x61e18  0      
  addl $0x18, %esp                   #  74    0x61e18  3      
  addq %r15, %rsp                    #  75    0x61e1b  3      
  popq %rbx                          #  76    0x61e1e  2      
  popq %r12                          #  77    0x61e20  3      
  popq %r11                          #  78    0x61e23  3      
  andl $0xffffffe0, %r11d            #  79    0x61e26  7      
  addq %r15, %r11                    #  80    0x61e2d  3      
  jmpq %r11                          #  81    0x61e30  3      
  nop                                #  82    0x61e33  1      
.L_61ec0:                            #        0x61e34  0      
  movl %edi, 0x8(%rsp)               #  83    0x61e34  4      
  nop                                #  84    0x61e38  1      
  nop                                #  85    0x61e39  1      
  callq .init_mparams                #  86    0x61e3a  5      
  movl 0x8(%rsp), %edi               #  87    0x61e3f  4      
  jmpq .L_61d40                      #  88    0x61e43  5      
  nop                                #  89    0x61e48  1      
  nop                                #  90    0x61e49  1      
.L_61f00:                            #        0x61e4a  0      
  andl $0x1, %edx                    #  91    0x61e4a  3      
  je .L_61de0                        #  92    0x61e4d  6      
  leal -0x1(%rax,%rsi,1), %eax       #  93    0x61e53  4      
  xorl %edx, %edx                    #  94    0x61e57  2      
  subl %edi, %eax                    #  95    0x61e59  2      
  movl %ebx, %ebx                    #  96    0x61e5b  2      
  movl 0x4(%r15,%rbx,1), %edi        #  97    0x61e5d  5      
  divl %esi                          #  98    0x61e62  2      
  leal -0x1(%rax), %r12d             #  99    0x61e64  4      
  xchgw %ax, %ax                     #  100   0x61e68  3      
  imull %esi, %r12d                  #  101   0x61e6b  4      
  cmpl %edi, %r12d                   #  102   0x61e6f  3      
  ja .L_61de0                        #  103   0x61e72  6      
  movl %ebx, %ebx                    #  104   0x61e78  2      
  movl (%r15,%rbx,1), %eax           #  105   0x61e7a  4      
  movl %ecx, %ecx                    #  106   0x61e7e  2      
  leal (%rdi,%rax,1), %edx           #  107   0x61e80  3      
  nop                                #  108   0x61e83  1      
.L_61f40:                            #        0x61e84  0      
  cmpl %eax, %ecx                    #  109   0x61e84  2      
  jb .L_61f60                        #  110   0x61e86  6      
  cmpl %ecx, %edx                    #  111   0x61e8c  2      
  ja .L_61de0                        #  112   0x61e8e  6      
  nop                                #  113   0x61e94  1      
  nop                                #  114   0x61e95  1      
.L_61f60:                            #        0x61e96  0      
  movl %ecx, %ecx                    #  115   0x61e96  2      
  movl 0x8(%r15,%rcx,1), %ecx        #  116   0x61e98  5      
  testq %rcx, %rcx                   #  117   0x61e9d  3      
  jne .L_61f40                       #  118   0x61ea0  6      
  subl %r12d, %edi                   #  119   0x61ea6  3      
  movl %r12d, %esi                   #  120   0x61ea9  3      
  addl %eax, %edi                    #  121   0x61eac  2      
  nop                                #  122   0x61eae  1      
  callq .munmap                      #  123   0x61eaf  5      
  testl %eax, %eax                   #  124   0x61eb4  2      
  jne .L_61de0                       #  125   0x61eb6  6      
  testl %r12d, %r12d                 #  126   0x61ebc  3      
  je .L_61e00                        #  127   0x61ebf  6      
  movl 0xffd4a0d(%rip), %ecx         #  128   0x61ec5  6      
  movl %ebx, %ebx                    #  129   0x61ecb  2      
  subl %r12d, 0x4(%r15,%rbx,1)       #  130   0x61ecd  5      
  xorl %edx, %edx                    #  131   0x61ed2  2      
  subl %r12d, 0xffd4b95(%rip)        #  132   0x61ed4  7      
  movl 0xffd49eb(%rip), %eax         #  133   0x61edb  6      
  movl %ecx, %ebx                    #  134   0x61ee1  2      
  andl $0x7, %ebx                    #  135   0x61ee3  3      
  je .L_61fc0                        #  136   0x61ee6  6      
  movl %ebx, %edx                    #  137   0x61eec  2      
  negl %edx                          #  138   0x61eee  2      
  andl $0x7, %edx                    #  139   0x61ef0  3      
  nop                                #  140   0x61ef3  1      
.L_61fc0:                            #        0x61ef4  0      
  subl %r12d, %eax                   #  141   0x61ef4  3      
  leal (%rdx,%rcx,1), %ecx           #  142   0x61ef7  3      
  subl %edx, %eax                    #  143   0x61efa  2      
  movl %eax, %edx                    #  144   0x61efc  2      
  movl %eax, 0xffd49c8(%rip)         #  145   0x61efe  6      
  addl %ecx, %eax                    #  146   0x61f04  2      
  orl $0x1, %edx                     #  147   0x61f06  3      
  movl %ecx, 0xffd49c9(%rip)         #  148   0x61f09  6      
  nop                                #  149   0x61f0f  1      
  movl %ecx, %ecx                    #  150   0x61f10  2      
  movl %edx, 0x4(%r15,%rcx,1)        #  151   0x61f12  5      
  movl %eax, %eax                    #  152   0x61f17  2      
  movl $0x28, 0x4(%r15,%rax,1)       #  153   0x61f19  9      
  movl 0xffd4978(%rip), %eax         #  154   0x61f22  6      
  movl %eax, 0xffd49ae(%rip)         #  155   0x61f28  6      
  xchgw %ax, %ax                     #  156   0x61f2e  3      
  jmpq .L_61e00                      #  157   0x61f31  5      
  nop                                #  158   0x61f36  1      
  nop                                #  159   0x61f37  1      
                                                              
.size T_266, .-T_266

