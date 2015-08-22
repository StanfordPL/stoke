  .text
  .globl NACL_AnnotateBarrierDestroy
  .type NACL_AnnotateBarrierDestroy, @function

#! file-offset 0x70400
#! rip-offset  0x30400
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierDestroy:  #        0x30400  0      OPC=<label>         
  popq %r11                    #  1     0x30400  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x30402  7      OPC=andl_r32_imm32  
  nop                          #  3     0x30409  1      OPC=nop             
  nop                          #  4     0x3040a  1      OPC=nop             
  nop                          #  5     0x3040b  1      OPC=nop             
  nop                          #  6     0x3040c  1      OPC=nop             
  addq %r15, %r11              #  7     0x3040d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x30410  3      OPC=jmpq_r64        
  nop                          #  9     0x30413  1      OPC=nop             
  nop                          #  10    0x30414  1      OPC=nop             
  nop                          #  11    0x30415  1      OPC=nop             
  nop                          #  12    0x30416  1      OPC=nop             
  nop                          #  13    0x30417  1      OPC=nop             
  nop                          #  14    0x30418  1      OPC=nop             
  nop                          #  15    0x30419  1      OPC=nop             
  nop                          #  16    0x3041a  1      OPC=nop             
  nop                          #  17    0x3041b  1      OPC=nop             
  nop                          #  18    0x3041c  1      OPC=nop             
  nop                          #  19    0x3041d  1      OPC=nop             
  nop                          #  20    0x3041e  1      OPC=nop             
  nop                          #  21    0x3041f  1      OPC=nop             
  nop                          #  22    0x30420  1      OPC=nop             
  nop                          #  23    0x30421  1      OPC=nop             
  nop                          #  24    0x30422  1      OPC=nop             
  nop                          #  25    0x30423  1      OPC=nop             
  nop                          #  26    0x30424  1      OPC=nop             
  nop                          #  27    0x30425  1      OPC=nop             
  nop                          #  28    0x30426  1      OPC=nop             
                                                                            
.size NACL_AnnotateBarrierDestroy, .-NACL_AnnotateBarrierDestroy

