  .text
  .globl _ZNSt11logic_errorD2Ev
  .type _ZNSt11logic_errorD2Ev, @function

#! file-offset 0x4e400
#! rip-offset  0x4e400
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD2Ev:                 #        0x4e400  0      
  pushq %rbx                             #  1     0x4e400  2      
  movl %edi, %ebx                        #  2     0x4e402  2      
  subl $0x10, %esp                       #  3     0x4e404  3      
  addq %r15, %rsp                        #  4     0x4e407  3      
  movl %ebx, %ebx                        #  5     0x4e40a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e40c  5      
  movl %ebx, %ebx                        #  7     0x4e411  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4e413  8      
  subl $0xc, %edi                        #  9     0x4e41b  3      
  nop                                    #  10    0x4e41e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e41f  6      
  jne .L_4e480                           #  12    0x4e425  6      
  nop                                    #  13    0x4e42b  1      
  nop                                    #  14    0x4e42c  1      
.L_4e440:                                #        0x4e42d  0      
  movl %ebx, %edi                        #  15    0x4e42d  2      
  nop                                    #  16    0x4e42f  1      
  nop                                    #  17    0x4e430  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e431  5      
  addl $0x10, %esp                       #  19    0x4e436  3      
  addq %r15, %rsp                        #  20    0x4e439  3      
  popq %rbx                              #  21    0x4e43c  2      
  popq %r11                              #  22    0x4e43e  3      
  andl $0xffffffe0, %r11d                #  23    0x4e441  7      
  addq %r15, %r11                        #  24    0x4e448  3      
  jmpq %r11                              #  25    0x4e44b  3      
  nop                                    #  26    0x4e44e  1      
.L_4e480:                                #        0x4e44f  0      
  movl %edi, %edi                        #  27    0x4e44f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e451  5      
  leal -0x1(%rax), %edx                  #  29    0x4e456  3      
  testl %eax, %eax                       #  30    0x4e459  2      
  movl %edi, %edi                        #  31    0x4e45b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e45d  5      
  jg .L_4e440                            #  33    0x4e462  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e468  4      
  xchgw %ax, %ax                         #  35    0x4e46c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e46f  5      
  jmpq .L_4e440                          #  37    0x4e474  5      
  nop                                    #  38    0x4e479  1      
  nop                                    #  39    0x4e47a  1      
  nop                                    #  40    0x4e47b  1      
  nop                                    #  41    0x4e47c  1      
  nop                                    #  42    0x4e47d  1      
  nop                                    #  43    0x4e47e  1      
  nop                                    #  44    0x4e47f  1      
  nop                                    #  45    0x4e480  1      
  nop                                    #  46    0x4e481  1      
  nop                                    #  47    0x4e482  1      
  nop                                    #  48    0x4e483  1      
  nop                                    #  49    0x4e484  1      
  nop                                    #  50    0x4e485  1      
  nop                                    #  51    0x4e486  1      
  nop                                    #  52    0x4e487  1      
  nop                                    #  53    0x4e488  1      
  nop                                    #  54    0x4e489  1      
  nop                                    #  55    0x4e48a  1      
  nop                                    #  56    0x4e48b  1      
  nop                                    #  57    0x4e48c  1      
  nop                                    #  58    0x4e48d  1      
  nop                                    #  59    0x4e48e  1      
  nop                                    #  60    0x4e48f  1      
  nop                                    #  61    0x4e490  1      
  nop                                    #  62    0x4e491  1      
  nop                                    #  63    0x4e492  1      
  nop                                    #  64    0x4e493  1      
  nop                                    #  65    0x4e494  1      
  nop                                    #  66    0x4e495  1      
  nop                                    #  67    0x4e496  1      
                                                                  
.size _ZNSt11logic_errorD2Ev, .-_ZNSt11logic_errorD2Ev

