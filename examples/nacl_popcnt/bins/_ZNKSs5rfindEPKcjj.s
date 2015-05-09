  .text
  .globl _ZNKSs5rfindEPKcjj
  .type _ZNKSs5rfindEPKcjj, @function

#! file-offset 0x453e0
#! rip-offset  0x453e0
#! capacity    224 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs5rfindEPKcjj:                 #        0x453e0  0      
  movl %edi, %edi                    #  1     0x453e0  2      
  movl %esi, %r9d                    #  2     0x453e2  3      
  movl %edi, %edi                    #  3     0x453e5  2      
  movl (%r15,%rdi,1), %r8d           #  4     0x453e7  4      
  leal -0xc(%r8), %eax               #  5     0x453eb  4      
  movl %eax, %eax                    #  6     0x453ef  2      
  movl (%r15,%rax,1), %eax           #  7     0x453f1  4      
  cmpl %eax, %ecx                    #  8     0x453f5  2      
  ja .L_45480                        #  9     0x453f7  6      
  subl %ecx, %eax                    #  10    0x453fd  2      
  nop                                #  11    0x453ff  1      
  cmpl %edx, %eax                    #  12    0x45400  2      
  cmoval %edx, %eax                  #  13    0x45402  3      
  movl %ecx, %edx                    #  14    0x45405  2      
  leal (%rax,%r8,1), %r8d            #  15    0x45407  4      
  jmpq .L_45440                      #  16    0x4540b  5      
  nop                                #  17    0x45410  1      
  nop                                #  18    0x45411  1      
.L_45420:                            #        0x45412  0      
  subl $0x1, %eax                    #  19    0x45412  3      
  nop                                #  20    0x45415  1      
  nop                                #  21    0x45416  1      
.L_45440:                            #        0x45417  0      
  movl %r8d, %esi                    #  22    0x45417  3      
  cmpq %rdx, %rdx                    #  23    0x4541a  3      
  movq %r9, %rdi                     #  24    0x4541d  3      
  movq %rdx, %rcx                    #  25    0x45420  3      
  movl %esi, %esi                    #  26    0x45423  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x45425  4      
  movl %edi, %edi                    #  28    0x45429  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x4542b  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x4542f  3      
  movl %esi, %esi                    #  31    0x45432  2      
  movl %edi, %edi                    #  32    0x45434  2      
  xchgw %ax, %ax                     #  33    0x45436  3      
  je .L_454a0                        #  34    0x45439  6      
  subl $0x1, %r8d                    #  35    0x4543f  4      
  testl %eax, %eax                   #  36    0x45443  2      
  jne .L_45420                       #  37    0x45445  6      
  nop                                #  38    0x4544b  1      
  nop                                #  39    0x4544c  1      
.L_45480:                            #        0x4544d  0      
  movl $0xffffffff, %eax             #  40    0x4544d  5      
  nop                                #  41    0x45452  1      
  nop                                #  42    0x45453  1      
.L_454a0:                            #        0x45454  0      
  popq %r11                          #  43    0x45454  3      
  andl $0xffffffe0, %r11d            #  44    0x45457  7      
  addq %r15, %r11                    #  45    0x4545e  3      
  jmpq %r11                          #  46    0x45461  3      
  nop                                #  47    0x45464  1      
  nop                                #  48    0x45465  1      
  nop                                #  49    0x45466  1      
  nop                                #  50    0x45467  1      
  nop                                #  51    0x45468  1      
  nop                                #  52    0x45469  1      
  nop                                #  53    0x4546a  1      
  nop                                #  54    0x4546b  1      
  nop                                #  55    0x4546c  1      
  nop                                #  56    0x4546d  1      
  nop                                #  57    0x4546e  1      
  nop                                #  58    0x4546f  1      
  nop                                #  59    0x45470  1      
  nop                                #  60    0x45471  1      
  nop                                #  61    0x45472  1      
  nop                                #  62    0x45473  1      
  nop                                #  63    0x45474  1      
  nop                                #  64    0x45475  1      
  nop                                #  65    0x45476  1      
  nop                                #  66    0x45477  1      
                                                              
.size _ZNKSs5rfindEPKcjj, .-_ZNKSs5rfindEPKcjj

