  .text
  .globl NACL_AnnotateBarrierDestroy
  .type NACL_AnnotateBarrierDestroy, @function

#! file-offset 0x6fce0
#! rip-offset  0x2fce0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierDestroy:  #        0x2fce0  0      OPC=<label>         
  popq %r11                    #  1     0x2fce0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x2fce2  7      OPC=andl_r32_imm32  
  nop                          #  3     0x2fce9  1      OPC=nop             
  nop                          #  4     0x2fcea  1      OPC=nop             
  nop                          #  5     0x2fceb  1      OPC=nop             
  nop                          #  6     0x2fcec  1      OPC=nop             
  addq %r15, %r11              #  7     0x2fced  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x2fcf0  3      OPC=jmpq_r64        
  nop                          #  9     0x2fcf3  1      OPC=nop             
  nop                          #  10    0x2fcf4  1      OPC=nop             
  nop                          #  11    0x2fcf5  1      OPC=nop             
  nop                          #  12    0x2fcf6  1      OPC=nop             
  nop                          #  13    0x2fcf7  1      OPC=nop             
  nop                          #  14    0x2fcf8  1      OPC=nop             
  nop                          #  15    0x2fcf9  1      OPC=nop             
  nop                          #  16    0x2fcfa  1      OPC=nop             
  nop                          #  17    0x2fcfb  1      OPC=nop             
  nop                          #  18    0x2fcfc  1      OPC=nop             
  nop                          #  19    0x2fcfd  1      OPC=nop             
  nop                          #  20    0x2fcfe  1      OPC=nop             
  nop                          #  21    0x2fcff  1      OPC=nop             
  nop                          #  22    0x2fd00  1      OPC=nop             
  nop                          #  23    0x2fd01  1      OPC=nop             
  nop                          #  24    0x2fd02  1      OPC=nop             
  nop                          #  25    0x2fd03  1      OPC=nop             
  nop                          #  26    0x2fd04  1      OPC=nop             
  nop                          #  27    0x2fd05  1      OPC=nop             
  nop                          #  28    0x2fd06  1      OPC=nop             
                                                                            
.size NACL_AnnotateBarrierDestroy, .-NACL_AnnotateBarrierDestroy

