  .text
  .globl NACL_AnnotateRWLockDestroy
  .type NACL_AnnotateRWLockDestroy, @function

#! file-offset 0x6fc20
#! rip-offset  0x2fc20
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockDestroy:  #        0x2fc20  0      OPC=<label>         
  popq %r11                   #  1     0x2fc20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x2fc22  7      OPC=andl_r32_imm32  
  nop                         #  3     0x2fc29  1      OPC=nop             
  nop                         #  4     0x2fc2a  1      OPC=nop             
  nop                         #  5     0x2fc2b  1      OPC=nop             
  nop                         #  6     0x2fc2c  1      OPC=nop             
  addq %r15, %r11             #  7     0x2fc2d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x2fc30  3      OPC=jmpq_r64        
  nop                         #  9     0x2fc33  1      OPC=nop             
  nop                         #  10    0x2fc34  1      OPC=nop             
  nop                         #  11    0x2fc35  1      OPC=nop             
  nop                         #  12    0x2fc36  1      OPC=nop             
  nop                         #  13    0x2fc37  1      OPC=nop             
  nop                         #  14    0x2fc38  1      OPC=nop             
  nop                         #  15    0x2fc39  1      OPC=nop             
  nop                         #  16    0x2fc3a  1      OPC=nop             
  nop                         #  17    0x2fc3b  1      OPC=nop             
  nop                         #  18    0x2fc3c  1      OPC=nop             
  nop                         #  19    0x2fc3d  1      OPC=nop             
  nop                         #  20    0x2fc3e  1      OPC=nop             
  nop                         #  21    0x2fc3f  1      OPC=nop             
  nop                         #  22    0x2fc40  1      OPC=nop             
  nop                         #  23    0x2fc41  1      OPC=nop             
  nop                         #  24    0x2fc42  1      OPC=nop             
  nop                         #  25    0x2fc43  1      OPC=nop             
  nop                         #  26    0x2fc44  1      OPC=nop             
  nop                         #  27    0x2fc45  1      OPC=nop             
  nop                         #  28    0x2fc46  1      OPC=nop             
                                                                           
.size NACL_AnnotateRWLockDestroy, .-NACL_AnnotateRWLockDestroy

