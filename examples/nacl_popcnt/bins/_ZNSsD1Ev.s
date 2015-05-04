  .text
  .globl _ZNSsD1Ev
  .type _ZNSsD1Ev, @function

#! file-offset 0x45cc0
#! rip-offset  0x45cc0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSsD1Ev:                              #        0x45cc0  0      
  movl %edi, %edi                        #  1     0x45cc0  2      
  subl $0x18, %esp                       #  2     0x45cc2  3      
  addq %r15, %rsp                        #  3     0x45cc5  3      
  movl %edi, %edi                        #  4     0x45cc8  2      
  movl (%r15,%rdi,1), %edi               #  5     0x45cca  4      
  subl $0xc, %edi                        #  6     0x45cce  3      
  cmpl $0x10031da0, %edi                 #  7     0x45cd1  6      
  jne .L_45d00                           #  8     0x45cd7  6      
  nop                                    #  9     0x45cdd  1      
.L_45ce0:                                #        0x45cde  0      
  addl $0x18, %esp                       #  10    0x45cde  3      
  addq %r15, %rsp                        #  11    0x45ce1  3      
  popq %r11                              #  12    0x45ce4  3      
  andl $0xffffffe0, %r11d                #  13    0x45ce7  7      
  addq %r15, %r11                        #  14    0x45cee  3      
  jmpq %r11                              #  15    0x45cf1  3      
  nop                                    #  16    0x45cf4  1      
.L_45d00:                                #        0x45cf5  0      
  movl %edi, %edi                        #  17    0x45cf5  2      
  movl 0x8(%r15,%rdi,1), %eax            #  18    0x45cf7  5      
  leal -0x1(%rax), %edx                  #  19    0x45cfc  3      
  testl %eax, %eax                       #  20    0x45cff  2      
  movl %edi, %edi                        #  21    0x45d01  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  22    0x45d03  5      
  jg .L_45ce0                            #  23    0x45d08  6      
  leal 0xf(%rsp), %esi                   #  24    0x45d0e  4      
  xchgw %ax, %ax                         #  25    0x45d12  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  26    0x45d15  5      
  jmpq .L_45ce0                          #  27    0x45d1a  5      
  nop                                    #  28    0x45d1f  1      
  nop                                    #  29    0x45d20  1      
  nop                                    #  30    0x45d21  1      
  nop                                    #  31    0x45d22  1      
  nop                                    #  32    0x45d23  1      
  nop                                    #  33    0x45d24  1      
  nop                                    #  34    0x45d25  1      
  nop                                    #  35    0x45d26  1      
  nop                                    #  36    0x45d27  1      
  nop                                    #  37    0x45d28  1      
  nop                                    #  38    0x45d29  1      
  nop                                    #  39    0x45d2a  1      
  nop                                    #  40    0x45d2b  1      
  nop                                    #  41    0x45d2c  1      
  nop                                    #  42    0x45d2d  1      
  nop                                    #  43    0x45d2e  1      
  nop                                    #  44    0x45d2f  1      
  nop                                    #  45    0x45d30  1      
  nop                                    #  46    0x45d31  1      
  nop                                    #  47    0x45d32  1      
  nop                                    #  48    0x45d33  1      
  nop                                    #  49    0x45d34  1      
  nop                                    #  50    0x45d35  1      
  nop                                    #  51    0x45d36  1      
  nop                                    #  52    0x45d37  1      
  nop                                    #  53    0x45d38  1      
  nop                                    #  54    0x45d39  1      
  nop                                    #  55    0x45d3a  1      
  nop                                    #  56    0x45d3b  1      
  nop                                    #  57    0x45d3c  1      
                                                                  
.size _ZNSsD1Ev, .-_ZNSsD1Ev

