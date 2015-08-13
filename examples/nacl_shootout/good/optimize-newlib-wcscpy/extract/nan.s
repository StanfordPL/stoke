  .text
  .globl nan
  .type nan, @function

#! file-offset 0x149380
#! rip-offset  0x109380
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.nan:                           #        0x109380  0      OPC=<label>         
  popq %r11                     #  1     0x109380  2      OPC=popq_r64_1      
  movsd 0xff37006(%rip), %xmm0  #  2     0x109382  8      OPC=movsd_xmm_m64   
  andl $0xffffffe0, %r11d       #  3     0x10938a  7      OPC=andl_r32_imm32  
  nop                           #  4     0x109391  1      OPC=nop             
  nop                           #  5     0x109392  1      OPC=nop             
  nop                           #  6     0x109393  1      OPC=nop             
  nop                           #  7     0x109394  1      OPC=nop             
  addq %r15, %r11               #  8     0x109395  3      OPC=addq_r64_r64    
  jmpq %r11                     #  9     0x109398  3      OPC=jmpq_r64        
  nop                           #  10    0x10939b  1      OPC=nop             
  nop                           #  11    0x10939c  1      OPC=nop             
  nop                           #  12    0x10939d  1      OPC=nop             
  nop                           #  13    0x10939e  1      OPC=nop             
  nop                           #  14    0x10939f  1      OPC=nop             
  nop                           #  15    0x1093a0  1      OPC=nop             
  nop                           #  16    0x1093a1  1      OPC=nop             
  nop                           #  17    0x1093a2  1      OPC=nop             
  nop                           #  18    0x1093a3  1      OPC=nop             
  nop                           #  19    0x1093a4  1      OPC=nop             
  nop                           #  20    0x1093a5  1      OPC=nop             
  nop                           #  21    0x1093a6  1      OPC=nop             
                                                                              
.size nan, .-nan

