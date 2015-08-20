  .text
  .globl NACL_AnnotateIgnoreWritesBegin
  .type NACL_AnnotateIgnoreWritesBegin, @function

#! file-offset 0x6ffc0
#! rip-offset  0x2ffc0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreWritesBegin:  #        0x2ffc0  0      OPC=<label>         
  popq %r11                       #  1     0x2ffc0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  2     0x2ffc2  7      OPC=andl_r32_imm32  
  nop                             #  3     0x2ffc9  1      OPC=nop             
  nop                             #  4     0x2ffca  1      OPC=nop             
  nop                             #  5     0x2ffcb  1      OPC=nop             
  nop                             #  6     0x2ffcc  1      OPC=nop             
  addq %r15, %r11                 #  7     0x2ffcd  3      OPC=addq_r64_r64    
  jmpq %r11                       #  8     0x2ffd0  3      OPC=jmpq_r64        
  nop                             #  9     0x2ffd3  1      OPC=nop             
  nop                             #  10    0x2ffd4  1      OPC=nop             
  nop                             #  11    0x2ffd5  1      OPC=nop             
  nop                             #  12    0x2ffd6  1      OPC=nop             
  nop                             #  13    0x2ffd7  1      OPC=nop             
  nop                             #  14    0x2ffd8  1      OPC=nop             
  nop                             #  15    0x2ffd9  1      OPC=nop             
  nop                             #  16    0x2ffda  1      OPC=nop             
  nop                             #  17    0x2ffdb  1      OPC=nop             
  nop                             #  18    0x2ffdc  1      OPC=nop             
  nop                             #  19    0x2ffdd  1      OPC=nop             
  nop                             #  20    0x2ffde  1      OPC=nop             
  nop                             #  21    0x2ffdf  1      OPC=nop             
  nop                             #  22    0x2ffe0  1      OPC=nop             
  nop                             #  23    0x2ffe1  1      OPC=nop             
  nop                             #  24    0x2ffe2  1      OPC=nop             
  nop                             #  25    0x2ffe3  1      OPC=nop             
  nop                             #  26    0x2ffe4  1      OPC=nop             
  nop                             #  27    0x2ffe5  1      OPC=nop             
  nop                             #  28    0x2ffe6  1      OPC=nop             
                                                                               
.size NACL_AnnotateIgnoreWritesBegin, .-NACL_AnnotateIgnoreWritesBegin

