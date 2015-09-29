  .text
  .globl NACL_AnnotateBarrierWaitAfter
  .type NACL_AnnotateBarrierWaitAfter, @function

#! file-offset 0x703e0
#! rip-offset  0x303e0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierWaitAfter:  #        0x303e0  0      OPC=<label>         
  popq %r11                      #  1     0x303e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  2     0x303e2  7      OPC=andl_r32_imm32  
  nop                            #  3     0x303e9  1      OPC=nop             
  nop                            #  4     0x303ea  1      OPC=nop             
  nop                            #  5     0x303eb  1      OPC=nop             
  nop                            #  6     0x303ec  1      OPC=nop             
  addq %r15, %r11                #  7     0x303ed  3      OPC=addq_r64_r64    
  jmpq %r11                      #  8     0x303f0  3      OPC=jmpq_r64        
  nop                            #  9     0x303f3  1      OPC=nop             
  nop                            #  10    0x303f4  1      OPC=nop             
  nop                            #  11    0x303f5  1      OPC=nop             
  nop                            #  12    0x303f6  1      OPC=nop             
  nop                            #  13    0x303f7  1      OPC=nop             
  nop                            #  14    0x303f8  1      OPC=nop             
  nop                            #  15    0x303f9  1      OPC=nop             
  nop                            #  16    0x303fa  1      OPC=nop             
  nop                            #  17    0x303fb  1      OPC=nop             
  nop                            #  18    0x303fc  1      OPC=nop             
  nop                            #  19    0x303fd  1      OPC=nop             
  nop                            #  20    0x303fe  1      OPC=nop             
  nop                            #  21    0x303ff  1      OPC=nop             
  nop                            #  22    0x30400  1      OPC=nop             
  nop                            #  23    0x30401  1      OPC=nop             
  nop                            #  24    0x30402  1      OPC=nop             
  nop                            #  25    0x30403  1      OPC=nop             
  nop                            #  26    0x30404  1      OPC=nop             
  nop                            #  27    0x30405  1      OPC=nop             
  nop                            #  28    0x30406  1      OPC=nop             
                                                                              
.size NACL_AnnotateBarrierWaitAfter, .-NACL_AnnotateBarrierWaitAfter

