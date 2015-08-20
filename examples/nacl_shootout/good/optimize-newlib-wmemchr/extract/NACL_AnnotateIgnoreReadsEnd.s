  .text
  .globl NACL_AnnotateIgnoreReadsEnd
  .type NACL_AnnotateIgnoreReadsEnd, @function

#! file-offset 0x6ffa0
#! rip-offset  0x2ffa0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreReadsEnd:  #        0x2ffa0  0      OPC=<label>         
  popq %r11                    #  1     0x2ffa0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x2ffa2  7      OPC=andl_r32_imm32  
  nop                          #  3     0x2ffa9  1      OPC=nop             
  nop                          #  4     0x2ffaa  1      OPC=nop             
  nop                          #  5     0x2ffab  1      OPC=nop             
  nop                          #  6     0x2ffac  1      OPC=nop             
  addq %r15, %r11              #  7     0x2ffad  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x2ffb0  3      OPC=jmpq_r64        
  nop                          #  9     0x2ffb3  1      OPC=nop             
  nop                          #  10    0x2ffb4  1      OPC=nop             
  nop                          #  11    0x2ffb5  1      OPC=nop             
  nop                          #  12    0x2ffb6  1      OPC=nop             
  nop                          #  13    0x2ffb7  1      OPC=nop             
  nop                          #  14    0x2ffb8  1      OPC=nop             
  nop                          #  15    0x2ffb9  1      OPC=nop             
  nop                          #  16    0x2ffba  1      OPC=nop             
  nop                          #  17    0x2ffbb  1      OPC=nop             
  nop                          #  18    0x2ffbc  1      OPC=nop             
  nop                          #  19    0x2ffbd  1      OPC=nop             
  nop                          #  20    0x2ffbe  1      OPC=nop             
  nop                          #  21    0x2ffbf  1      OPC=nop             
  nop                          #  22    0x2ffc0  1      OPC=nop             
  nop                          #  23    0x2ffc1  1      OPC=nop             
  nop                          #  24    0x2ffc2  1      OPC=nop             
  nop                          #  25    0x2ffc3  1      OPC=nop             
  nop                          #  26    0x2ffc4  1      OPC=nop             
  nop                          #  27    0x2ffc5  1      OPC=nop             
  nop                          #  28    0x2ffc6  1      OPC=nop             
                                                                            
.size NACL_AnnotateIgnoreReadsEnd, .-NACL_AnnotateIgnoreReadsEnd

