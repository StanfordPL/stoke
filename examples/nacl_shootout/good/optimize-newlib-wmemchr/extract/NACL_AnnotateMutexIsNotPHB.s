  .text
  .globl NACL_AnnotateMutexIsNotPHB
  .type NACL_AnnotateMutexIsNotPHB, @function

#! file-offset 0x6ff20
#! rip-offset  0x2ff20
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateMutexIsNotPHB:  #        0x2ff20  0      OPC=<label>         
  popq %r11                   #  1     0x2ff20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x2ff22  7      OPC=andl_r32_imm32  
  nop                         #  3     0x2ff29  1      OPC=nop             
  nop                         #  4     0x2ff2a  1      OPC=nop             
  nop                         #  5     0x2ff2b  1      OPC=nop             
  nop                         #  6     0x2ff2c  1      OPC=nop             
  addq %r15, %r11             #  7     0x2ff2d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x2ff30  3      OPC=jmpq_r64        
  nop                         #  9     0x2ff33  1      OPC=nop             
  nop                         #  10    0x2ff34  1      OPC=nop             
  nop                         #  11    0x2ff35  1      OPC=nop             
  nop                         #  12    0x2ff36  1      OPC=nop             
  nop                         #  13    0x2ff37  1      OPC=nop             
  nop                         #  14    0x2ff38  1      OPC=nop             
  nop                         #  15    0x2ff39  1      OPC=nop             
  nop                         #  16    0x2ff3a  1      OPC=nop             
  nop                         #  17    0x2ff3b  1      OPC=nop             
  nop                         #  18    0x2ff3c  1      OPC=nop             
  nop                         #  19    0x2ff3d  1      OPC=nop             
  nop                         #  20    0x2ff3e  1      OPC=nop             
  nop                         #  21    0x2ff3f  1      OPC=nop             
  nop                         #  22    0x2ff40  1      OPC=nop             
  nop                         #  23    0x2ff41  1      OPC=nop             
  nop                         #  24    0x2ff42  1      OPC=nop             
  nop                         #  25    0x2ff43  1      OPC=nop             
  nop                         #  26    0x2ff44  1      OPC=nop             
  nop                         #  27    0x2ff45  1      OPC=nop             
  nop                         #  28    0x2ff46  1      OPC=nop             
                                                                           
.size NACL_AnnotateMutexIsNotPHB, .-NACL_AnnotateMutexIsNotPHB

