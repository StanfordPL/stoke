  .text
  .globl NACL_AnnotateIgnoreSyncBegin
  .type NACL_AnnotateIgnoreSyncBegin, @function

#! file-offset 0x70720
#! rip-offset  0x30720
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreSyncBegin:  #        0x30720  0      OPC=<label>         
  popq %r11                     #  1     0x30720  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x30722  7      OPC=andl_r32_imm32  
  nop                           #  3     0x30729  1      OPC=nop             
  nop                           #  4     0x3072a  1      OPC=nop             
  nop                           #  5     0x3072b  1      OPC=nop             
  nop                           #  6     0x3072c  1      OPC=nop             
  addq %r15, %r11               #  7     0x3072d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x30730  3      OPC=jmpq_r64        
  nop                           #  9     0x30733  1      OPC=nop             
  nop                           #  10    0x30734  1      OPC=nop             
  nop                           #  11    0x30735  1      OPC=nop             
  nop                           #  12    0x30736  1      OPC=nop             
  nop                           #  13    0x30737  1      OPC=nop             
  nop                           #  14    0x30738  1      OPC=nop             
  nop                           #  15    0x30739  1      OPC=nop             
  nop                           #  16    0x3073a  1      OPC=nop             
  nop                           #  17    0x3073b  1      OPC=nop             
  nop                           #  18    0x3073c  1      OPC=nop             
  nop                           #  19    0x3073d  1      OPC=nop             
  nop                           #  20    0x3073e  1      OPC=nop             
  nop                           #  21    0x3073f  1      OPC=nop             
  nop                           #  22    0x30740  1      OPC=nop             
  nop                           #  23    0x30741  1      OPC=nop             
  nop                           #  24    0x30742  1      OPC=nop             
  nop                           #  25    0x30743  1      OPC=nop             
  nop                           #  26    0x30744  1      OPC=nop             
  nop                           #  27    0x30745  1      OPC=nop             
  nop                           #  28    0x30746  1      OPC=nop             
                                                                             
.size NACL_AnnotateIgnoreSyncBegin, .-NACL_AnnotateIgnoreSyncBegin

