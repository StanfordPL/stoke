  .text
  .globl _ZSt13set_terminatePFvvE
  .type _ZSt13set_terminatePFvvE, @function

#! file-offset 0x122d40
#! rip-offset  0xe2d40
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt13set_terminatePFvvE:    #        0xe2d40  0      OPC=<label>         
  popq %r11                   #  1     0xe2d40  2      OPC=popq_r64_1      
  movl 0xff8dbe0(%rip), %eax  #  2     0xe2d42  6      OPC=movl_r32_m32    
  movl %edi, 0xff8dbda(%rip)  #  3     0xe2d48  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe2d4e  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe2d55  1      OPC=nop             
  nop                         #  6     0xe2d56  1      OPC=nop             
  nop                         #  7     0xe2d57  1      OPC=nop             
  nop                         #  8     0xe2d58  1      OPC=nop             
  addq %r15, %r11             #  9     0xe2d59  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe2d5c  3      OPC=jmpq_r64        
  nop                         #  11    0xe2d5f  1      OPC=nop             
  nop                         #  12    0xe2d60  1      OPC=nop             
  nop                         #  13    0xe2d61  1      OPC=nop             
  nop                         #  14    0xe2d62  1      OPC=nop             
  nop                         #  15    0xe2d63  1      OPC=nop             
  nop                         #  16    0xe2d64  1      OPC=nop             
  nop                         #  17    0xe2d65  1      OPC=nop             
  nop                         #  18    0xe2d66  1      OPC=nop             
                                                                           
.size _ZSt13set_terminatePFvvE, .-_ZSt13set_terminatePFvvE

