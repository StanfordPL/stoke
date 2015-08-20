  .text
  .globl NACL_AnnotateIgnoreSyncBegin
  .type NACL_AnnotateIgnoreSyncBegin, @function

#! file-offset 0x70000
#! rip-offset  0x30000
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreSyncBegin:  #        0x30000  0      OPC=<label>         
  popq %r11                     #  1     0x30000  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x30002  7      OPC=andl_r32_imm32  
  nop                           #  3     0x30009  1      OPC=nop             
  nop                           #  4     0x3000a  1      OPC=nop             
  nop                           #  5     0x3000b  1      OPC=nop             
  nop                           #  6     0x3000c  1      OPC=nop             
  addq %r15, %r11               #  7     0x3000d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x30010  3      OPC=jmpq_r64        
  nop                           #  9     0x30013  1      OPC=nop             
  nop                           #  10    0x30014  1      OPC=nop             
  nop                           #  11    0x30015  1      OPC=nop             
  nop                           #  12    0x30016  1      OPC=nop             
  nop                           #  13    0x30017  1      OPC=nop             
  nop                           #  14    0x30018  1      OPC=nop             
  nop                           #  15    0x30019  1      OPC=nop             
  nop                           #  16    0x3001a  1      OPC=nop             
  nop                           #  17    0x3001b  1      OPC=nop             
  nop                           #  18    0x3001c  1      OPC=nop             
  nop                           #  19    0x3001d  1      OPC=nop             
  nop                           #  20    0x3001e  1      OPC=nop             
  nop                           #  21    0x3001f  1      OPC=nop             
  nop                           #  22    0x30020  1      OPC=nop             
  nop                           #  23    0x30021  1      OPC=nop             
  nop                           #  24    0x30022  1      OPC=nop             
  nop                           #  25    0x30023  1      OPC=nop             
  nop                           #  26    0x30024  1      OPC=nop             
  nop                           #  27    0x30025  1      OPC=nop             
  nop                           #  28    0x30026  1      OPC=nop             
                                                                             
.size NACL_AnnotateIgnoreSyncBegin, .-NACL_AnnotateIgnoreSyncBegin

