  .text
  .globl _ZSt15set_new_handlerPFvvE
  .type _ZSt15set_new_handlerPFvvE, @function

#! file-offset 0x4f360
#! rip-offset  0x4f360
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZSt15set_new_handlerPFvvE:  #        0x4f360  0      
  popq %r11                   #  1     0x4f360  3      
  movl 0xffe74c3(%rip), %eax  #  2     0x4f363  6      
  movl %edi, 0xffe74bd(%rip)  #  3     0x4f369  6      
  andl $0xffffffe0, %r11d     #  4     0x4f36f  7      
  addq %r15, %r11             #  5     0x4f376  3      
  jmpq %r11                   #  6     0x4f379  3      
  nop                         #  7     0x4f37c  1      
  nop                         #  8     0x4f37d  1      
  nop                         #  9     0x4f37e  1      
  nop                         #  10    0x4f37f  1      
  nop                         #  11    0x4f380  1      
  nop                         #  12    0x4f381  1      
  nop                         #  13    0x4f382  1      
  nop                         #  14    0x4f383  1      
                                                       
.size _ZSt15set_new_handlerPFvvE, .-_ZSt15set_new_handlerPFvvE

