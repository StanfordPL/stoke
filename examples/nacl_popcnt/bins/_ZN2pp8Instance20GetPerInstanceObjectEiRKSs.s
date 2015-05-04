  .text
  .globl _ZN2pp8Instance20GetPerInstanceObjectEiRKSs
  .type _ZN2pp8Instance20GetPerInstanceObjectEiRKSs, @function

#! file-offset 0x20e00
#! rip-offset  0x20e00
#! capacity    544 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance20GetPerInstanceObjectEiRKSs:    #        0x20e00  0      
  pushq %r12                                     #  1     0x20e00  3      
  movl %edi, %r12d                               #  2     0x20e03  3      
  pushq %rbx                                     #  3     0x20e06  2      
  movl %esi, %ebx                                #  4     0x20e08  2      
  subl $0x8, %esp                                #  5     0x20e0a  3      
  addq %r15, %rsp                                #  6     0x20e0d  3      
  nop                                            #  7     0x20e10  1      
  callq ._ZN2pp6Module3GetEv                     #  8     0x20e11  5      
  movl %r12d, %esi                               #  9     0x20e16  3      
  movl %eax, %edi                                #  10    0x20e19  2      
  nop                                            #  11    0x20e1b  1      
  nop                                            #  12    0x20e1c  1      
  callq ._ZN2pp6Module21InstanceForPPInstanceEi  #  13    0x20e1d  5      
  movl %eax, %eax                                #  14    0x20e22  2      
  testq %rax, %rax                               #  15    0x20e24  3      
  jne .L_20ea0                                   #  16    0x20e27  6      
  nop                                            #  17    0x20e2d  1      
  nop                                            #  18    0x20e2e  1      
.L_20e60:                                        #        0x20e2f  0      
  xorl %eax, %eax                                #  19    0x20e2f  2      
  nop                                            #  20    0x20e31  1      
  nop                                            #  21    0x20e32  1      
.L_20e80:                                        #        0x20e33  0      
  addl $0x8, %esp                                #  22    0x20e33  3      
  addq %r15, %rsp                                #  23    0x20e36  3      
  popq %rbx                                      #  24    0x20e39  2      
  popq %r12                                      #  25    0x20e3b  3      
  popq %r11                                      #  26    0x20e3e  3      
  andl $0xffffffe0, %r11d                        #  27    0x20e41  7      
  addq %r15, %r11                                #  28    0x20e48  3      
  jmpq %r11                                      #  29    0x20e4b  3      
  nop                                            #  30    0x20e4e  1      
.L_20ea0:                                        #        0x20e4f  0      
  movl %eax, %eax                                #  31    0x20e4f  2      
  movl 0x10(%r15,%rax,1), %edx                   #  32    0x20e51  5      
  leal 0xc(%rax), %r11d                          #  33    0x20e56  4      
  movq %r11, %r10                                #  34    0x20e5a  3      
  testq %rdx, %rdx                               #  35    0x20e5d  3      
  je .L_20fa0                                    #  36    0x20e60  6      
  movl %ebx, %ebx                                #  37    0x20e66  2      
  movl (%r15,%rbx,1), %r9d                       #  38    0x20e68  4      
  nop                                            #  39    0x20e6c  1      
  leal -0xc(%r9), %eax                           #  40    0x20e6d  4      
  movl %eax, %eax                                #  41    0x20e71  2      
  movl (%r15,%rax,1), %r8d                       #  42    0x20e73  4      
  jmpq .L_20f20                                  #  43    0x20e77  5      
  nop                                            #  44    0x20e7c  1      
  nop                                            #  45    0x20e7d  1      
.L_20ee0:                                        #        0x20e7e  0      
  movl %edx, %edx                                #  46    0x20e7e  2      
  movl 0x8(%r15,%rdx,1), %eax                    #  47    0x20e80  5      
  movq %rdx, %r10                                #  48    0x20e85  3      
  testq %rax, %rax                               #  49    0x20e88  3      
  je .L_20fa0                                    #  50    0x20e8b  6      
  nop                                            #  51    0x20e91  1      
.L_20f00:                                        #        0x20e92  0      
  movq %rax, %rdx                                #  52    0x20e92  3      
  nop                                            #  53    0x20e95  1      
  nop                                            #  54    0x20e96  1      
.L_20f20:                                        #        0x20e97  0      
  movl %edx, %edx                                #  55    0x20e97  2      
  movl 0x10(%r15,%rdx,1), %esi                   #  56    0x20e99  5      
  movq %r9, %rdi                                 #  57    0x20e9e  3      
  leal -0xc(%rsi), %eax                          #  58    0x20ea1  3      
  movl %eax, %eax                                #  59    0x20ea4  2      
  movl (%r15,%rax,1), %eax                       #  60    0x20ea6  4      
  cmpl %eax, %r8d                                #  61    0x20eaa  3      
  movl %eax, %ecx                                #  62    0x20ead  2      
  cmovbel %r8d, %ecx                             #  63    0x20eaf  4      
  movl %ecx, %ecx                                #  64    0x20eb3  2      
  xchgw %ax, %ax                                 #  65    0x20eb5  3      
  cmpq %rcx, %rcx                                #  66    0x20eb8  3      
  movl %esi, %esi                                #  67    0x20ebb  2      
  leaq (%r15,%rsi,1), %rsi                       #  68    0x20ebd  4      
  movl %edi, %edi                                #  69    0x20ec1  2      
  leaq (%r15,%rdi,1), %rdi                       #  70    0x20ec3  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)              #  71    0x20ec7  3      
  movl %esi, %esi                                #  72    0x20eca  2      
  movl %edi, %edi                                #  73    0x20ecc  2      
  seta %cl                                       #  74    0x20ece  3      
  setb %sil                                      #  75    0x20ed1  4      
  subl %r8d, %eax                                #  76    0x20ed5  3      
  nop                                            #  77    0x20ed8  1      
  subb %sil, %cl                                 #  78    0x20ed9  3      
  movsbl %cl, %ecx                               #  79    0x20edc  3      
  testl %ecx, %ecx                               #  80    0x20edf  2      
  cmovel %eax, %ecx                              #  81    0x20ee1  3      
  testl %ecx, %ecx                               #  82    0x20ee4  2      
  jns .L_20ee0                                   #  83    0x20ee6  6      
  movl %edx, %edx                                #  84    0x20eec  2      
  movl 0xc(%r15,%rdx,1), %eax                    #  85    0x20eee  5      
  testq %rax, %rax                               #  86    0x20ef3  3      
  nop                                            #  87    0x20ef6  1      
  jne .L_20f00                                   #  88    0x20ef7  6      
  nop                                            #  89    0x20efd  1      
  nop                                            #  90    0x20efe  1      
.L_20fa0:                                        #        0x20eff  0      
  cmpl %r10d, %r11d                              #  91    0x20eff  3      
  je .L_20e60                                    #  92    0x20f02  6      
  movl %ebx, %ebx                                #  93    0x20f08  2      
  movl (%r15,%rbx,1), %esi                       #  94    0x20f0a  4      
  movl %r10d, %r10d                              #  95    0x20f0e  3      
  movl 0x10(%r15,%r10,1), %edi                   #  96    0x20f11  5      
  leal -0xc(%rsi), %eax                          #  97    0x20f16  3      
  movl %eax, %eax                                #  98    0x20f19  2      
  movl (%r15,%rax,1), %edx                       #  99    0x20f1b  4      
  leal -0xc(%rdi), %eax                          #  100   0x20f1f  3      
  movl %eax, %eax                                #  101   0x20f22  2      
  movl (%r15,%rax,1), %eax                       #  102   0x20f24  4      
  movl %edx, %ecx                                #  103   0x20f28  2      
  cmpl %edx, %eax                                #  104   0x20f2a  2      
  cmovbel %eax, %ecx                             #  105   0x20f2c  3      
  movl %ecx, %ecx                                #  106   0x20f2f  2      
  cmpq %rcx, %rcx                                #  107   0x20f31  3      
  nop                                            #  108   0x20f34  1      
  movl %esi, %esi                                #  109   0x20f35  2      
  leaq (%r15,%rsi,1), %rsi                       #  110   0x20f37  4      
  movl %edi, %edi                                #  111   0x20f3b  2      
  leaq (%r15,%rdi,1), %rdi                       #  112   0x20f3d  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)              #  113   0x20f41  3      
  movl %esi, %esi                                #  114   0x20f44  2      
  movl %edi, %edi                                #  115   0x20f46  2      
  seta %cl                                       #  116   0x20f48  3      
  setb %bl                                       #  117   0x20f4b  3      
  subl %eax, %edx                                #  118   0x20f4e  2      
  subb %bl, %cl                                  #  119   0x20f50  2      
  movsbl %cl, %ecx                               #  120   0x20f52  3      
  nop                                            #  121   0x20f55  1      
  testl %ecx, %ecx                               #  122   0x20f56  2      
  cmovel %edx, %ecx                              #  123   0x20f58  3      
  testl %ecx, %ecx                               #  124   0x20f5b  2      
  js .L_20e60                                    #  125   0x20f5d  6      
  movl %r10d, %r10d                              #  126   0x20f63  3      
  movl 0x14(%r15,%r10,1), %eax                   #  127   0x20f66  5      
  jmpq .L_20e80                                  #  128   0x20f6b  5      
  nop                                            #  129   0x20f70  1      
                                                                          
.size _ZN2pp8Instance20GetPerInstanceObjectEiRKSs, .-_ZN2pp8Instance20GetPerInstanceObjectEiRKSs

