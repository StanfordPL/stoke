  .text
  .globl _Unwind_GetIP
  .type _Unwind_GetIP, @function

#! file-offset 0x58e20
#! rip-offset  0x58e20
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_GetIP:                 #        0x58e20  0      
  popq %r11                     #  1     0x58e20  3      
  movl %edi, %edi               #  2     0x58e23  2      
  movl %edi, %edi               #  3     0x58e25  2      
  movl 0x4c(%r15,%rdi,1), %eax  #  4     0x58e27  5      
  andl $0xffffffe0, %r11d       #  5     0x58e2c  7      
  addq %r15, %r11               #  6     0x58e33  3      
  jmpq %r11                     #  7     0x58e36  3      
  nop                           #  8     0x58e39  1      
                                                         
.size _Unwind_GetIP, .-_Unwind_GetIP

