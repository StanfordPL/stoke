  .text
  .globl _ZNKSs2atEj
  .type _ZNKSs2atEj, @function

#! file-offset 0x44e80
#! rip-offset  0x44e80
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs2atEj:                           #        0x44e80  0      
  movl %edi, %edi                       #  1     0x44e80  2      
  subl $0x8, %esp                       #  2     0x44e82  3      
  addq %r15, %rsp                       #  3     0x44e85  3      
  movl %edi, %edi                       #  4     0x44e88  2      
  movl (%r15,%rdi,1), %eax              #  5     0x44e8a  4      
  leal -0xc(%rax), %edx                 #  6     0x44e8e  3      
  movl %edx, %edx                       #  7     0x44e91  2      
  cmpl (%r15,%rdx,1), %esi              #  8     0x44e93  4      
  jae .L_44ec0                          #  9     0x44e97  6      
  addl $0x8, %esp                       #  10    0x44e9d  3      
  addq %r15, %rsp                       #  11    0x44ea0  3      
  nop                                   #  12    0x44ea3  1      
  leal (%rsi,%rax,1), %eax              #  13    0x44ea4  3      
  popq %r11                             #  14    0x44ea7  3      
  andl $0xffffffe0, %r11d               #  15    0x44eaa  7      
  addq %r15, %r11                       #  16    0x44eb1  3      
  jmpq %r11                             #  17    0x44eb4  3      
  xchgw %ax, %ax                        #  18    0x44eb7  3      
  nop                                   #  19    0x44eba  1      
.L_44ec0:                               #        0x44ebb  0      
  movl $0x100209a3, %edi                #  20    0x44ebb  5      
  nop                                   #  21    0x44ec0  1      
  nop                                   #  22    0x44ec1  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  23    0x44ec2  5      
                                                                 
.size _ZNKSs2atEj, .-_ZNKSs2atEj

