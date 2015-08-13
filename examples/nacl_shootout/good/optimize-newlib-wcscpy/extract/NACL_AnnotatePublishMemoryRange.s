  .text
  .globl NACL_AnnotatePublishMemoryRange
  .type NACL_AnnotatePublishMemoryRange, @function

#! file-offset 0x6faa0
#! rip-offset  0x2faa0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePublishMemoryRange:  #        0x2faa0  0      OPC=<label>         
  popq %r11                        #  1     0x2faa0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  2     0x2faa2  7      OPC=andl_r32_imm32  
  nop                              #  3     0x2faa9  1      OPC=nop             
  nop                              #  4     0x2faaa  1      OPC=nop             
  nop                              #  5     0x2faab  1      OPC=nop             
  nop                              #  6     0x2faac  1      OPC=nop             
  addq %r15, %r11                  #  7     0x2faad  3      OPC=addq_r64_r64    
  jmpq %r11                        #  8     0x2fab0  3      OPC=jmpq_r64        
  nop                              #  9     0x2fab3  1      OPC=nop             
  nop                              #  10    0x2fab4  1      OPC=nop             
  nop                              #  11    0x2fab5  1      OPC=nop             
  nop                              #  12    0x2fab6  1      OPC=nop             
  nop                              #  13    0x2fab7  1      OPC=nop             
  nop                              #  14    0x2fab8  1      OPC=nop             
  nop                              #  15    0x2fab9  1      OPC=nop             
  nop                              #  16    0x2faba  1      OPC=nop             
  nop                              #  17    0x2fabb  1      OPC=nop             
  nop                              #  18    0x2fabc  1      OPC=nop             
  nop                              #  19    0x2fabd  1      OPC=nop             
  nop                              #  20    0x2fabe  1      OPC=nop             
  nop                              #  21    0x2fabf  1      OPC=nop             
  nop                              #  22    0x2fac0  1      OPC=nop             
  nop                              #  23    0x2fac1  1      OPC=nop             
  nop                              #  24    0x2fac2  1      OPC=nop             
  nop                              #  25    0x2fac3  1      OPC=nop             
  nop                              #  26    0x2fac4  1      OPC=nop             
  nop                              #  27    0x2fac5  1      OPC=nop             
  nop                              #  28    0x2fac6  1      OPC=nop             
                                                                                
.size NACL_AnnotatePublishMemoryRange, .-NACL_AnnotatePublishMemoryRange

