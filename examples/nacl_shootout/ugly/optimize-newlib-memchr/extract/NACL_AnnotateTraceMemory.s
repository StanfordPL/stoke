  .text
  .globl NACL_AnnotateTraceMemory
  .type NACL_AnnotateTraceMemory, @function

#! file-offset 0x70660
#! rip-offset  0x30660
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateTraceMemory:  #        0x30660  0      OPC=<label>         
  popq %r11                 #  1     0x30660  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  2     0x30662  7      OPC=andl_r32_imm32  
  nop                       #  3     0x30669  1      OPC=nop             
  nop                       #  4     0x3066a  1      OPC=nop             
  nop                       #  5     0x3066b  1      OPC=nop             
  nop                       #  6     0x3066c  1      OPC=nop             
  addq %r15, %r11           #  7     0x3066d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  8     0x30670  3      OPC=jmpq_r64        
  nop                       #  9     0x30673  1      OPC=nop             
  nop                       #  10    0x30674  1      OPC=nop             
  nop                       #  11    0x30675  1      OPC=nop             
  nop                       #  12    0x30676  1      OPC=nop             
  nop                       #  13    0x30677  1      OPC=nop             
  nop                       #  14    0x30678  1      OPC=nop             
  nop                       #  15    0x30679  1      OPC=nop             
  nop                       #  16    0x3067a  1      OPC=nop             
  nop                       #  17    0x3067b  1      OPC=nop             
  nop                       #  18    0x3067c  1      OPC=nop             
  nop                       #  19    0x3067d  1      OPC=nop             
  nop                       #  20    0x3067e  1      OPC=nop             
  nop                       #  21    0x3067f  1      OPC=nop             
  nop                       #  22    0x30680  1      OPC=nop             
  nop                       #  23    0x30681  1      OPC=nop             
  nop                       #  24    0x30682  1      OPC=nop             
  nop                       #  25    0x30683  1      OPC=nop             
  nop                       #  26    0x30684  1      OPC=nop             
  nop                       #  27    0x30685  1      OPC=nop             
  nop                       #  28    0x30686  1      OPC=nop             
                                                                         
.size NACL_AnnotateTraceMemory, .-NACL_AnnotateTraceMemory

