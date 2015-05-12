  .text
  .globl T_266
  .type T_266, @function

#! file-offset 0x61d40
#! rip-offset  0x61d40
#! capacity    768 bytes

# Text                               #  Line  RIP      Bytes  
.T_266:                              #        0x61d40  0      
  pushq %r12                         #  1     0x61d40  3      
  pushq %rbx                         #  2     0x61d43  2      
  subl $0x18, %esp                   #  3     0x61d45  3      
  addq %r15, %rsp                    #  4     0x61d48  3      
  movl 0xffd4b3f(%rip), %ecx         #  5     0x61d4b  6      
  testl %ecx, %ecx                   #  6     0x61d51  2      
  je .L_61ee0                        #  7     0x61d53  6      
  nop                                #  8     0x61d59  1      
.L_61d60:                            #        0x61d5a  0      
  cmpl $0xffffffbf, %edi             #  9     0x61d5a  6      
  ja .L_61ea0                        #  10    0x61d60  6      
  movl 0xffd4b6b(%rip), %r8d         #  11    0x61d66  7      
  testq %r8, %r8                     #  12    0x61d6d  3      
  je .L_61ea0                        #  13    0x61d70  6      
  movl 0xffd4b50(%rip), %eax         #  14    0x61d76  6      
  nop                                #  15    0x61d7c  1      
  addl $0x28, %edi                   #  16    0x61d7d  3      
  cmpl %eax, %edi                    #  17    0x61d80  2      
  jae .L_61e00                       #  18    0x61d82  6      
  movl 0xffd4b0a(%rip), %esi         #  19    0x61d88  6      
  movl $0x10036a84, %ecx             #  20    0x61d8e  5      
  movl %ecx, %ebx                    #  21    0x61d93  2      
  nop                                #  22    0x61d95  1      
.L_61da0:                            #        0x61d96  0      
  movl %ebx, %ebx                    #  23    0x61d96  2      
  movl (%r15,%rbx,1), %edx           #  24    0x61d98  4      
  cmpl %edx, %r8d                    #  25    0x61d9c  3      
  jb .L_61dc0                        #  26    0x61d9f  6      
  movl %ebx, %ebx                    #  27    0x61da5  2      
  addl 0x4(%r15,%rbx,1), %edx        #  28    0x61da7  5      
  cmpl %r8d, %edx                    #  29    0x61dac  3      
  ja .L_61de0                        #  30    0x61daf  6      
  nop                                #  31    0x61db5  1      
.L_61dc0:                            #        0x61db6  0      
  movl %ebx, %ebx                    #  32    0x61db6  2      
  movl 0x8(%r15,%rbx,1), %ebx        #  33    0x61db8  5      
  testq %rbx, %rbx                   #  34    0x61dbd  3      
  jne .L_61da0                       #  35    0x61dc0  6      
  nop                                #  36    0x61dc6  1      
  nop                                #  37    0x61dc7  1      
.L_61de0:                            #        0x61dc8  0      
  movl %ebx, %ebx                    #  38    0x61dc8  2      
  movl 0xc(%r15,%rbx,1), %edx        #  39    0x61dca  5      
  testb $0x8, %dl                    #  40    0x61dcf  3      
  je .L_61f20                        #  41    0x61dd2  6      
  nop                                #  42    0x61dd8  1      
  nop                                #  43    0x61dd9  1      
.L_61e00:                            #        0x61dda  0      
  xorl %r12d, %r12d                  #  44    0x61dda  3      
  nop                                #  45    0x61ddd  1      
  nop                                #  46    0x61dde  1      
.L_61e20:                            #        0x61ddf  0      
  nop                                #  47    0x61ddf  1      
  nop                                #  48    0x61de0  1      
  callq .T_268                       #  49    0x61de1  5      
  addl %eax, %r12d                   #  50    0x61de6  3      
  movl $0x1, %eax                    #  51    0x61de9  5      
  testl %r12d, %r12d                 #  52    0x61dee  3      
  jne .L_61ec0                       #  53    0x61df1  6      
  movl 0xffd4acf(%rip), %eax         #  54    0x61df7  6      
  cmpl 0xffd4ad9(%rip), %eax         #  55    0x61dfd  6      
  jbe .L_61ea0                       #  56    0x61e03  6      
  nop                                #  57    0x61e09  1      
  movl $0xffffffff, 0xffd4ac8(%rip)  #  58    0x61e0a  10     
  addl $0x18, %esp                   #  59    0x61e14  3      
  addq %r15, %rsp                    #  60    0x61e17  3      
  xorl %eax, %eax                    #  61    0x61e1a  2      
  popq %rbx                          #  62    0x61e1c  2      
  popq %r12                          #  63    0x61e1e  3      
  popq %r11                          #  64    0x61e21  3      
  nop                                #  65    0x61e24  1      
  andl $0xffffffe0, %r11d            #  66    0x61e25  7      
  addq %r15, %r11                    #  67    0x61e2c  3      
  jmpq %r11                          #  68    0x61e2f  3      
  nop                                #  69    0x61e32  1      
  nop                                #  70    0x61e33  1      
.L_61ea0:                            #        0x61e34  0      
  xorl %eax, %eax                    #  71    0x61e34  2      
  nop                                #  72    0x61e36  1      
  nop                                #  73    0x61e37  1      
.L_61ec0:                            #        0x61e38  0      
  addl $0x18, %esp                   #  74    0x61e38  3      
  addq %r15, %rsp                    #  75    0x61e3b  3      
  popq %rbx                          #  76    0x61e3e  2      
  popq %r12                          #  77    0x61e40  3      
  popq %r11                          #  78    0x61e43  3      
  andl $0xffffffe0, %r11d            #  79    0x61e46  7      
  addq %r15, %r11                    #  80    0x61e4d  3      
  jmpq %r11                          #  81    0x61e50  3      
  nop                                #  82    0x61e53  1      
.L_61ee0:                            #        0x61e54  0      
  movl %edi, 0x8(%rsp)               #  83    0x61e54  4      
  nop                                #  84    0x61e58  1      
  nop                                #  85    0x61e59  1      
  callq .init_mparams                #  86    0x61e5a  5      
  movl 0x8(%rsp), %edi               #  87    0x61e5f  4      
  jmpq .L_61d60                      #  88    0x61e63  5      
  nop                                #  89    0x61e68  1      
  nop                                #  90    0x61e69  1      
.L_61f20:                            #        0x61e6a  0      
  andl $0x1, %edx                    #  91    0x61e6a  3      
  je .L_61e00                        #  92    0x61e6d  6      
  leal -0x1(%rax,%rsi,1), %eax       #  93    0x61e73  4      
  xorl %edx, %edx                    #  94    0x61e77  2      
  subl %edi, %eax                    #  95    0x61e79  2      
  movl %ebx, %ebx                    #  96    0x61e7b  2      
  movl 0x4(%r15,%rbx,1), %edi        #  97    0x61e7d  5      
  divl %esi                          #  98    0x61e82  2      
  leal -0x1(%rax), %r12d             #  99    0x61e84  4      
  xchgw %ax, %ax                     #  100   0x61e88  3      
  imull %esi, %r12d                  #  101   0x61e8b  4      
  cmpl %edi, %r12d                   #  102   0x61e8f  3      
  ja .L_61e00                        #  103   0x61e92  6      
  movl %ebx, %ebx                    #  104   0x61e98  2      
  movl (%r15,%rbx,1), %eax           #  105   0x61e9a  4      
  movl %ecx, %ecx                    #  106   0x61e9e  2      
  leal (%rdi,%rax,1), %edx           #  107   0x61ea0  3      
  nop                                #  108   0x61ea3  1      
.L_61f60:                            #        0x61ea4  0      
  cmpl %eax, %ecx                    #  109   0x61ea4  2      
  jb .L_61f80                        #  110   0x61ea6  6      
  cmpl %ecx, %edx                    #  111   0x61eac  2      
  ja .L_61e00                        #  112   0x61eae  6      
  nop                                #  113   0x61eb4  1      
  nop                                #  114   0x61eb5  1      
.L_61f80:                            #        0x61eb6  0      
  movl %ecx, %ecx                    #  115   0x61eb6  2      
  movl 0x8(%r15,%rcx,1), %ecx        #  116   0x61eb8  5      
  testq %rcx, %rcx                   #  117   0x61ebd  3      
  jne .L_61f60                       #  118   0x61ec0  6      
  subl %r12d, %edi                   #  119   0x61ec6  3      
  movl %r12d, %esi                   #  120   0x61ec9  3      
  addl %eax, %edi                    #  121   0x61ecc  2      
  nop                                #  122   0x61ece  1      
  callq .munmap                      #  123   0x61ecf  5      
  testl %eax, %eax                   #  124   0x61ed4  2      
  jne .L_61e00                       #  125   0x61ed6  6      
  testl %r12d, %r12d                 #  126   0x61edc  3      
  je .L_61e20                        #  127   0x61edf  6      
  movl 0xffd49ed(%rip), %ecx         #  128   0x61ee5  6      
  movl %ebx, %ebx                    #  129   0x61eeb  2      
  subl %r12d, 0x4(%r15,%rbx,1)       #  130   0x61eed  5      
  xorl %edx, %edx                    #  131   0x61ef2  2      
  subl %r12d, 0xffd4b75(%rip)        #  132   0x61ef4  7      
  movl 0xffd49cb(%rip), %eax         #  133   0x61efb  6      
  movl %ecx, %ebx                    #  134   0x61f01  2      
  andl $0x7, %ebx                    #  135   0x61f03  3      
  je .L_61fe0                        #  136   0x61f06  6      
  movl %ebx, %edx                    #  137   0x61f0c  2      
  negl %edx                          #  138   0x61f0e  2      
  andl $0x7, %edx                    #  139   0x61f10  3      
  nop                                #  140   0x61f13  1      
.L_61fe0:                            #        0x61f14  0      
  subl %r12d, %eax                   #  141   0x61f14  3      
  leal (%rdx,%rcx,1), %ecx           #  142   0x61f17  3      
  subl %edx, %eax                    #  143   0x61f1a  2      
  movl %eax, %edx                    #  144   0x61f1c  2      
  movl %eax, 0xffd49a8(%rip)         #  145   0x61f1e  6      
  addl %ecx, %eax                    #  146   0x61f24  2      
  orl $0x1, %edx                     #  147   0x61f26  3      
  movl %ecx, 0xffd49a9(%rip)         #  148   0x61f29  6      
  nop                                #  149   0x61f2f  1      
  movl %ecx, %ecx                    #  150   0x61f30  2      
  movl %edx, 0x4(%r15,%rcx,1)        #  151   0x61f32  5      
  movl %eax, %eax                    #  152   0x61f37  2      
  movl $0x28, 0x4(%r15,%rax,1)       #  153   0x61f39  9      
  movl 0xffd4958(%rip), %eax         #  154   0x61f42  6      
  movl %eax, 0xffd498e(%rip)         #  155   0x61f48  6      
  xchgw %ax, %ax                     #  156   0x61f4e  3      
  jmpq .L_61e20                      #  157   0x61f51  5      
  nop                                #  158   0x61f56  1      
  nop                                #  159   0x61f57  1      
                                                              
.size T_266, .-T_266

