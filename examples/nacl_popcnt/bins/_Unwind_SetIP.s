  .text
  .globl _Unwind_SetIP
  .type _Unwind_SetIP, @function

#! file-offset 0x58ea0
#! rip-offset  0x58ea0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_SetIP:                 #        0x58ea0  0      
  popq %r11                     #  1     0x58ea0  3      
  movl %edi, %edi               #  2     0x58ea3  2      
  movl %edi, %edi               #  3     0x58ea5  2      
  movl %esi, 0x4c(%r15,%rdi,1)  #  4     0x58ea7  5      
  andl $0xffffffe0, %r11d       #  5     0x58eac  7      
  addq %r15, %r11               #  6     0x58eb3  3      
  jmpq %r11                     #  7     0x58eb6  3      
  nop                           #  8     0x58eb9  1      
                                                         
.size _Unwind_SetIP, .-_Unwind_SetIP

