  .text
  .globl _ZSt15set_new_handlerPFvvE
  .type _ZSt15set_new_handlerPFvvE, @function

#! file-offset 0x4f3e0
#! rip-offset  0x4f3e0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZSt15set_new_handlerPFvvE:  #        0x4f3e0  0      
  popq %r11                   #  1     0x4f3e0  3      
  movl 0xffe7443(%rip), %eax  #  2     0x4f3e3  6      
  movl %edi, 0xffe743d(%rip)  #  3     0x4f3e9  6      
  andl $0xffffffe0, %r11d     #  4     0x4f3ef  7      
  addq %r15, %r11             #  5     0x4f3f6  3      
  jmpq %r11                   #  6     0x4f3f9  3      
  nop                         #  7     0x4f3fc  1      
  nop                         #  8     0x4f3fd  1      
  nop                         #  9     0x4f3fe  1      
  nop                         #  10    0x4f3ff  1      
  nop                         #  11    0x4f400  1      
  nop                         #  12    0x4f401  1      
  nop                         #  13    0x4f402  1      
  nop                         #  14    0x4f403  1      
                                                       
.size _ZSt15set_new_handlerPFvvE, .-_ZSt15set_new_handlerPFvvE

