  .text
  .globl _ZSt15set_new_handlerPFvvE
  .type _ZSt15set_new_handlerPFvvE, @function

#! file-offset 0x4f340
#! rip-offset  0x4f340
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZSt15set_new_handlerPFvvE:  #        0x4f340  0      
  popq %r11                   #  1     0x4f340  3      
  movl 0xffe74e3(%rip), %eax  #  2     0x4f343  6      
  movl %edi, 0xffe74dd(%rip)  #  3     0x4f349  6      
  andl $0xffffffe0, %r11d     #  4     0x4f34f  7      
  addq %r15, %r11             #  5     0x4f356  3      
  jmpq %r11                   #  6     0x4f359  3      
  nop                         #  7     0x4f35c  1      
  nop                         #  8     0x4f35d  1      
  nop                         #  9     0x4f35e  1      
  nop                         #  10    0x4f35f  1      
  nop                         #  11    0x4f360  1      
  nop                         #  12    0x4f361  1      
  nop                         #  13    0x4f362  1      
  nop                         #  14    0x4f363  1      
                                                       
.size _ZSt15set_new_handlerPFvvE, .-_ZSt15set_new_handlerPFvvE

