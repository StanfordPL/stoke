  .text
  .globl NACL_AnnotateRWLockDestroy
  .type NACL_AnnotateRWLockDestroy, @function

#! file-offset 0x6f920
#! rip-offset  0x2f920
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockDestroy:  #        0x2f920  0      OPC=<label>         
  popq %r11                   #  1     0x2f920  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x2f922  7      OPC=andl_r32_imm32  
  nop                         #  3     0x2f929  1      OPC=nop             
  nop                         #  4     0x2f92a  1      OPC=nop             
  nop                         #  5     0x2f92b  1      OPC=nop             
  nop                         #  6     0x2f92c  1      OPC=nop             
  addq %r15, %r11             #  7     0x2f92d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x2f930  3      OPC=jmpq_r64        
  nop                         #  9     0x2f933  1      OPC=nop             
  nop                         #  10    0x2f934  1      OPC=nop             
  nop                         #  11    0x2f935  1      OPC=nop             
  nop                         #  12    0x2f936  1      OPC=nop             
  nop                         #  13    0x2f937  1      OPC=nop             
  nop                         #  14    0x2f938  1      OPC=nop             
  nop                         #  15    0x2f939  1      OPC=nop             
  nop                         #  16    0x2f93a  1      OPC=nop             
  nop                         #  17    0x2f93b  1      OPC=nop             
  nop                         #  18    0x2f93c  1      OPC=nop             
  nop                         #  19    0x2f93d  1      OPC=nop             
  nop                         #  20    0x2f93e  1      OPC=nop             
  nop                         #  21    0x2f93f  1      OPC=nop             
  nop                         #  22    0x2f940  1      OPC=nop             
  nop                         #  23    0x2f941  1      OPC=nop             
  nop                         #  24    0x2f942  1      OPC=nop             
  nop                         #  25    0x2f943  1      OPC=nop             
  nop                         #  26    0x2f944  1      OPC=nop             
  nop                         #  27    0x2f945  1      OPC=nop             
  nop                         #  28    0x2f946  1      OPC=nop             
                                                                           
.size NACL_AnnotateRWLockDestroy, .-NACL_AnnotateRWLockDestroy

