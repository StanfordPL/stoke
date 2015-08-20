  .text
  .globl NACL_AnnotateTraceMemory
  .type NACL_AnnotateTraceMemory, @function

#! file-offset 0x6ff40
#! rip-offset  0x2ff40
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateTraceMemory:  #        0x2ff40  0      OPC=<label>         
  popq %r11                 #  1     0x2ff40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  2     0x2ff42  7      OPC=andl_r32_imm32  
  nop                       #  3     0x2ff49  1      OPC=nop             
  nop                       #  4     0x2ff4a  1      OPC=nop             
  nop                       #  5     0x2ff4b  1      OPC=nop             
  nop                       #  6     0x2ff4c  1      OPC=nop             
  addq %r15, %r11           #  7     0x2ff4d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  8     0x2ff50  3      OPC=jmpq_r64        
  nop                       #  9     0x2ff53  1      OPC=nop             
  nop                       #  10    0x2ff54  1      OPC=nop             
  nop                       #  11    0x2ff55  1      OPC=nop             
  nop                       #  12    0x2ff56  1      OPC=nop             
  nop                       #  13    0x2ff57  1      OPC=nop             
  nop                       #  14    0x2ff58  1      OPC=nop             
  nop                       #  15    0x2ff59  1      OPC=nop             
  nop                       #  16    0x2ff5a  1      OPC=nop             
  nop                       #  17    0x2ff5b  1      OPC=nop             
  nop                       #  18    0x2ff5c  1      OPC=nop             
  nop                       #  19    0x2ff5d  1      OPC=nop             
  nop                       #  20    0x2ff5e  1      OPC=nop             
  nop                       #  21    0x2ff5f  1      OPC=nop             
  nop                       #  22    0x2ff60  1      OPC=nop             
  nop                       #  23    0x2ff61  1      OPC=nop             
  nop                       #  24    0x2ff62  1      OPC=nop             
  nop                       #  25    0x2ff63  1      OPC=nop             
  nop                       #  26    0x2ff64  1      OPC=nop             
  nop                       #  27    0x2ff65  1      OPC=nop             
  nop                       #  28    0x2ff66  1      OPC=nop             
                                                                         
.size NACL_AnnotateTraceMemory, .-NACL_AnnotateTraceMemory

