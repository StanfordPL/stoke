  .text
  .globl NACL_AnnotateFlushState
  .type NACL_AnnotateFlushState, @function

#! file-offset 0x6fd80
#! rip-offset  0x2fd80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateFlushState:  #        0x2fd80  0      OPC=<label>         
  popq %r11                #  1     0x2fd80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fd82  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fd89  1      OPC=nop             
  nop                      #  4     0x2fd8a  1      OPC=nop             
  nop                      #  5     0x2fd8b  1      OPC=nop             
  nop                      #  6     0x2fd8c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fd8d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fd90  3      OPC=jmpq_r64        
  nop                      #  9     0x2fd93  1      OPC=nop             
  nop                      #  10    0x2fd94  1      OPC=nop             
  nop                      #  11    0x2fd95  1      OPC=nop             
  nop                      #  12    0x2fd96  1      OPC=nop             
  nop                      #  13    0x2fd97  1      OPC=nop             
  nop                      #  14    0x2fd98  1      OPC=nop             
  nop                      #  15    0x2fd99  1      OPC=nop             
  nop                      #  16    0x2fd9a  1      OPC=nop             
  nop                      #  17    0x2fd9b  1      OPC=nop             
  nop                      #  18    0x2fd9c  1      OPC=nop             
  nop                      #  19    0x2fd9d  1      OPC=nop             
  nop                      #  20    0x2fd9e  1      OPC=nop             
  nop                      #  21    0x2fd9f  1      OPC=nop             
  nop                      #  22    0x2fda0  1      OPC=nop             
  nop                      #  23    0x2fda1  1      OPC=nop             
  nop                      #  24    0x2fda2  1      OPC=nop             
  nop                      #  25    0x2fda3  1      OPC=nop             
  nop                      #  26    0x2fda4  1      OPC=nop             
  nop                      #  27    0x2fda5  1      OPC=nop             
  nop                      #  28    0x2fda6  1      OPC=nop             
                                                                        
.size NACL_AnnotateFlushState, .-NACL_AnnotateFlushState

