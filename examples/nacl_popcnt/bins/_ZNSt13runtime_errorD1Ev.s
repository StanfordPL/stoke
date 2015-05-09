  .text
  .globl _ZNSt13runtime_errorD1Ev
  .type _ZNSt13runtime_errorD1Ev, @function

#! file-offset 0x4eb00
#! rip-offset  0x4eb00
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD1Ev:               #        0x4eb00  0      
  pushq %rbx                             #  1     0x4eb00  2      
  movl %edi, %ebx                        #  2     0x4eb02  2      
  subl $0x10, %esp                       #  3     0x4eb04  3      
  addq %r15, %rsp                        #  4     0x4eb07  3      
  movl %ebx, %ebx                        #  5     0x4eb0a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4eb0c  5      
  movl %ebx, %ebx                        #  7     0x4eb11  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4eb13  8      
  subl $0xc, %edi                        #  9     0x4eb1b  3      
  nop                                    #  10    0x4eb1e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4eb1f  6      
  jne .L_4eb80                           #  12    0x4eb25  6      
  nop                                    #  13    0x4eb2b  1      
  nop                                    #  14    0x4eb2c  1      
.L_4eb40:                                #        0x4eb2d  0      
  movl %ebx, %edi                        #  15    0x4eb2d  2      
  nop                                    #  16    0x4eb2f  1      
  nop                                    #  17    0x4eb30  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4eb31  5      
  addl $0x10, %esp                       #  19    0x4eb36  3      
  addq %r15, %rsp                        #  20    0x4eb39  3      
  popq %rbx                              #  21    0x4eb3c  2      
  popq %r11                              #  22    0x4eb3e  3      
  andl $0xffffffe0, %r11d                #  23    0x4eb41  7      
  addq %r15, %r11                        #  24    0x4eb48  3      
  jmpq %r11                              #  25    0x4eb4b  3      
  nop                                    #  26    0x4eb4e  1      
.L_4eb80:                                #        0x4eb4f  0      
  movl %edi, %edi                        #  27    0x4eb4f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4eb51  5      
  leal -0x1(%rax), %edx                  #  29    0x4eb56  3      
  testl %eax, %eax                       #  30    0x4eb59  2      
  movl %edi, %edi                        #  31    0x4eb5b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4eb5d  5      
  jg .L_4eb40                            #  33    0x4eb62  6      
  leal 0xf(%rsp), %esi                   #  34    0x4eb68  4      
  xchgw %ax, %ax                         #  35    0x4eb6c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4eb6f  5      
  jmpq .L_4eb40                          #  37    0x4eb74  5      
  nop                                    #  38    0x4eb79  1      
  nop                                    #  39    0x4eb7a  1      
  nop                                    #  40    0x4eb7b  1      
  nop                                    #  41    0x4eb7c  1      
  nop                                    #  42    0x4eb7d  1      
  nop                                    #  43    0x4eb7e  1      
  nop                                    #  44    0x4eb7f  1      
  nop                                    #  45    0x4eb80  1      
  nop                                    #  46    0x4eb81  1      
  nop                                    #  47    0x4eb82  1      
  nop                                    #  48    0x4eb83  1      
  nop                                    #  49    0x4eb84  1      
  nop                                    #  50    0x4eb85  1      
  nop                                    #  51    0x4eb86  1      
  nop                                    #  52    0x4eb87  1      
  nop                                    #  53    0x4eb88  1      
  nop                                    #  54    0x4eb89  1      
  nop                                    #  55    0x4eb8a  1      
  nop                                    #  56    0x4eb8b  1      
  nop                                    #  57    0x4eb8c  1      
  nop                                    #  58    0x4eb8d  1      
  nop                                    #  59    0x4eb8e  1      
  nop                                    #  60    0x4eb8f  1      
  nop                                    #  61    0x4eb90  1      
  nop                                    #  62    0x4eb91  1      
  nop                                    #  63    0x4eb92  1      
  nop                                    #  64    0x4eb93  1      
  nop                                    #  65    0x4eb94  1      
  nop                                    #  66    0x4eb95  1      
  nop                                    #  67    0x4eb96  1      
                                                                  
.size _ZNSt13runtime_errorD1Ev, .-_ZNSt13runtime_errorD1Ev

