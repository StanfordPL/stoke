  .text
  .globl NACL_AnnotateMutexIsNotPHB
  .type NACL_AnnotateMutexIsNotPHB, @function

#! file-offset 0x70640
#! rip-offset  0x30640
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateMutexIsNotPHB:  #        0x30640  0      OPC=<label>         
  popq %r11                   #  1     0x30640  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x30642  7      OPC=andl_r32_imm32  
  nop                         #  3     0x30649  1      OPC=nop             
  nop                         #  4     0x3064a  1      OPC=nop             
  nop                         #  5     0x3064b  1      OPC=nop             
  nop                         #  6     0x3064c  1      OPC=nop             
  addq %r15, %r11             #  7     0x3064d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x30650  3      OPC=jmpq_r64        
  nop                         #  9     0x30653  1      OPC=nop             
  nop                         #  10    0x30654  1      OPC=nop             
  nop                         #  11    0x30655  1      OPC=nop             
  nop                         #  12    0x30656  1      OPC=nop             
  nop                         #  13    0x30657  1      OPC=nop             
  nop                         #  14    0x30658  1      OPC=nop             
  nop                         #  15    0x30659  1      OPC=nop             
  nop                         #  16    0x3065a  1      OPC=nop             
  nop                         #  17    0x3065b  1      OPC=nop             
  nop                         #  18    0x3065c  1      OPC=nop             
  nop                         #  19    0x3065d  1      OPC=nop             
  nop                         #  20    0x3065e  1      OPC=nop             
  nop                         #  21    0x3065f  1      OPC=nop             
  nop                         #  22    0x30660  1      OPC=nop             
  nop                         #  23    0x30661  1      OPC=nop             
  nop                         #  24    0x30662  1      OPC=nop             
  nop                         #  25    0x30663  1      OPC=nop             
  nop                         #  26    0x30664  1      OPC=nop             
  nop                         #  27    0x30665  1      OPC=nop             
  nop                         #  28    0x30666  1      OPC=nop             
                                                                           
.size NACL_AnnotateMutexIsNotPHB, .-NACL_AnnotateMutexIsNotPHB

