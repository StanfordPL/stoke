  .text
  .globl nanf
  .type nanf, @function

#! file-offset 0x18bb80
#! rip-offset  0x14bb80
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.nanf:                          #        0x14bb80  0      OPC=<label>         
  popq %r11                     #  1     0x14bb80  2      OPC=popq_r64_1      
  movss 0xfefec4a(%rip), %xmm0  #  2     0x14bb82  8      OPC=movss_xmm_m32   
  andl $0xffffffe0, %r11d       #  3     0x14bb8a  7      OPC=andl_r32_imm32  
  nop                           #  4     0x14bb91  1      OPC=nop             
  nop                           #  5     0x14bb92  1      OPC=nop             
  nop                           #  6     0x14bb93  1      OPC=nop             
  nop                           #  7     0x14bb94  1      OPC=nop             
  addq %r15, %r11               #  8     0x14bb95  3      OPC=addq_r64_r64    
  jmpq %r11                     #  9     0x14bb98  3      OPC=jmpq_r64        
  nop                           #  10    0x14bb9b  1      OPC=nop             
  nop                           #  11    0x14bb9c  1      OPC=nop             
  nop                           #  12    0x14bb9d  1      OPC=nop             
  nop                           #  13    0x14bb9e  1      OPC=nop             
  nop                           #  14    0x14bb9f  1      OPC=nop             
  nop                           #  15    0x14bba0  1      OPC=nop             
  nop                           #  16    0x14bba1  1      OPC=nop             
  nop                           #  17    0x14bba2  1      OPC=nop             
  nop                           #  18    0x14bba3  1      OPC=nop             
  nop                           #  19    0x14bba4  1      OPC=nop             
  nop                           #  20    0x14bba5  1      OPC=nop             
  nop                           #  21    0x14bba6  1      OPC=nop             
                                                                              
.size nanf, .-nanf

