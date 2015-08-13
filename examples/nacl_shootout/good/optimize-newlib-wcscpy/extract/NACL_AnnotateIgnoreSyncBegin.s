  .text
  .globl NACL_AnnotateIgnoreSyncBegin
  .type NACL_AnnotateIgnoreSyncBegin, @function

#! file-offset 0x6fd00
#! rip-offset  0x2fd00
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreSyncBegin:  #        0x2fd00  0      OPC=<label>         
  popq %r11                     #  1     0x2fd00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x2fd02  7      OPC=andl_r32_imm32  
  nop                           #  3     0x2fd09  1      OPC=nop             
  nop                           #  4     0x2fd0a  1      OPC=nop             
  nop                           #  5     0x2fd0b  1      OPC=nop             
  nop                           #  6     0x2fd0c  1      OPC=nop             
  addq %r15, %r11               #  7     0x2fd0d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x2fd10  3      OPC=jmpq_r64        
  nop                           #  9     0x2fd13  1      OPC=nop             
  nop                           #  10    0x2fd14  1      OPC=nop             
  nop                           #  11    0x2fd15  1      OPC=nop             
  nop                           #  12    0x2fd16  1      OPC=nop             
  nop                           #  13    0x2fd17  1      OPC=nop             
  nop                           #  14    0x2fd18  1      OPC=nop             
  nop                           #  15    0x2fd19  1      OPC=nop             
  nop                           #  16    0x2fd1a  1      OPC=nop             
  nop                           #  17    0x2fd1b  1      OPC=nop             
  nop                           #  18    0x2fd1c  1      OPC=nop             
  nop                           #  19    0x2fd1d  1      OPC=nop             
  nop                           #  20    0x2fd1e  1      OPC=nop             
  nop                           #  21    0x2fd1f  1      OPC=nop             
  nop                           #  22    0x2fd20  1      OPC=nop             
  nop                           #  23    0x2fd21  1      OPC=nop             
  nop                           #  24    0x2fd22  1      OPC=nop             
  nop                           #  25    0x2fd23  1      OPC=nop             
  nop                           #  26    0x2fd24  1      OPC=nop             
  nop                           #  27    0x2fd25  1      OPC=nop             
  nop                           #  28    0x2fd26  1      OPC=nop             
                                                                             
.size NACL_AnnotateIgnoreSyncBegin, .-NACL_AnnotateIgnoreSyncBegin

