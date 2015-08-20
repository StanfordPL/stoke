  .text
  .globl NACL_AnnotatePCQPut
  .type NACL_AnnotatePCQPut, @function

#! file-offset 0x6fe20
#! rip-offset  0x2fe20
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQPut:      #        0x2fe20  0      OPC=<label>         
  popq %r11                #  1     0x2fe20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fe22  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fe29  1      OPC=nop             
  nop                      #  4     0x2fe2a  1      OPC=nop             
  nop                      #  5     0x2fe2b  1      OPC=nop             
  nop                      #  6     0x2fe2c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fe2d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fe30  3      OPC=jmpq_r64        
  nop                      #  9     0x2fe33  1      OPC=nop             
  nop                      #  10    0x2fe34  1      OPC=nop             
  nop                      #  11    0x2fe35  1      OPC=nop             
  nop                      #  12    0x2fe36  1      OPC=nop             
  nop                      #  13    0x2fe37  1      OPC=nop             
  nop                      #  14    0x2fe38  1      OPC=nop             
  nop                      #  15    0x2fe39  1      OPC=nop             
  nop                      #  16    0x2fe3a  1      OPC=nop             
  nop                      #  17    0x2fe3b  1      OPC=nop             
  nop                      #  18    0x2fe3c  1      OPC=nop             
  nop                      #  19    0x2fe3d  1      OPC=nop             
  nop                      #  20    0x2fe3e  1      OPC=nop             
  nop                      #  21    0x2fe3f  1      OPC=nop             
  nop                      #  22    0x2fe40  1      OPC=nop             
  nop                      #  23    0x2fe41  1      OPC=nop             
  nop                      #  24    0x2fe42  1      OPC=nop             
  nop                      #  25    0x2fe43  1      OPC=nop             
  nop                      #  26    0x2fe44  1      OPC=nop             
  nop                      #  27    0x2fe45  1      OPC=nop             
  nop                      #  28    0x2fe46  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQPut, .-NACL_AnnotatePCQPut

