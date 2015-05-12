  .text
  .globl _ZNSt8ios_base7failureD2Ev
  .type _ZNSt8ios_base7failureD2Ev, @function

#! file-offset 0x4e300
#! rip-offset  0x4e300
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD2Ev:             #        0x4e300  0      
  pushq %rbx                             #  1     0x4e300  2      
  movl %edi, %ebx                        #  2     0x4e302  2      
  subl $0x10, %esp                       #  3     0x4e304  3      
  addq %r15, %rsp                        #  4     0x4e307  3      
  movl %ebx, %ebx                        #  5     0x4e30a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e30c  5      
  movl %ebx, %ebx                        #  7     0x4e311  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e313  8      
  subl $0xc, %edi                        #  9     0x4e31b  3      
  nop                                    #  10    0x4e31e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e31f  6      
  jne .L_4e380                           #  12    0x4e325  6      
  nop                                    #  13    0x4e32b  1      
  nop                                    #  14    0x4e32c  1      
.L_4e340:                                #        0x4e32d  0      
  movl %ebx, %edi                        #  15    0x4e32d  2      
  nop                                    #  16    0x4e32f  1      
  nop                                    #  17    0x4e330  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e331  5      
  addl $0x10, %esp                       #  19    0x4e336  3      
  addq %r15, %rsp                        #  20    0x4e339  3      
  popq %rbx                              #  21    0x4e33c  2      
  popq %r11                              #  22    0x4e33e  3      
  andl $0xffffffe0, %r11d                #  23    0x4e341  7      
  addq %r15, %r11                        #  24    0x4e348  3      
  jmpq %r11                              #  25    0x4e34b  3      
  nop                                    #  26    0x4e34e  1      
.L_4e380:                                #        0x4e34f  0      
  movl %edi, %edi                        #  27    0x4e34f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e351  5      
  leal -0x1(%rax), %edx                  #  29    0x4e356  3      
  testl %eax, %eax                       #  30    0x4e359  2      
  movl %edi, %edi                        #  31    0x4e35b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e35d  5      
  jg .L_4e340                            #  33    0x4e362  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e368  4      
  xchgw %ax, %ax                         #  35    0x4e36c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e36f  5      
  jmpq .L_4e340                          #  37    0x4e374  5      
  nop                                    #  38    0x4e379  1      
  nop                                    #  39    0x4e37a  1      
  nop                                    #  40    0x4e37b  1      
  nop                                    #  41    0x4e37c  1      
  nop                                    #  42    0x4e37d  1      
  nop                                    #  43    0x4e37e  1      
  nop                                    #  44    0x4e37f  1      
  nop                                    #  45    0x4e380  1      
  nop                                    #  46    0x4e381  1      
  nop                                    #  47    0x4e382  1      
  nop                                    #  48    0x4e383  1      
  nop                                    #  49    0x4e384  1      
  nop                                    #  50    0x4e385  1      
  nop                                    #  51    0x4e386  1      
  nop                                    #  52    0x4e387  1      
  nop                                    #  53    0x4e388  1      
  nop                                    #  54    0x4e389  1      
  nop                                    #  55    0x4e38a  1      
  nop                                    #  56    0x4e38b  1      
  nop                                    #  57    0x4e38c  1      
  nop                                    #  58    0x4e38d  1      
  nop                                    #  59    0x4e38e  1      
  nop                                    #  60    0x4e38f  1      
  nop                                    #  61    0x4e390  1      
  nop                                    #  62    0x4e391  1      
  nop                                    #  63    0x4e392  1      
  nop                                    #  64    0x4e393  1      
  nop                                    #  65    0x4e394  1      
  nop                                    #  66    0x4e395  1      
  nop                                    #  67    0x4e396  1      
                                                                  
.size _ZNSt8ios_base7failureD2Ev, .-_ZNSt8ios_base7failureD2Ev

