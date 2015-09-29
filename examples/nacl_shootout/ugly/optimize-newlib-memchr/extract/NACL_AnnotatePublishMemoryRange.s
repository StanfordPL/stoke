  .text
  .globl NACL_AnnotatePublishMemoryRange
  .type NACL_AnnotatePublishMemoryRange, @function

#! file-offset 0x704c0
#! rip-offset  0x304c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.NACL_AnnotatePublishMemoryRange:  #        0x304c0  0      OPC=<label>         
  popq %r11                        #  1     0x304c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  2     0x304c2  7      OPC=andl_r32_imm32  
  nop                              #  3     0x304c9  1      OPC=nop             
  nop                              #  4     0x304ca  1      OPC=nop             
  nop                              #  5     0x304cb  1      OPC=nop             
  nop                              #  6     0x304cc  1      OPC=nop             
  addq %r15, %r11                  #  7     0x304cd  3      OPC=addq_r64_r64    
  jmpq %r11                        #  8     0x304d0  3      OPC=jmpq_r64        
  nop                              #  9     0x304d3  1      OPC=nop             
  nop                              #  10    0x304d4  1      OPC=nop             
  nop                              #  11    0x304d5  1      OPC=nop             
  nop                              #  12    0x304d6  1      OPC=nop             
  nop                              #  13    0x304d7  1      OPC=nop             
  nop                              #  14    0x304d8  1      OPC=nop             
  nop                              #  15    0x304d9  1      OPC=nop             
  nop                              #  16    0x304da  1      OPC=nop             
  nop                              #  17    0x304db  1      OPC=nop             
  nop                              #  18    0x304dc  1      OPC=nop             
  nop                              #  19    0x304dd  1      OPC=nop             
  nop                              #  20    0x304de  1      OPC=nop             
  nop                              #  21    0x304df  1      OPC=nop             
  nop                              #  22    0x304e0  1      OPC=nop             
  nop                              #  23    0x304e1  1      OPC=nop             
  nop                              #  24    0x304e2  1      OPC=nop             
  nop                              #  25    0x304e3  1      OPC=nop             
  nop                              #  26    0x304e4  1      OPC=nop             
  nop                              #  27    0x304e5  1      OPC=nop             
  nop                              #  28    0x304e6  1      OPC=nop             
                                                                                
.size NACL_AnnotatePublishMemoryRange, .-NACL_AnnotatePublishMemoryRange

