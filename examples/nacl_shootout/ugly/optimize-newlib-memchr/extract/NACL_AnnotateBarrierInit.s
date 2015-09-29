  .text
  .globl NACL_AnnotateBarrierInit
  .type NACL_AnnotateBarrierInit, @function

#! file-offset 0x703a0
#! rip-offset  0x303a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierInit:  #        0x303a0  0      OPC=<label>         
  popq %r11                 #  1     0x303a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  2     0x303a2  7      OPC=andl_r32_imm32  
  nop                       #  3     0x303a9  1      OPC=nop             
  nop                       #  4     0x303aa  1      OPC=nop             
  nop                       #  5     0x303ab  1      OPC=nop             
  nop                       #  6     0x303ac  1      OPC=nop             
  addq %r15, %r11           #  7     0x303ad  3      OPC=addq_r64_r64    
  jmpq %r11                 #  8     0x303b0  3      OPC=jmpq_r64        
  nop                       #  9     0x303b3  1      OPC=nop             
  nop                       #  10    0x303b4  1      OPC=nop             
  nop                       #  11    0x303b5  1      OPC=nop             
  nop                       #  12    0x303b6  1      OPC=nop             
  nop                       #  13    0x303b7  1      OPC=nop             
  nop                       #  14    0x303b8  1      OPC=nop             
  nop                       #  15    0x303b9  1      OPC=nop             
  nop                       #  16    0x303ba  1      OPC=nop             
  nop                       #  17    0x303bb  1      OPC=nop             
  nop                       #  18    0x303bc  1      OPC=nop             
  nop                       #  19    0x303bd  1      OPC=nop             
  nop                       #  20    0x303be  1      OPC=nop             
  nop                       #  21    0x303bf  1      OPC=nop             
  nop                       #  22    0x303c0  1      OPC=nop             
  nop                       #  23    0x303c1  1      OPC=nop             
  nop                       #  24    0x303c2  1      OPC=nop             
  nop                       #  25    0x303c3  1      OPC=nop             
  nop                       #  26    0x303c4  1      OPC=nop             
  nop                       #  27    0x303c5  1      OPC=nop             
  nop                       #  28    0x303c6  1      OPC=nop             
                                                                         
.size NACL_AnnotateBarrierInit, .-NACL_AnnotateBarrierInit

