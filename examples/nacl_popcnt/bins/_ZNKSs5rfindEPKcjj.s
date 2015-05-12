  .text
  .globl _ZNKSs5rfindEPKcjj
  .type _ZNKSs5rfindEPKcjj, @function

#! file-offset 0x45400
#! rip-offset  0x45400
#! capacity    224 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs5rfindEPKcjj:                 #        0x45400  0      
  movl %edi, %edi                    #  1     0x45400  2      
  movl %esi, %r9d                    #  2     0x45402  3      
  movl %edi, %edi                    #  3     0x45405  2      
  movl (%r15,%rdi,1), %r8d           #  4     0x45407  4      
  leal -0xc(%r8), %eax               #  5     0x4540b  4      
  movl %eax, %eax                    #  6     0x4540f  2      
  movl (%r15,%rax,1), %eax           #  7     0x45411  4      
  cmpl %eax, %ecx                    #  8     0x45415  2      
  ja .L_454a0                        #  9     0x45417  6      
  subl %ecx, %eax                    #  10    0x4541d  2      
  nop                                #  11    0x4541f  1      
  cmpl %edx, %eax                    #  12    0x45420  2      
  cmoval %edx, %eax                  #  13    0x45422  3      
  movl %ecx, %edx                    #  14    0x45425  2      
  leal (%rax,%r8,1), %r8d            #  15    0x45427  4      
  jmpq .L_45460                      #  16    0x4542b  5      
  nop                                #  17    0x45430  1      
  nop                                #  18    0x45431  1      
.L_45440:                            #        0x45432  0      
  subl $0x1, %eax                    #  19    0x45432  3      
  nop                                #  20    0x45435  1      
  nop                                #  21    0x45436  1      
.L_45460:                            #        0x45437  0      
  movl %r8d, %esi                    #  22    0x45437  3      
  cmpq %rdx, %rdx                    #  23    0x4543a  3      
  movq %r9, %rdi                     #  24    0x4543d  3      
  movq %rdx, %rcx                    #  25    0x45440  3      
  movl %esi, %esi                    #  26    0x45443  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x45445  4      
  movl %edi, %edi                    #  28    0x45449  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x4544b  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x4544f  3      
  movl %esi, %esi                    #  31    0x45452  2      
  movl %edi, %edi                    #  32    0x45454  2      
  xchgw %ax, %ax                     #  33    0x45456  3      
  je .L_454c0                        #  34    0x45459  6      
  subl $0x1, %r8d                    #  35    0x4545f  4      
  testl %eax, %eax                   #  36    0x45463  2      
  jne .L_45440                       #  37    0x45465  6      
  nop                                #  38    0x4546b  1      
  nop                                #  39    0x4546c  1      
.L_454a0:                            #        0x4546d  0      
  movl $0xffffffff, %eax             #  40    0x4546d  5      
  nop                                #  41    0x45472  1      
  nop                                #  42    0x45473  1      
.L_454c0:                            #        0x45474  0      
  popq %r11                          #  43    0x45474  3      
  andl $0xffffffe0, %r11d            #  44    0x45477  7      
  addq %r15, %r11                    #  45    0x4547e  3      
  jmpq %r11                          #  46    0x45481  3      
  nop                                #  47    0x45484  1      
  nop                                #  48    0x45485  1      
  nop                                #  49    0x45486  1      
  nop                                #  50    0x45487  1      
  nop                                #  51    0x45488  1      
  nop                                #  52    0x45489  1      
  nop                                #  53    0x4548a  1      
  nop                                #  54    0x4548b  1      
  nop                                #  55    0x4548c  1      
  nop                                #  56    0x4548d  1      
  nop                                #  57    0x4548e  1      
  nop                                #  58    0x4548f  1      
  nop                                #  59    0x45490  1      
  nop                                #  60    0x45491  1      
  nop                                #  61    0x45492  1      
  nop                                #  62    0x45493  1      
  nop                                #  63    0x45494  1      
  nop                                #  64    0x45495  1      
  nop                                #  65    0x45496  1      
  nop                                #  66    0x45497  1      
                                                              
.size _ZNKSs5rfindEPKcjj, .-_ZNKSs5rfindEPKcjj

