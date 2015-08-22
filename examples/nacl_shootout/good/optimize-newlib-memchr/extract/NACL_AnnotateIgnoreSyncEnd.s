  .text
  .globl NACL_AnnotateIgnoreSyncEnd
  .type NACL_AnnotateIgnoreSyncEnd, @function

#! file-offset 0x70740
#! rip-offset  0x30740
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreSyncEnd:  #        0x30740  0      OPC=<label>         
  popq %r11                   #  1     0x30740  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x30742  7      OPC=andl_r32_imm32  
  nop                         #  3     0x30749  1      OPC=nop             
  nop                         #  4     0x3074a  1      OPC=nop             
  nop                         #  5     0x3074b  1      OPC=nop             
  nop                         #  6     0x3074c  1      OPC=nop             
  addq %r15, %r11             #  7     0x3074d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x30750  3      OPC=jmpq_r64        
  nop                         #  9     0x30753  1      OPC=nop             
  nop                         #  10    0x30754  1      OPC=nop             
  nop                         #  11    0x30755  1      OPC=nop             
  nop                         #  12    0x30756  1      OPC=nop             
  nop                         #  13    0x30757  1      OPC=nop             
  nop                         #  14    0x30758  1      OPC=nop             
  nop                         #  15    0x30759  1      OPC=nop             
  nop                         #  16    0x3075a  1      OPC=nop             
  nop                         #  17    0x3075b  1      OPC=nop             
  nop                         #  18    0x3075c  1      OPC=nop             
  nop                         #  19    0x3075d  1      OPC=nop             
  nop                         #  20    0x3075e  1      OPC=nop             
  nop                         #  21    0x3075f  1      OPC=nop             
  nop                         #  22    0x30760  1      OPC=nop             
  nop                         #  23    0x30761  1      OPC=nop             
  nop                         #  24    0x30762  1      OPC=nop             
  nop                         #  25    0x30763  1      OPC=nop             
  nop                         #  26    0x30764  1      OPC=nop             
  nop                         #  27    0x30765  1      OPC=nop             
  nop                         #  28    0x30766  1      OPC=nop             
                                                                           
.size NACL_AnnotateIgnoreSyncEnd, .-NACL_AnnotateIgnoreSyncEnd

