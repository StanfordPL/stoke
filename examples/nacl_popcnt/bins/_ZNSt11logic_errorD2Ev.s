  .text
  .globl _ZNSt11logic_errorD2Ev
  .type _ZNSt11logic_errorD2Ev, @function

#! file-offset 0x4e3e0
#! rip-offset  0x4e3e0
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD2Ev:                 #        0x4e3e0  0      
  pushq %rbx                             #  1     0x4e3e0  2      
  movl %edi, %ebx                        #  2     0x4e3e2  2      
  subl $0x10, %esp                       #  3     0x4e3e4  3      
  addq %r15, %rsp                        #  4     0x4e3e7  3      
  movl %ebx, %ebx                        #  5     0x4e3ea  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e3ec  5      
  movl %ebx, %ebx                        #  7     0x4e3f1  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4e3f3  8      
  subl $0xc, %edi                        #  9     0x4e3fb  3      
  nop                                    #  10    0x4e3fe  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e3ff  6      
  jne .L_4e460                           #  12    0x4e405  6      
  nop                                    #  13    0x4e40b  1      
  nop                                    #  14    0x4e40c  1      
.L_4e420:                                #        0x4e40d  0      
  movl %ebx, %edi                        #  15    0x4e40d  2      
  nop                                    #  16    0x4e40f  1      
  nop                                    #  17    0x4e410  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e411  5      
  addl $0x10, %esp                       #  19    0x4e416  3      
  addq %r15, %rsp                        #  20    0x4e419  3      
  popq %rbx                              #  21    0x4e41c  2      
  popq %r11                              #  22    0x4e41e  3      
  andl $0xffffffe0, %r11d                #  23    0x4e421  7      
  addq %r15, %r11                        #  24    0x4e428  3      
  jmpq %r11                              #  25    0x4e42b  3      
  nop                                    #  26    0x4e42e  1      
.L_4e460:                                #        0x4e42f  0      
  movl %edi, %edi                        #  27    0x4e42f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e431  5      
  leal -0x1(%rax), %edx                  #  29    0x4e436  3      
  testl %eax, %eax                       #  30    0x4e439  2      
  movl %edi, %edi                        #  31    0x4e43b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e43d  5      
  jg .L_4e420                            #  33    0x4e442  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e448  4      
  xchgw %ax, %ax                         #  35    0x4e44c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e44f  5      
  jmpq .L_4e420                          #  37    0x4e454  5      
  nop                                    #  38    0x4e459  1      
  nop                                    #  39    0x4e45a  1      
  nop                                    #  40    0x4e45b  1      
  nop                                    #  41    0x4e45c  1      
  nop                                    #  42    0x4e45d  1      
  nop                                    #  43    0x4e45e  1      
  nop                                    #  44    0x4e45f  1      
  nop                                    #  45    0x4e460  1      
  nop                                    #  46    0x4e461  1      
  nop                                    #  47    0x4e462  1      
  nop                                    #  48    0x4e463  1      
  nop                                    #  49    0x4e464  1      
  nop                                    #  50    0x4e465  1      
  nop                                    #  51    0x4e466  1      
  nop                                    #  52    0x4e467  1      
  nop                                    #  53    0x4e468  1      
  nop                                    #  54    0x4e469  1      
  nop                                    #  55    0x4e46a  1      
  nop                                    #  56    0x4e46b  1      
  nop                                    #  57    0x4e46c  1      
  nop                                    #  58    0x4e46d  1      
  nop                                    #  59    0x4e46e  1      
  nop                                    #  60    0x4e46f  1      
  nop                                    #  61    0x4e470  1      
  nop                                    #  62    0x4e471  1      
  nop                                    #  63    0x4e472  1      
  nop                                    #  64    0x4e473  1      
  nop                                    #  65    0x4e474  1      
  nop                                    #  66    0x4e475  1      
  nop                                    #  67    0x4e476  1      
                                                                  
.size _ZNSt11logic_errorD2Ev, .-_ZNSt11logic_errorD2Ev

