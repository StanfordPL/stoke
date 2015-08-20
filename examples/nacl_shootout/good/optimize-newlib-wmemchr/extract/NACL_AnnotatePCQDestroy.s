  .text
  .globl NACL_AnnotatePCQDestroy
  .type NACL_AnnotatePCQDestroy, @function

#! file-offset 0x6fe00
#! rip-offset  0x2fe00
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePCQDestroy:  #        0x2fe00  0      OPC=<label>         
  popq %r11                #  1     0x2fe00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fe02  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fe09  1      OPC=nop             
  nop                      #  4     0x2fe0a  1      OPC=nop             
  nop                      #  5     0x2fe0b  1      OPC=nop             
  nop                      #  6     0x2fe0c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fe0d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fe10  3      OPC=jmpq_r64        
  nop                      #  9     0x2fe13  1      OPC=nop             
  nop                      #  10    0x2fe14  1      OPC=nop             
  nop                      #  11    0x2fe15  1      OPC=nop             
  nop                      #  12    0x2fe16  1      OPC=nop             
  nop                      #  13    0x2fe17  1      OPC=nop             
  nop                      #  14    0x2fe18  1      OPC=nop             
  nop                      #  15    0x2fe19  1      OPC=nop             
  nop                      #  16    0x2fe1a  1      OPC=nop             
  nop                      #  17    0x2fe1b  1      OPC=nop             
  nop                      #  18    0x2fe1c  1      OPC=nop             
  nop                      #  19    0x2fe1d  1      OPC=nop             
  nop                      #  20    0x2fe1e  1      OPC=nop             
  nop                      #  21    0x2fe1f  1      OPC=nop             
  nop                      #  22    0x2fe20  1      OPC=nop             
  nop                      #  23    0x2fe21  1      OPC=nop             
  nop                      #  24    0x2fe22  1      OPC=nop             
  nop                      #  25    0x2fe23  1      OPC=nop             
  nop                      #  26    0x2fe24  1      OPC=nop             
  nop                      #  27    0x2fe25  1      OPC=nop             
  nop                      #  28    0x2fe26  1      OPC=nop             
                                                                        
.size NACL_AnnotatePCQDestroy, .-NACL_AnnotatePCQDestroy

