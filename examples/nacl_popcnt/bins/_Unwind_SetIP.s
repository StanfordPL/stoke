  .text
  .globl _Unwind_SetIP
  .type _Unwind_SetIP, @function

#! file-offset 0x58f20
#! rip-offset  0x58f20
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_SetIP:                 #        0x58f20  0      
  popq %r11                     #  1     0x58f20  3      
  movl %edi, %edi               #  2     0x58f23  2      
  movl %edi, %edi               #  3     0x58f25  2      
  movl %esi, 0x4c(%r15,%rdi,1)  #  4     0x58f27  5      
  andl $0xffffffe0, %r11d       #  5     0x58f2c  7      
  addq %r15, %r11               #  6     0x58f33  3      
  jmpq %r11                     #  7     0x58f36  3      
  nop                           #  8     0x58f39  1      
                                                         
.size _Unwind_SetIP, .-_Unwind_SetIP

