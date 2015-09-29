  .text
  .globl NACL_AnnotateRWLockDestroy
  .type NACL_AnnotateRWLockDestroy, @function

#! file-offset 0x70340
#! rip-offset  0x30340
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockDestroy:  #        0x30340  0      OPC=<label>         
  popq %r11                   #  1     0x30340  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x30342  7      OPC=andl_r32_imm32  
  nop                         #  3     0x30349  1      OPC=nop             
  nop                         #  4     0x3034a  1      OPC=nop             
  nop                         #  5     0x3034b  1      OPC=nop             
  nop                         #  6     0x3034c  1      OPC=nop             
  addq %r15, %r11             #  7     0x3034d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x30350  3      OPC=jmpq_r64        
  nop                         #  9     0x30353  1      OPC=nop             
  nop                         #  10    0x30354  1      OPC=nop             
  nop                         #  11    0x30355  1      OPC=nop             
  nop                         #  12    0x30356  1      OPC=nop             
  nop                         #  13    0x30357  1      OPC=nop             
  nop                         #  14    0x30358  1      OPC=nop             
  nop                         #  15    0x30359  1      OPC=nop             
  nop                         #  16    0x3035a  1      OPC=nop             
  nop                         #  17    0x3035b  1      OPC=nop             
  nop                         #  18    0x3035c  1      OPC=nop             
  nop                         #  19    0x3035d  1      OPC=nop             
  nop                         #  20    0x3035e  1      OPC=nop             
  nop                         #  21    0x3035f  1      OPC=nop             
  nop                         #  22    0x30360  1      OPC=nop             
  nop                         #  23    0x30361  1      OPC=nop             
  nop                         #  24    0x30362  1      OPC=nop             
  nop                         #  25    0x30363  1      OPC=nop             
  nop                         #  26    0x30364  1      OPC=nop             
  nop                         #  27    0x30365  1      OPC=nop             
  nop                         #  28    0x30366  1      OPC=nop             
                                                                           
.size NACL_AnnotateRWLockDestroy, .-NACL_AnnotateRWLockDestroy

