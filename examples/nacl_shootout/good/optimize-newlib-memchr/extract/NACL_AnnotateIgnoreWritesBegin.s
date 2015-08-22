  .text
  .globl NACL_AnnotateIgnoreWritesBegin
  .type NACL_AnnotateIgnoreWritesBegin, @function

#! file-offset 0x706e0
#! rip-offset  0x306e0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreWritesBegin:  #        0x306e0  0      OPC=<label>         
  popq %r11                       #  1     0x306e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  2     0x306e2  7      OPC=andl_r32_imm32  
  nop                             #  3     0x306e9  1      OPC=nop             
  nop                             #  4     0x306ea  1      OPC=nop             
  nop                             #  5     0x306eb  1      OPC=nop             
  nop                             #  6     0x306ec  1      OPC=nop             
  addq %r15, %r11                 #  7     0x306ed  3      OPC=addq_r64_r64    
  jmpq %r11                       #  8     0x306f0  3      OPC=jmpq_r64        
  nop                             #  9     0x306f3  1      OPC=nop             
  nop                             #  10    0x306f4  1      OPC=nop             
  nop                             #  11    0x306f5  1      OPC=nop             
  nop                             #  12    0x306f6  1      OPC=nop             
  nop                             #  13    0x306f7  1      OPC=nop             
  nop                             #  14    0x306f8  1      OPC=nop             
  nop                             #  15    0x306f9  1      OPC=nop             
  nop                             #  16    0x306fa  1      OPC=nop             
  nop                             #  17    0x306fb  1      OPC=nop             
  nop                             #  18    0x306fc  1      OPC=nop             
  nop                             #  19    0x306fd  1      OPC=nop             
  nop                             #  20    0x306fe  1      OPC=nop             
  nop                             #  21    0x306ff  1      OPC=nop             
  nop                             #  22    0x30700  1      OPC=nop             
  nop                             #  23    0x30701  1      OPC=nop             
  nop                             #  24    0x30702  1      OPC=nop             
  nop                             #  25    0x30703  1      OPC=nop             
  nop                             #  26    0x30704  1      OPC=nop             
  nop                             #  27    0x30705  1      OPC=nop             
  nop                             #  28    0x30706  1      OPC=nop             
                                                                               
.size NACL_AnnotateIgnoreWritesBegin, .-NACL_AnnotateIgnoreWritesBegin

