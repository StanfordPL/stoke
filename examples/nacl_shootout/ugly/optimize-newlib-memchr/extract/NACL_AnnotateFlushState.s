  .text
  .globl NACL_AnnotateFlushState
  .type NACL_AnnotateFlushState, @function

#! file-offset 0x707a0
#! rip-offset  0x307a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateFlushState:  #        0x307a0  0      OPC=<label>         
  popq %r11                #  1     0x307a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x307a2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x307a9  1      OPC=nop             
  nop                      #  4     0x307aa  1      OPC=nop             
  nop                      #  5     0x307ab  1      OPC=nop             
  nop                      #  6     0x307ac  1      OPC=nop             
  addq %r15, %r11          #  7     0x307ad  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x307b0  3      OPC=jmpq_r64        
  nop                      #  9     0x307b3  1      OPC=nop             
  nop                      #  10    0x307b4  1      OPC=nop             
  nop                      #  11    0x307b5  1      OPC=nop             
  nop                      #  12    0x307b6  1      OPC=nop             
  nop                      #  13    0x307b7  1      OPC=nop             
  nop                      #  14    0x307b8  1      OPC=nop             
  nop                      #  15    0x307b9  1      OPC=nop             
  nop                      #  16    0x307ba  1      OPC=nop             
  nop                      #  17    0x307bb  1      OPC=nop             
  nop                      #  18    0x307bc  1      OPC=nop             
  nop                      #  19    0x307bd  1      OPC=nop             
  nop                      #  20    0x307be  1      OPC=nop             
  nop                      #  21    0x307bf  1      OPC=nop             
  nop                      #  22    0x307c0  1      OPC=nop             
  nop                      #  23    0x307c1  1      OPC=nop             
  nop                      #  24    0x307c2  1      OPC=nop             
  nop                      #  25    0x307c3  1      OPC=nop             
  nop                      #  26    0x307c4  1      OPC=nop             
  nop                      #  27    0x307c5  1      OPC=nop             
  nop                      #  28    0x307c6  1      OPC=nop             
                                                                        
.size NACL_AnnotateFlushState, .-NACL_AnnotateFlushState

