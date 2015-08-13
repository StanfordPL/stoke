  .text
  .globl NACL_AnnotateCondVarWait
  .type NACL_AnnotateCondVarWait, @function

#! file-offset 0x6fa00
#! rip-offset  0x2fa00
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateCondVarWait:  #        0x2fa00  0      OPC=<label>         
  popq %r11                 #  1     0x2fa00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  2     0x2fa02  7      OPC=andl_r32_imm32  
  nop                       #  3     0x2fa09  1      OPC=nop             
  nop                       #  4     0x2fa0a  1      OPC=nop             
  nop                       #  5     0x2fa0b  1      OPC=nop             
  nop                       #  6     0x2fa0c  1      OPC=nop             
  addq %r15, %r11           #  7     0x2fa0d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  8     0x2fa10  3      OPC=jmpq_r64        
  nop                       #  9     0x2fa13  1      OPC=nop             
  nop                       #  10    0x2fa14  1      OPC=nop             
  nop                       #  11    0x2fa15  1      OPC=nop             
  nop                       #  12    0x2fa16  1      OPC=nop             
  nop                       #  13    0x2fa17  1      OPC=nop             
  nop                       #  14    0x2fa18  1      OPC=nop             
  nop                       #  15    0x2fa19  1      OPC=nop             
  nop                       #  16    0x2fa1a  1      OPC=nop             
  nop                       #  17    0x2fa1b  1      OPC=nop             
  nop                       #  18    0x2fa1c  1      OPC=nop             
  nop                       #  19    0x2fa1d  1      OPC=nop             
  nop                       #  20    0x2fa1e  1      OPC=nop             
  nop                       #  21    0x2fa1f  1      OPC=nop             
  nop                       #  22    0x2fa20  1      OPC=nop             
  nop                       #  23    0x2fa21  1      OPC=nop             
  nop                       #  24    0x2fa22  1      OPC=nop             
  nop                       #  25    0x2fa23  1      OPC=nop             
  nop                       #  26    0x2fa24  1      OPC=nop             
  nop                       #  27    0x2fa25  1      OPC=nop             
  nop                       #  28    0x2fa26  1      OPC=nop             
                                                                         
.size NACL_AnnotateCondVarWait, .-NACL_AnnotateCondVarWait

