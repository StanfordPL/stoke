  .text
  .globl NACL_AnnotatePublishMemoryRange
  .type NACL_AnnotatePublishMemoryRange, @function

#! file-offset 0x6fda0
#! rip-offset  0x2fda0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePublishMemoryRange:  #        0x2fda0  0      OPC=<label>         
  popq %r11                        #  1     0x2fda0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  2     0x2fda2  7      OPC=andl_r32_imm32  
  nop                              #  3     0x2fda9  1      OPC=nop             
  nop                              #  4     0x2fdaa  1      OPC=nop             
  nop                              #  5     0x2fdab  1      OPC=nop             
  nop                              #  6     0x2fdac  1      OPC=nop             
  addq %r15, %r11                  #  7     0x2fdad  3      OPC=addq_r64_r64    
  jmpq %r11                        #  8     0x2fdb0  3      OPC=jmpq_r64        
  nop                              #  9     0x2fdb3  1      OPC=nop             
  nop                              #  10    0x2fdb4  1      OPC=nop             
  nop                              #  11    0x2fdb5  1      OPC=nop             
  nop                              #  12    0x2fdb6  1      OPC=nop             
  nop                              #  13    0x2fdb7  1      OPC=nop             
  nop                              #  14    0x2fdb8  1      OPC=nop             
  nop                              #  15    0x2fdb9  1      OPC=nop             
  nop                              #  16    0x2fdba  1      OPC=nop             
  nop                              #  17    0x2fdbb  1      OPC=nop             
  nop                              #  18    0x2fdbc  1      OPC=nop             
  nop                              #  19    0x2fdbd  1      OPC=nop             
  nop                              #  20    0x2fdbe  1      OPC=nop             
  nop                              #  21    0x2fdbf  1      OPC=nop             
  nop                              #  22    0x2fdc0  1      OPC=nop             
  nop                              #  23    0x2fdc1  1      OPC=nop             
  nop                              #  24    0x2fdc2  1      OPC=nop             
  nop                              #  25    0x2fdc3  1      OPC=nop             
  nop                              #  26    0x2fdc4  1      OPC=nop             
  nop                              #  27    0x2fdc5  1      OPC=nop             
  nop                              #  28    0x2fdc6  1      OPC=nop             
                                                                                
.size NACL_AnnotatePublishMemoryRange, .-NACL_AnnotatePublishMemoryRange

