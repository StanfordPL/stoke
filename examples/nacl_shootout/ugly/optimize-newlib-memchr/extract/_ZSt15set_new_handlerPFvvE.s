  .text
  .globl _ZSt15set_new_handlerPFvvE
  .type _ZSt15set_new_handlerPFvvE, @function

#! file-offset 0x121000
#! rip-offset  0xe1000
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt15set_new_handlerPFvvE:  #        0xe1000  0      OPC=<label>         
  popq %r11                   #  1     0xe1000  2      OPC=popq_r64_1      
  movl 0xff92628(%rip), %eax  #  2     0xe1002  6      OPC=movl_r32_m32    
  movl %edi, 0xff92622(%rip)  #  3     0xe1008  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe100e  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe1015  1      OPC=nop             
  nop                         #  6     0xe1016  1      OPC=nop             
  nop                         #  7     0xe1017  1      OPC=nop             
  nop                         #  8     0xe1018  1      OPC=nop             
  addq %r15, %r11             #  9     0xe1019  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe101c  3      OPC=jmpq_r64        
  nop                         #  11    0xe101f  1      OPC=nop             
  nop                         #  12    0xe1020  1      OPC=nop             
  nop                         #  13    0xe1021  1      OPC=nop             
  nop                         #  14    0xe1022  1      OPC=nop             
  nop                         #  15    0xe1023  1      OPC=nop             
  nop                         #  16    0xe1024  1      OPC=nop             
  nop                         #  17    0xe1025  1      OPC=nop             
  nop                         #  18    0xe1026  1      OPC=nop             
                                                                           
.size _ZSt15set_new_handlerPFvvE, .-_ZSt15set_new_handlerPFvvE

