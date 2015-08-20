  .text
  .globl nan
  .type nan, @function

#! file-offset 0x149680
#! rip-offset  0x109680
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.nan:                           #        0x109680  0      OPC=<label>         
  popq %r11                     #  1     0x109680  2      OPC=popq_r64_1      
  movsd 0xff36d06(%rip), %xmm0  #  2     0x109682  8      OPC=movsd_xmm_m64   
  andl $0xffffffe0, %r11d       #  3     0x10968a  7      OPC=andl_r32_imm32  
  nop                           #  4     0x109691  1      OPC=nop             
  nop                           #  5     0x109692  1      OPC=nop             
  nop                           #  6     0x109693  1      OPC=nop             
  nop                           #  7     0x109694  1      OPC=nop             
  addq %r15, %r11               #  8     0x109695  3      OPC=addq_r64_r64    
  jmpq %r11                     #  9     0x109698  3      OPC=jmpq_r64        
  nop                           #  10    0x10969b  1      OPC=nop             
  nop                           #  11    0x10969c  1      OPC=nop             
  nop                           #  12    0x10969d  1      OPC=nop             
  nop                           #  13    0x10969e  1      OPC=nop             
  nop                           #  14    0x10969f  1      OPC=nop             
  nop                           #  15    0x1096a0  1      OPC=nop             
  nop                           #  16    0x1096a1  1      OPC=nop             
  nop                           #  17    0x1096a2  1      OPC=nop             
  nop                           #  18    0x1096a3  1      OPC=nop             
  nop                           #  19    0x1096a4  1      OPC=nop             
  nop                           #  20    0x1096a5  1      OPC=nop             
  nop                           #  21    0x1096a6  1      OPC=nop             
                                                                              
.size nan, .-nan

