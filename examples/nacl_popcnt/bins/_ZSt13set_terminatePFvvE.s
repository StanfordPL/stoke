  .text
  .globl _ZSt13set_terminatePFvvE
  .type _ZSt13set_terminatePFvvE, @function

#! file-offset 0x4bb20
#! rip-offset  0x4bb20
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZSt13set_terminatePFvvE:    #        0x4bb20  0      
  popq %r11                   #  1     0x4bb20  3      
  movl 0xffe49cb(%rip), %eax  #  2     0x4bb23  6      
  movl %edi, 0xffe49c5(%rip)  #  3     0x4bb29  6      
  andl $0xffffffe0, %r11d     #  4     0x4bb2f  7      
  addq %r15, %r11             #  5     0x4bb36  3      
  jmpq %r11                   #  6     0x4bb39  3      
  nop                         #  7     0x4bb3c  1      
  nop                         #  8     0x4bb3d  1      
  nop                         #  9     0x4bb3e  1      
  nop                         #  10    0x4bb3f  1      
  nop                         #  11    0x4bb40  1      
  nop                         #  12    0x4bb41  1      
  nop                         #  13    0x4bb42  1      
  nop                         #  14    0x4bb43  1      
                                                       
.size _ZSt13set_terminatePFvvE, .-_ZSt13set_terminatePFvvE

