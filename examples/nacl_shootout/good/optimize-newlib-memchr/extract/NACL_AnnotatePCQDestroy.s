  .text
  .globl NACL_AnnotatePCQDestroy
  .type NACL_AnnotatePCQDestroy, @function

#! file-offset 0x70520
#! rip-offset  0x30520
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQDestroy:  #        0x30520  0      OPC=<label>         
  popq %r11                #  1     0x30520  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30522  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30529  1      OPC=nop             
  nop                      #  4     0x3052a  1      OPC=nop             
  nop                      #  5     0x3052b  1      OPC=nop             
  nop                      #  6     0x3052c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3052d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30530  3      OPC=jmpq_r64        
  nop                      #  9     0x30533  1      OPC=nop             
  nop                      #  10    0x30534  1      OPC=nop             
  nop                      #  11    0x30535  1      OPC=nop             
  nop                      #  12    0x30536  1      OPC=nop             
  nop                      #  13    0x30537  1      OPC=nop             
  nop                      #  14    0x30538  1      OPC=nop             
  nop                      #  15    0x30539  1      OPC=nop             
  nop                      #  16    0x3053a  1      OPC=nop             
  nop                      #  17    0x3053b  1      OPC=nop             
  nop                      #  18    0x3053c  1      OPC=nop             
  nop                      #  19    0x3053d  1      OPC=nop             
  nop                      #  20    0x3053e  1      OPC=nop             
  nop                      #  21    0x3053f  1      OPC=nop             
  nop                      #  22    0x30540  1      OPC=nop             
  nop                      #  23    0x30541  1      OPC=nop             
  nop                      #  24    0x30542  1      OPC=nop             
  nop                      #  25    0x30543  1      OPC=nop             
  nop                      #  26    0x30544  1      OPC=nop             
  nop                      #  27    0x30545  1      OPC=nop             
  nop                      #  28    0x30546  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQDestroy, .-NACL_AnnotatePCQDestroy

