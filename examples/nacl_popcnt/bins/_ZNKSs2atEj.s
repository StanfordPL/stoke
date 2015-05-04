  .text
  .globl _ZNKSs2atEj
  .type _ZNKSs2atEj, @function

#! file-offset 0x44f00
#! rip-offset  0x44f00
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs2atEj:                           #        0x44f00  0      
  movl %edi, %edi                       #  1     0x44f00  2      
  subl $0x8, %esp                       #  2     0x44f02  3      
  addq %r15, %rsp                       #  3     0x44f05  3      
  movl %edi, %edi                       #  4     0x44f08  2      
  movl (%r15,%rdi,1), %eax              #  5     0x44f0a  4      
  leal -0xc(%rax), %edx                 #  6     0x44f0e  3      
  movl %edx, %edx                       #  7     0x44f11  2      
  cmpl (%r15,%rdx,1), %esi              #  8     0x44f13  4      
  jae .L_44f40                          #  9     0x44f17  6      
  addl $0x8, %esp                       #  10    0x44f1d  3      
  addq %r15, %rsp                       #  11    0x44f20  3      
  nop                                   #  12    0x44f23  1      
  leal (%rsi,%rax,1), %eax              #  13    0x44f24  3      
  popq %r11                             #  14    0x44f27  3      
  andl $0xffffffe0, %r11d               #  15    0x44f2a  7      
  addq %r15, %r11                       #  16    0x44f31  3      
  jmpq %r11                             #  17    0x44f34  3      
  xchgw %ax, %ax                        #  18    0x44f37  3      
  nop                                   #  19    0x44f3a  1      
.L_44f40:                               #        0x44f3b  0      
  movl $0x100209a3, %edi                #  20    0x44f3b  5      
  nop                                   #  21    0x44f40  1      
  nop                                   #  22    0x44f41  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  23    0x44f42  5      
                                                                 
.size _ZNKSs2atEj, .-_ZNKSs2atEj

