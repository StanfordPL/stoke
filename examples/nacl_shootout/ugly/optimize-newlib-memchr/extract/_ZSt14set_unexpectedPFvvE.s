  .text
  .globl _ZSt14set_unexpectedPFvvE
  .type _ZSt14set_unexpectedPFvvE, @function

#! file-offset 0x122d60
#! rip-offset  0xe2d60
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt14set_unexpectedPFvvE:   #        0xe2d60  0      OPC=<label>         
  popq %r11                   #  1     0xe2d60  2      OPC=popq_r64_1      
  movl 0xff8dbbc(%rip), %eax  #  2     0xe2d62  6      OPC=movl_r32_m32    
  movl %edi, 0xff8dbb6(%rip)  #  3     0xe2d68  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe2d6e  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe2d75  1      OPC=nop             
  nop                         #  6     0xe2d76  1      OPC=nop             
  nop                         #  7     0xe2d77  1      OPC=nop             
  nop                         #  8     0xe2d78  1      OPC=nop             
  addq %r15, %r11             #  9     0xe2d79  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe2d7c  3      OPC=jmpq_r64        
  nop                         #  11    0xe2d7f  1      OPC=nop             
  nop                         #  12    0xe2d80  1      OPC=nop             
  nop                         #  13    0xe2d81  1      OPC=nop             
  nop                         #  14    0xe2d82  1      OPC=nop             
  nop                         #  15    0xe2d83  1      OPC=nop             
  nop                         #  16    0xe2d84  1      OPC=nop             
  nop                         #  17    0xe2d85  1      OPC=nop             
  nop                         #  18    0xe2d86  1      OPC=nop             
                                                                           
.size _ZSt14set_unexpectedPFvvE, .-_ZSt14set_unexpectedPFvvE

