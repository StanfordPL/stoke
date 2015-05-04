  .text
  .globl _ZNKSs5rfindEPKcjj
  .type _ZNKSs5rfindEPKcjj, @function

#! file-offset 0x45480
#! rip-offset  0x45480
#! capacity    224 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs5rfindEPKcjj:                 #        0x45480  0      
  movl %edi, %edi                    #  1     0x45480  2      
  movl %esi, %r9d                    #  2     0x45482  3      
  movl %edi, %edi                    #  3     0x45485  2      
  movl (%r15,%rdi,1), %r8d           #  4     0x45487  4      
  leal -0xc(%r8), %eax               #  5     0x4548b  4      
  movl %eax, %eax                    #  6     0x4548f  2      
  movl (%r15,%rax,1), %eax           #  7     0x45491  4      
  cmpl %eax, %ecx                    #  8     0x45495  2      
  ja .L_45520                        #  9     0x45497  6      
  subl %ecx, %eax                    #  10    0x4549d  2      
  nop                                #  11    0x4549f  1      
  cmpl %edx, %eax                    #  12    0x454a0  2      
  cmoval %edx, %eax                  #  13    0x454a2  3      
  movl %ecx, %edx                    #  14    0x454a5  2      
  leal (%rax,%r8,1), %r8d            #  15    0x454a7  4      
  jmpq .L_454e0                      #  16    0x454ab  5      
  nop                                #  17    0x454b0  1      
  nop                                #  18    0x454b1  1      
.L_454c0:                            #        0x454b2  0      
  subl $0x1, %eax                    #  19    0x454b2  3      
  nop                                #  20    0x454b5  1      
  nop                                #  21    0x454b6  1      
.L_454e0:                            #        0x454b7  0      
  movl %r8d, %esi                    #  22    0x454b7  3      
  cmpq %rdx, %rdx                    #  23    0x454ba  3      
  movq %r9, %rdi                     #  24    0x454bd  3      
  movq %rdx, %rcx                    #  25    0x454c0  3      
  movl %esi, %esi                    #  26    0x454c3  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x454c5  4      
  movl %edi, %edi                    #  28    0x454c9  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x454cb  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x454cf  3      
  movl %esi, %esi                    #  31    0x454d2  2      
  movl %edi, %edi                    #  32    0x454d4  2      
  xchgw %ax, %ax                     #  33    0x454d6  3      
  je .L_45540                        #  34    0x454d9  6      
  subl $0x1, %r8d                    #  35    0x454df  4      
  testl %eax, %eax                   #  36    0x454e3  2      
  jne .L_454c0                       #  37    0x454e5  6      
  nop                                #  38    0x454eb  1      
  nop                                #  39    0x454ec  1      
.L_45520:                            #        0x454ed  0      
  movl $0xffffffff, %eax             #  40    0x454ed  5      
  nop                                #  41    0x454f2  1      
  nop                                #  42    0x454f3  1      
.L_45540:                            #        0x454f4  0      
  popq %r11                          #  43    0x454f4  3      
  andl $0xffffffe0, %r11d            #  44    0x454f7  7      
  addq %r15, %r11                    #  45    0x454fe  3      
  jmpq %r11                          #  46    0x45501  3      
  nop                                #  47    0x45504  1      
  nop                                #  48    0x45505  1      
  nop                                #  49    0x45506  1      
  nop                                #  50    0x45507  1      
  nop                                #  51    0x45508  1      
  nop                                #  52    0x45509  1      
  nop                                #  53    0x4550a  1      
  nop                                #  54    0x4550b  1      
  nop                                #  55    0x4550c  1      
  nop                                #  56    0x4550d  1      
  nop                                #  57    0x4550e  1      
  nop                                #  58    0x4550f  1      
  nop                                #  59    0x45510  1      
  nop                                #  60    0x45511  1      
  nop                                #  61    0x45512  1      
  nop                                #  62    0x45513  1      
  nop                                #  63    0x45514  1      
  nop                                #  64    0x45515  1      
  nop                                #  65    0x45516  1      
  nop                                #  66    0x45517  1      
                                                              
.size _ZNKSs5rfindEPKcjj, .-_ZNKSs5rfindEPKcjj

