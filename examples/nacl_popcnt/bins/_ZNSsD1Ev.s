  .text
  .globl _ZNSsD1Ev
  .type _ZNSsD1Ev, @function

#! file-offset 0x45c20
#! rip-offset  0x45c20
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSsD1Ev:                              #        0x45c20  0      
  movl %edi, %edi                        #  1     0x45c20  2      
  subl $0x18, %esp                       #  2     0x45c22  3      
  addq %r15, %rsp                        #  3     0x45c25  3      
  movl %edi, %edi                        #  4     0x45c28  2      
  movl (%r15,%rdi,1), %edi               #  5     0x45c2a  4      
  subl $0xc, %edi                        #  6     0x45c2e  3      
  cmpl $0x10031da0, %edi                 #  7     0x45c31  6      
  jne .L_45c60                           #  8     0x45c37  6      
  nop                                    #  9     0x45c3d  1      
.L_45c40:                                #        0x45c3e  0      
  addl $0x18, %esp                       #  10    0x45c3e  3      
  addq %r15, %rsp                        #  11    0x45c41  3      
  popq %r11                              #  12    0x45c44  3      
  andl $0xffffffe0, %r11d                #  13    0x45c47  7      
  addq %r15, %r11                        #  14    0x45c4e  3      
  jmpq %r11                              #  15    0x45c51  3      
  nop                                    #  16    0x45c54  1      
.L_45c60:                                #        0x45c55  0      
  movl %edi, %edi                        #  17    0x45c55  2      
  movl 0x8(%r15,%rdi,1), %eax            #  18    0x45c57  5      
  leal -0x1(%rax), %edx                  #  19    0x45c5c  3      
  testl %eax, %eax                       #  20    0x45c5f  2      
  movl %edi, %edi                        #  21    0x45c61  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  22    0x45c63  5      
  jg .L_45c40                            #  23    0x45c68  6      
  leal 0xf(%rsp), %esi                   #  24    0x45c6e  4      
  xchgw %ax, %ax                         #  25    0x45c72  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  26    0x45c75  5      
  jmpq .L_45c40                          #  27    0x45c7a  5      
  nop                                    #  28    0x45c7f  1      
  nop                                    #  29    0x45c80  1      
  nop                                    #  30    0x45c81  1      
  nop                                    #  31    0x45c82  1      
  nop                                    #  32    0x45c83  1      
  nop                                    #  33    0x45c84  1      
  nop                                    #  34    0x45c85  1      
  nop                                    #  35    0x45c86  1      
  nop                                    #  36    0x45c87  1      
  nop                                    #  37    0x45c88  1      
  nop                                    #  38    0x45c89  1      
  nop                                    #  39    0x45c8a  1      
  nop                                    #  40    0x45c8b  1      
  nop                                    #  41    0x45c8c  1      
  nop                                    #  42    0x45c8d  1      
  nop                                    #  43    0x45c8e  1      
  nop                                    #  44    0x45c8f  1      
  nop                                    #  45    0x45c90  1      
  nop                                    #  46    0x45c91  1      
  nop                                    #  47    0x45c92  1      
  nop                                    #  48    0x45c93  1      
  nop                                    #  49    0x45c94  1      
  nop                                    #  50    0x45c95  1      
  nop                                    #  51    0x45c96  1      
  nop                                    #  52    0x45c97  1      
  nop                                    #  53    0x45c98  1      
  nop                                    #  54    0x45c99  1      
  nop                                    #  55    0x45c9a  1      
  nop                                    #  56    0x45c9b  1      
  nop                                    #  57    0x45c9c  1      
                                                                  
.size _ZNSsD1Ev, .-_ZNSsD1Ev

