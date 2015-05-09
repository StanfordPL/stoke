  .text
  .globl _ZN2pp8Instance20GetPerInstanceObjectEiRKSs
  .type _ZN2pp8Instance20GetPerInstanceObjectEiRKSs, @function

#! file-offset 0x20d60
#! rip-offset  0x20d60
#! capacity    544 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance20GetPerInstanceObjectEiRKSs:    #        0x20d60  0      
  pushq %r12                                     #  1     0x20d60  3      
  movl %edi, %r12d                               #  2     0x20d63  3      
  pushq %rbx                                     #  3     0x20d66  2      
  movl %esi, %ebx                                #  4     0x20d68  2      
  subl $0x8, %esp                                #  5     0x20d6a  3      
  addq %r15, %rsp                                #  6     0x20d6d  3      
  nop                                            #  7     0x20d70  1      
  callq ._ZN2pp6Module3GetEv                     #  8     0x20d71  5      
  movl %r12d, %esi                               #  9     0x20d76  3      
  movl %eax, %edi                                #  10    0x20d79  2      
  nop                                            #  11    0x20d7b  1      
  nop                                            #  12    0x20d7c  1      
  callq ._ZN2pp6Module21InstanceForPPInstanceEi  #  13    0x20d7d  5      
  movl %eax, %eax                                #  14    0x20d82  2      
  testq %rax, %rax                               #  15    0x20d84  3      
  jne .L_20e00                                   #  16    0x20d87  6      
  nop                                            #  17    0x20d8d  1      
  nop                                            #  18    0x20d8e  1      
.L_20dc0:                                        #        0x20d8f  0      
  xorl %eax, %eax                                #  19    0x20d8f  2      
  nop                                            #  20    0x20d91  1      
  nop                                            #  21    0x20d92  1      
.L_20de0:                                        #        0x20d93  0      
  addl $0x8, %esp                                #  22    0x20d93  3      
  addq %r15, %rsp                                #  23    0x20d96  3      
  popq %rbx                                      #  24    0x20d99  2      
  popq %r12                                      #  25    0x20d9b  3      
  popq %r11                                      #  26    0x20d9e  3      
  andl $0xffffffe0, %r11d                        #  27    0x20da1  7      
  addq %r15, %r11                                #  28    0x20da8  3      
  jmpq %r11                                      #  29    0x20dab  3      
  nop                                            #  30    0x20dae  1      
.L_20e00:                                        #        0x20daf  0      
  movl %eax, %eax                                #  31    0x20daf  2      
  movl 0x10(%r15,%rax,1), %edx                   #  32    0x20db1  5      
  leal 0xc(%rax), %r11d                          #  33    0x20db6  4      
  movq %r11, %r10                                #  34    0x20dba  3      
  testq %rdx, %rdx                               #  35    0x20dbd  3      
  je .L_20f00                                    #  36    0x20dc0  6      
  movl %ebx, %ebx                                #  37    0x20dc6  2      
  movl (%r15,%rbx,1), %r9d                       #  38    0x20dc8  4      
  nop                                            #  39    0x20dcc  1      
  leal -0xc(%r9), %eax                           #  40    0x20dcd  4      
  movl %eax, %eax                                #  41    0x20dd1  2      
  movl (%r15,%rax,1), %r8d                       #  42    0x20dd3  4      
  jmpq .L_20e80                                  #  43    0x20dd7  5      
  nop                                            #  44    0x20ddc  1      
  nop                                            #  45    0x20ddd  1      
.L_20e40:                                        #        0x20dde  0      
  movl %edx, %edx                                #  46    0x20dde  2      
  movl 0x8(%r15,%rdx,1), %eax                    #  47    0x20de0  5      
  movq %rdx, %r10                                #  48    0x20de5  3      
  testq %rax, %rax                               #  49    0x20de8  3      
  je .L_20f00                                    #  50    0x20deb  6      
  nop                                            #  51    0x20df1  1      
.L_20e60:                                        #        0x20df2  0      
  movq %rax, %rdx                                #  52    0x20df2  3      
  nop                                            #  53    0x20df5  1      
  nop                                            #  54    0x20df6  1      
.L_20e80:                                        #        0x20df7  0      
  movl %edx, %edx                                #  55    0x20df7  2      
  movl 0x10(%r15,%rdx,1), %esi                   #  56    0x20df9  5      
  movq %r9, %rdi                                 #  57    0x20dfe  3      
  leal -0xc(%rsi), %eax                          #  58    0x20e01  3      
  movl %eax, %eax                                #  59    0x20e04  2      
  movl (%r15,%rax,1), %eax                       #  60    0x20e06  4      
  cmpl %eax, %r8d                                #  61    0x20e0a  3      
  movl %eax, %ecx                                #  62    0x20e0d  2      
  cmovbel %r8d, %ecx                             #  63    0x20e0f  4      
  movl %ecx, %ecx                                #  64    0x20e13  2      
  xchgw %ax, %ax                                 #  65    0x20e15  3      
  cmpq %rcx, %rcx                                #  66    0x20e18  3      
  movl %esi, %esi                                #  67    0x20e1b  2      
  leaq (%r15,%rsi,1), %rsi                       #  68    0x20e1d  4      
  movl %edi, %edi                                #  69    0x20e21  2      
  leaq (%r15,%rdi,1), %rdi                       #  70    0x20e23  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)              #  71    0x20e27  3      
  movl %esi, %esi                                #  72    0x20e2a  2      
  movl %edi, %edi                                #  73    0x20e2c  2      
  seta %cl                                       #  74    0x20e2e  3      
  setb %sil                                      #  75    0x20e31  4      
  subl %r8d, %eax                                #  76    0x20e35  3      
  nop                                            #  77    0x20e38  1      
  subb %sil, %cl                                 #  78    0x20e39  3      
  movsbl %cl, %ecx                               #  79    0x20e3c  3      
  testl %ecx, %ecx                               #  80    0x20e3f  2      
  cmovel %eax, %ecx                              #  81    0x20e41  3      
  testl %ecx, %ecx                               #  82    0x20e44  2      
  jns .L_20e40                                   #  83    0x20e46  6      
  movl %edx, %edx                                #  84    0x20e4c  2      
  movl 0xc(%r15,%rdx,1), %eax                    #  85    0x20e4e  5      
  testq %rax, %rax                               #  86    0x20e53  3      
  nop                                            #  87    0x20e56  1      
  jne .L_20e60                                   #  88    0x20e57  6      
  nop                                            #  89    0x20e5d  1      
  nop                                            #  90    0x20e5e  1      
.L_20f00:                                        #        0x20e5f  0      
  cmpl %r10d, %r11d                              #  91    0x20e5f  3      
  je .L_20dc0                                    #  92    0x20e62  6      
  movl %ebx, %ebx                                #  93    0x20e68  2      
  movl (%r15,%rbx,1), %esi                       #  94    0x20e6a  4      
  movl %r10d, %r10d                              #  95    0x20e6e  3      
  movl 0x10(%r15,%r10,1), %edi                   #  96    0x20e71  5      
  leal -0xc(%rsi), %eax                          #  97    0x20e76  3      
  movl %eax, %eax                                #  98    0x20e79  2      
  movl (%r15,%rax,1), %edx                       #  99    0x20e7b  4      
  leal -0xc(%rdi), %eax                          #  100   0x20e7f  3      
  movl %eax, %eax                                #  101   0x20e82  2      
  movl (%r15,%rax,1), %eax                       #  102   0x20e84  4      
  movl %edx, %ecx                                #  103   0x20e88  2      
  cmpl %edx, %eax                                #  104   0x20e8a  2      
  cmovbel %eax, %ecx                             #  105   0x20e8c  3      
  movl %ecx, %ecx                                #  106   0x20e8f  2      
  cmpq %rcx, %rcx                                #  107   0x20e91  3      
  nop                                            #  108   0x20e94  1      
  movl %esi, %esi                                #  109   0x20e95  2      
  leaq (%r15,%rsi,1), %rsi                       #  110   0x20e97  4      
  movl %edi, %edi                                #  111   0x20e9b  2      
  leaq (%r15,%rdi,1), %rdi                       #  112   0x20e9d  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)              #  113   0x20ea1  3      
  movl %esi, %esi                                #  114   0x20ea4  2      
  movl %edi, %edi                                #  115   0x20ea6  2      
  seta %cl                                       #  116   0x20ea8  3      
  setb %bl                                       #  117   0x20eab  3      
  subl %eax, %edx                                #  118   0x20eae  2      
  subb %bl, %cl                                  #  119   0x20eb0  2      
  movsbl %cl, %ecx                               #  120   0x20eb2  3      
  nop                                            #  121   0x20eb5  1      
  testl %ecx, %ecx                               #  122   0x20eb6  2      
  cmovel %edx, %ecx                              #  123   0x20eb8  3      
  testl %ecx, %ecx                               #  124   0x20ebb  2      
  js .L_20dc0                                    #  125   0x20ebd  6      
  movl %r10d, %r10d                              #  126   0x20ec3  3      
  movl 0x14(%r15,%r10,1), %eax                   #  127   0x20ec6  5      
  jmpq .L_20de0                                  #  128   0x20ecb  5      
  nop                                            #  129   0x20ed0  1      
                                                                          
.size _ZN2pp8Instance20GetPerInstanceObjectEiRKSs, .-_ZN2pp8Instance20GetPerInstanceObjectEiRKSs

