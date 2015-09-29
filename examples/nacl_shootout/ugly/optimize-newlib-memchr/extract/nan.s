  .text
  .globl nan
  .type nan, @function

#! file-offset 0x149da0
#! rip-offset  0x109da0
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.nan:                           #        0x109da0  0      OPC=<label>         
  popq %r11                     #  1     0x109da0  2      OPC=popq_r64_1      
  movsd 0xff365e6(%rip), %xmm0  #  2     0x109da2  8      OPC=movsd_xmm_m64   
  andl $0xffffffe0, %r11d       #  3     0x109daa  7      OPC=andl_r32_imm32  
  nop                           #  4     0x109db1  1      OPC=nop             
  nop                           #  5     0x109db2  1      OPC=nop             
  nop                           #  6     0x109db3  1      OPC=nop             
  nop                           #  7     0x109db4  1      OPC=nop             
  addq %r15, %r11               #  8     0x109db5  3      OPC=addq_r64_r64    
  jmpq %r11                     #  9     0x109db8  3      OPC=jmpq_r64        
  nop                           #  10    0x109dbb  1      OPC=nop             
  nop                           #  11    0x109dbc  1      OPC=nop             
  nop                           #  12    0x109dbd  1      OPC=nop             
  nop                           #  13    0x109dbe  1      OPC=nop             
  nop                           #  14    0x109dbf  1      OPC=nop             
  nop                           #  15    0x109dc0  1      OPC=nop             
  nop                           #  16    0x109dc1  1      OPC=nop             
  nop                           #  17    0x109dc2  1      OPC=nop             
  nop                           #  18    0x109dc3  1      OPC=nop             
  nop                           #  19    0x109dc4  1      OPC=nop             
  nop                           #  20    0x109dc5  1      OPC=nop             
  nop                           #  21    0x109dc6  1      OPC=nop             
                                                                              
.size nan, .-nan

