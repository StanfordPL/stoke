  .text
  .globl _ZSt13set_terminatePFvvE
  .type _ZSt13set_terminatePFvvE, @function

#! file-offset 0x4ba80
#! rip-offset  0x4ba80
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZSt13set_terminatePFvvE:    #        0x4ba80  0      
  popq %r11                   #  1     0x4ba80  3      
  movl 0xffe4a6b(%rip), %eax  #  2     0x4ba83  6      
  movl %edi, 0xffe4a65(%rip)  #  3     0x4ba89  6      
  andl $0xffffffe0, %r11d     #  4     0x4ba8f  7      
  addq %r15, %r11             #  5     0x4ba96  3      
  jmpq %r11                   #  6     0x4ba99  3      
  nop                         #  7     0x4ba9c  1      
  nop                         #  8     0x4ba9d  1      
  nop                         #  9     0x4ba9e  1      
  nop                         #  10    0x4ba9f  1      
  nop                         #  11    0x4baa0  1      
  nop                         #  12    0x4baa1  1      
  nop                         #  13    0x4baa2  1      
  nop                         #  14    0x4baa3  1      
                                                       
.size _ZSt13set_terminatePFvvE, .-_ZSt13set_terminatePFvvE

