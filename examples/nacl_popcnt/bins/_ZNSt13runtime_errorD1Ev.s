  .text
  .globl _ZNSt13runtime_errorD1Ev
  .type _ZNSt13runtime_errorD1Ev, @function

#! file-offset 0x4eb20
#! rip-offset  0x4eb20
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD1Ev:               #        0x4eb20  0      
  pushq %rbx                             #  1     0x4eb20  2      
  movl %edi, %ebx                        #  2     0x4eb22  2      
  subl $0x10, %esp                       #  3     0x4eb24  3      
  addq %r15, %rsp                        #  4     0x4eb27  3      
  movl %ebx, %ebx                        #  5     0x4eb2a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4eb2c  5      
  movl %ebx, %ebx                        #  7     0x4eb31  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4eb33  8      
  subl $0xc, %edi                        #  9     0x4eb3b  3      
  nop                                    #  10    0x4eb3e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4eb3f  6      
  jne .L_4eba0                           #  12    0x4eb45  6      
  nop                                    #  13    0x4eb4b  1      
  nop                                    #  14    0x4eb4c  1      
.L_4eb60:                                #        0x4eb4d  0      
  movl %ebx, %edi                        #  15    0x4eb4d  2      
  nop                                    #  16    0x4eb4f  1      
  nop                                    #  17    0x4eb50  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4eb51  5      
  addl $0x10, %esp                       #  19    0x4eb56  3      
  addq %r15, %rsp                        #  20    0x4eb59  3      
  popq %rbx                              #  21    0x4eb5c  2      
  popq %r11                              #  22    0x4eb5e  3      
  andl $0xffffffe0, %r11d                #  23    0x4eb61  7      
  addq %r15, %r11                        #  24    0x4eb68  3      
  jmpq %r11                              #  25    0x4eb6b  3      
  nop                                    #  26    0x4eb6e  1      
.L_4eba0:                                #        0x4eb6f  0      
  movl %edi, %edi                        #  27    0x4eb6f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4eb71  5      
  leal -0x1(%rax), %edx                  #  29    0x4eb76  3      
  testl %eax, %eax                       #  30    0x4eb79  2      
  movl %edi, %edi                        #  31    0x4eb7b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4eb7d  5      
  jg .L_4eb60                            #  33    0x4eb82  6      
  leal 0xf(%rsp), %esi                   #  34    0x4eb88  4      
  xchgw %ax, %ax                         #  35    0x4eb8c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4eb8f  5      
  jmpq .L_4eb60                          #  37    0x4eb94  5      
  nop                                    #  38    0x4eb99  1      
  nop                                    #  39    0x4eb9a  1      
  nop                                    #  40    0x4eb9b  1      
  nop                                    #  41    0x4eb9c  1      
  nop                                    #  42    0x4eb9d  1      
  nop                                    #  43    0x4eb9e  1      
  nop                                    #  44    0x4eb9f  1      
  nop                                    #  45    0x4eba0  1      
  nop                                    #  46    0x4eba1  1      
  nop                                    #  47    0x4eba2  1      
  nop                                    #  48    0x4eba3  1      
  nop                                    #  49    0x4eba4  1      
  nop                                    #  50    0x4eba5  1      
  nop                                    #  51    0x4eba6  1      
  nop                                    #  52    0x4eba7  1      
  nop                                    #  53    0x4eba8  1      
  nop                                    #  54    0x4eba9  1      
  nop                                    #  55    0x4ebaa  1      
  nop                                    #  56    0x4ebab  1      
  nop                                    #  57    0x4ebac  1      
  nop                                    #  58    0x4ebad  1      
  nop                                    #  59    0x4ebae  1      
  nop                                    #  60    0x4ebaf  1      
  nop                                    #  61    0x4ebb0  1      
  nop                                    #  62    0x4ebb1  1      
  nop                                    #  63    0x4ebb2  1      
  nop                                    #  64    0x4ebb3  1      
  nop                                    #  65    0x4ebb4  1      
  nop                                    #  66    0x4ebb5  1      
  nop                                    #  67    0x4ebb6  1      
                                                                  
.size _ZNSt13runtime_errorD1Ev, .-_ZNSt13runtime_errorD1Ev

