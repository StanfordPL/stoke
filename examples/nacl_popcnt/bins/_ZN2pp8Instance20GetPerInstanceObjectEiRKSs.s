  .text
  .globl _ZN2pp8Instance20GetPerInstanceObjectEiRKSs
  .type _ZN2pp8Instance20GetPerInstanceObjectEiRKSs, @function

#! file-offset 0x20d80
#! rip-offset  0x20d80
#! capacity    544 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance20GetPerInstanceObjectEiRKSs:    #        0x20d80  0      
  pushq %r12                                     #  1     0x20d80  3      
  movl %edi, %r12d                               #  2     0x20d83  3      
  pushq %rbx                                     #  3     0x20d86  2      
  movl %esi, %ebx                                #  4     0x20d88  2      
  subl $0x8, %esp                                #  5     0x20d8a  3      
  addq %r15, %rsp                                #  6     0x20d8d  3      
  nop                                            #  7     0x20d90  1      
  callq ._ZN2pp6Module3GetEv                     #  8     0x20d91  5      
  movl %r12d, %esi                               #  9     0x20d96  3      
  movl %eax, %edi                                #  10    0x20d99  2      
  nop                                            #  11    0x20d9b  1      
  nop                                            #  12    0x20d9c  1      
  callq ._ZN2pp6Module21InstanceForPPInstanceEi  #  13    0x20d9d  5      
  movl %eax, %eax                                #  14    0x20da2  2      
  testq %rax, %rax                               #  15    0x20da4  3      
  jne .L_20e20                                   #  16    0x20da7  6      
  nop                                            #  17    0x20dad  1      
  nop                                            #  18    0x20dae  1      
.L_20de0:                                        #        0x20daf  0      
  xorl %eax, %eax                                #  19    0x20daf  2      
  nop                                            #  20    0x20db1  1      
  nop                                            #  21    0x20db2  1      
.L_20e00:                                        #        0x20db3  0      
  addl $0x8, %esp                                #  22    0x20db3  3      
  addq %r15, %rsp                                #  23    0x20db6  3      
  popq %rbx                                      #  24    0x20db9  2      
  popq %r12                                      #  25    0x20dbb  3      
  popq %r11                                      #  26    0x20dbe  3      
  andl $0xffffffe0, %r11d                        #  27    0x20dc1  7      
  addq %r15, %r11                                #  28    0x20dc8  3      
  jmpq %r11                                      #  29    0x20dcb  3      
  nop                                            #  30    0x20dce  1      
.L_20e20:                                        #        0x20dcf  0      
  movl %eax, %eax                                #  31    0x20dcf  2      
  movl 0x10(%r15,%rax,1), %edx                   #  32    0x20dd1  5      
  leal 0xc(%rax), %r11d                          #  33    0x20dd6  4      
  movq %r11, %r10                                #  34    0x20dda  3      
  testq %rdx, %rdx                               #  35    0x20ddd  3      
  je .L_20f20                                    #  36    0x20de0  6      
  movl %ebx, %ebx                                #  37    0x20de6  2      
  movl (%r15,%rbx,1), %r9d                       #  38    0x20de8  4      
  nop                                            #  39    0x20dec  1      
  leal -0xc(%r9), %eax                           #  40    0x20ded  4      
  movl %eax, %eax                                #  41    0x20df1  2      
  movl (%r15,%rax,1), %r8d                       #  42    0x20df3  4      
  jmpq .L_20ea0                                  #  43    0x20df7  5      
  nop                                            #  44    0x20dfc  1      
  nop                                            #  45    0x20dfd  1      
.L_20e60:                                        #        0x20dfe  0      
  movl %edx, %edx                                #  46    0x20dfe  2      
  movl 0x8(%r15,%rdx,1), %eax                    #  47    0x20e00  5      
  movq %rdx, %r10                                #  48    0x20e05  3      
  testq %rax, %rax                               #  49    0x20e08  3      
  je .L_20f20                                    #  50    0x20e0b  6      
  nop                                            #  51    0x20e11  1      
.L_20e80:                                        #        0x20e12  0      
  movq %rax, %rdx                                #  52    0x20e12  3      
  nop                                            #  53    0x20e15  1      
  nop                                            #  54    0x20e16  1      
.L_20ea0:                                        #        0x20e17  0      
  movl %edx, %edx                                #  55    0x20e17  2      
  movl 0x10(%r15,%rdx,1), %esi                   #  56    0x20e19  5      
  movq %r9, %rdi                                 #  57    0x20e1e  3      
  leal -0xc(%rsi), %eax                          #  58    0x20e21  3      
  movl %eax, %eax                                #  59    0x20e24  2      
  movl (%r15,%rax,1), %eax                       #  60    0x20e26  4      
  cmpl %eax, %r8d                                #  61    0x20e2a  3      
  movl %eax, %ecx                                #  62    0x20e2d  2      
  cmovbel %r8d, %ecx                             #  63    0x20e2f  4      
  movl %ecx, %ecx                                #  64    0x20e33  2      
  xchgw %ax, %ax                                 #  65    0x20e35  3      
  cmpq %rcx, %rcx                                #  66    0x20e38  3      
  movl %esi, %esi                                #  67    0x20e3b  2      
  leaq (%r15,%rsi,1), %rsi                       #  68    0x20e3d  4      
  movl %edi, %edi                                #  69    0x20e41  2      
  leaq (%r15,%rdi,1), %rdi                       #  70    0x20e43  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)              #  71    0x20e47  3      
  movl %esi, %esi                                #  72    0x20e4a  2      
  movl %edi, %edi                                #  73    0x20e4c  2      
  seta %cl                                       #  74    0x20e4e  3      
  setb %sil                                      #  75    0x20e51  4      
  subl %r8d, %eax                                #  76    0x20e55  3      
  nop                                            #  77    0x20e58  1      
  subb %sil, %cl                                 #  78    0x20e59  3      
  movsbl %cl, %ecx                               #  79    0x20e5c  3      
  testl %ecx, %ecx                               #  80    0x20e5f  2      
  cmovel %eax, %ecx                              #  81    0x20e61  3      
  testl %ecx, %ecx                               #  82    0x20e64  2      
  jns .L_20e60                                   #  83    0x20e66  6      
  movl %edx, %edx                                #  84    0x20e6c  2      
  movl 0xc(%r15,%rdx,1), %eax                    #  85    0x20e6e  5      
  testq %rax, %rax                               #  86    0x20e73  3      
  nop                                            #  87    0x20e76  1      
  jne .L_20e80                                   #  88    0x20e77  6      
  nop                                            #  89    0x20e7d  1      
  nop                                            #  90    0x20e7e  1      
.L_20f20:                                        #        0x20e7f  0      
  cmpl %r10d, %r11d                              #  91    0x20e7f  3      
  je .L_20de0                                    #  92    0x20e82  6      
  movl %ebx, %ebx                                #  93    0x20e88  2      
  movl (%r15,%rbx,1), %esi                       #  94    0x20e8a  4      
  movl %r10d, %r10d                              #  95    0x20e8e  3      
  movl 0x10(%r15,%r10,1), %edi                   #  96    0x20e91  5      
  leal -0xc(%rsi), %eax                          #  97    0x20e96  3      
  movl %eax, %eax                                #  98    0x20e99  2      
  movl (%r15,%rax,1), %edx                       #  99    0x20e9b  4      
  leal -0xc(%rdi), %eax                          #  100   0x20e9f  3      
  movl %eax, %eax                                #  101   0x20ea2  2      
  movl (%r15,%rax,1), %eax                       #  102   0x20ea4  4      
  movl %edx, %ecx                                #  103   0x20ea8  2      
  cmpl %edx, %eax                                #  104   0x20eaa  2      
  cmovbel %eax, %ecx                             #  105   0x20eac  3      
  movl %ecx, %ecx                                #  106   0x20eaf  2      
  cmpq %rcx, %rcx                                #  107   0x20eb1  3      
  nop                                            #  108   0x20eb4  1      
  movl %esi, %esi                                #  109   0x20eb5  2      
  leaq (%r15,%rsi,1), %rsi                       #  110   0x20eb7  4      
  movl %edi, %edi                                #  111   0x20ebb  2      
  leaq (%r15,%rdi,1), %rdi                       #  112   0x20ebd  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)              #  113   0x20ec1  3      
  movl %esi, %esi                                #  114   0x20ec4  2      
  movl %edi, %edi                                #  115   0x20ec6  2      
  seta %cl                                       #  116   0x20ec8  3      
  setb %bl                                       #  117   0x20ecb  3      
  subl %eax, %edx                                #  118   0x20ece  2      
  subb %bl, %cl                                  #  119   0x20ed0  2      
  movsbl %cl, %ecx                               #  120   0x20ed2  3      
  nop                                            #  121   0x20ed5  1      
  testl %ecx, %ecx                               #  122   0x20ed6  2      
  cmovel %edx, %ecx                              #  123   0x20ed8  3      
  testl %ecx, %ecx                               #  124   0x20edb  2      
  js .L_20de0                                    #  125   0x20edd  6      
  movl %r10d, %r10d                              #  126   0x20ee3  3      
  movl 0x14(%r15,%r10,1), %eax                   #  127   0x20ee6  5      
  jmpq .L_20e00                                  #  128   0x20eeb  5      
  nop                                            #  129   0x20ef0  1      
                                                                          
.size _ZN2pp8Instance20GetPerInstanceObjectEiRKSs, .-_ZN2pp8Instance20GetPerInstanceObjectEiRKSs

