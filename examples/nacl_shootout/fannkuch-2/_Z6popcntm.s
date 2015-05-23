  .text
  .globl _Z6popcntm
  .type _Z6popcntm, @function

#! file-offset 0x600
#! rip-offset  0x400600
#! capacity    48 bytes

# Text              #  Line  RIP       Bytes  
._Z6popcntm:        #        0x400600  0      
  testq %rdi, %rdi  #  1     0x400600  3      
  je .L_40061f      #  2     0x400603  6      
  xorl %eax, %eax   #  3     0x400609  2      
  nop               #  4     0x40060b  1      
.L_400610:          #        0x40060c  0      
  movl %edi, %edx   #  5     0x40060c  2      
  andl $0x1, %edx   #  6     0x40060e  3      
  addl %edx, %eax   #  7     0x400611  2      
  shrq $0x1, %rdi   #  8     0x400613  3      
  jne .L_400610     #  9     0x400616  6      
  cltq              #  10    0x40061c  2      
  retq              #  11    0x40061e  1      
.L_40061f:          #        0x40061f  0      
  xorl %eax, %eax   #  12    0x40061f  2      
  retq              #  13    0x400621  1      
  nop               #  14    0x400622  1      
  nop               #  15    0x400623  1      
                                              
.size _Z6popcntm, .-_Z6popcntm

