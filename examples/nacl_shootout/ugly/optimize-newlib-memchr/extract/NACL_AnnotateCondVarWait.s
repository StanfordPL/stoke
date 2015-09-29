  .text
  .globl NACL_AnnotateCondVarWait
  .type NACL_AnnotateCondVarWait, @function

#! file-offset 0x70420
#! rip-offset  0x30420
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateCondVarWait:  #        0x30420  0      OPC=<label>         
  popq %r11                 #  1     0x30420  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  2     0x30422  7      OPC=andl_r32_imm32  
  nop                       #  3     0x30429  1      OPC=nop             
  nop                       #  4     0x3042a  1      OPC=nop             
  nop                       #  5     0x3042b  1      OPC=nop             
  nop                       #  6     0x3042c  1      OPC=nop             
  addq %r15, %r11           #  7     0x3042d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  8     0x30430  3      OPC=jmpq_r64        
  nop                       #  9     0x30433  1      OPC=nop             
  nop                       #  10    0x30434  1      OPC=nop             
  nop                       #  11    0x30435  1      OPC=nop             
  nop                       #  12    0x30436  1      OPC=nop             
  nop                       #  13    0x30437  1      OPC=nop             
  nop                       #  14    0x30438  1      OPC=nop             
  nop                       #  15    0x30439  1      OPC=nop             
  nop                       #  16    0x3043a  1      OPC=nop             
  nop                       #  17    0x3043b  1      OPC=nop             
  nop                       #  18    0x3043c  1      OPC=nop             
  nop                       #  19    0x3043d  1      OPC=nop             
  nop                       #  20    0x3043e  1      OPC=nop             
  nop                       #  21    0x3043f  1      OPC=nop             
  nop                       #  22    0x30440  1      OPC=nop             
  nop                       #  23    0x30441  1      OPC=nop             
  nop                       #  24    0x30442  1      OPC=nop             
  nop                       #  25    0x30443  1      OPC=nop             
  nop                       #  26    0x30444  1      OPC=nop             
  nop                       #  27    0x30445  1      OPC=nop             
  nop                       #  28    0x30446  1      OPC=nop             
                                                                         
.size NACL_AnnotateCondVarWait, .-NACL_AnnotateCondVarWait

