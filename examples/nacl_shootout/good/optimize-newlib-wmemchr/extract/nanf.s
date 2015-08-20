  .text
  .globl nanf
  .type nanf, @function

#! file-offset 0x18bf20
#! rip-offset  0x14bf20
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.nanf:                          #        0x14bf20  0      OPC=<label>         
  popq %r11                     #  1     0x14bf20  2      OPC=popq_r64_1      
  movss 0xfefe8aa(%rip), %xmm0  #  2     0x14bf22  8      OPC=movss_xmm_m32   
  andl $0xffffffe0, %r11d       #  3     0x14bf2a  7      OPC=andl_r32_imm32  
  nop                           #  4     0x14bf31  1      OPC=nop             
  nop                           #  5     0x14bf32  1      OPC=nop             
  nop                           #  6     0x14bf33  1      OPC=nop             
  nop                           #  7     0x14bf34  1      OPC=nop             
  addq %r15, %r11               #  8     0x14bf35  3      OPC=addq_r64_r64    
  jmpq %r11                     #  9     0x14bf38  3      OPC=jmpq_r64        
  nop                           #  10    0x14bf3b  1      OPC=nop             
  nop                           #  11    0x14bf3c  1      OPC=nop             
  nop                           #  12    0x14bf3d  1      OPC=nop             
  nop                           #  13    0x14bf3e  1      OPC=nop             
  nop                           #  14    0x14bf3f  1      OPC=nop             
  nop                           #  15    0x14bf40  1      OPC=nop             
  nop                           #  16    0x14bf41  1      OPC=nop             
  nop                           #  17    0x14bf42  1      OPC=nop             
  nop                           #  18    0x14bf43  1      OPC=nop             
  nop                           #  19    0x14bf44  1      OPC=nop             
  nop                           #  20    0x14bf45  1      OPC=nop             
  nop                           #  21    0x14bf46  1      OPC=nop             
                                                                              
.size nanf, .-nanf

