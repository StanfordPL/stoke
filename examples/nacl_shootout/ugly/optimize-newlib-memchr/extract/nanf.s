  .text
  .globl nanf
  .type nanf, @function

#! file-offset 0x18c640
#! rip-offset  0x14c640
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.nanf:                          #        0x14c640  0      OPC=<label>         
  popq %r11                     #  1     0x14c640  2      OPC=popq_r64_1      
  movss 0xfefe18a(%rip), %xmm0  #  2     0x14c642  8      OPC=movss_xmm_m32   
  andl $0xffffffe0, %r11d       #  3     0x14c64a  7      OPC=andl_r32_imm32  
  nop                           #  4     0x14c651  1      OPC=nop             
  nop                           #  5     0x14c652  1      OPC=nop             
  nop                           #  6     0x14c653  1      OPC=nop             
  nop                           #  7     0x14c654  1      OPC=nop             
  addq %r15, %r11               #  8     0x14c655  3      OPC=addq_r64_r64    
  jmpq %r11                     #  9     0x14c658  3      OPC=jmpq_r64        
  nop                           #  10    0x14c65b  1      OPC=nop             
  nop                           #  11    0x14c65c  1      OPC=nop             
  nop                           #  12    0x14c65d  1      OPC=nop             
  nop                           #  13    0x14c65e  1      OPC=nop             
  nop                           #  14    0x14c65f  1      OPC=nop             
  nop                           #  15    0x14c660  1      OPC=nop             
  nop                           #  16    0x14c661  1      OPC=nop             
  nop                           #  17    0x14c662  1      OPC=nop             
  nop                           #  18    0x14c663  1      OPC=nop             
  nop                           #  19    0x14c664  1      OPC=nop             
  nop                           #  20    0x14c665  1      OPC=nop             
  nop                           #  21    0x14c666  1      OPC=nop             
                                                                              
.size nanf, .-nanf

