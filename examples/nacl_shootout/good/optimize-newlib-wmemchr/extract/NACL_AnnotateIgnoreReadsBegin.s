  .text
  .globl NACL_AnnotateIgnoreReadsBegin
  .type NACL_AnnotateIgnoreReadsBegin, @function

#! file-offset 0x6ff80
#! rip-offset  0x2ff80
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreReadsBegin:  #        0x2ff80  0      OPC=<label>         
  popq %r11                      #  1     0x2ff80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  2     0x2ff82  7      OPC=andl_r32_imm32  
  nop                            #  3     0x2ff89  1      OPC=nop             
  nop                            #  4     0x2ff8a  1      OPC=nop             
  nop                            #  5     0x2ff8b  1      OPC=nop             
  nop                            #  6     0x2ff8c  1      OPC=nop             
  addq %r15, %r11                #  7     0x2ff8d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  8     0x2ff90  3      OPC=jmpq_r64        
  nop                            #  9     0x2ff93  1      OPC=nop             
  nop                            #  10    0x2ff94  1      OPC=nop             
  nop                            #  11    0x2ff95  1      OPC=nop             
  nop                            #  12    0x2ff96  1      OPC=nop             
  nop                            #  13    0x2ff97  1      OPC=nop             
  nop                            #  14    0x2ff98  1      OPC=nop             
  nop                            #  15    0x2ff99  1      OPC=nop             
  nop                            #  16    0x2ff9a  1      OPC=nop             
  nop                            #  17    0x2ff9b  1      OPC=nop             
  nop                            #  18    0x2ff9c  1      OPC=nop             
  nop                            #  19    0x2ff9d  1      OPC=nop             
  nop                            #  20    0x2ff9e  1      OPC=nop             
  nop                            #  21    0x2ff9f  1      OPC=nop             
  nop                            #  22    0x2ffa0  1      OPC=nop             
  nop                            #  23    0x2ffa1  1      OPC=nop             
  nop                            #  24    0x2ffa2  1      OPC=nop             
  nop                            #  25    0x2ffa3  1      OPC=nop             
  nop                            #  26    0x2ffa4  1      OPC=nop             
  nop                            #  27    0x2ffa5  1      OPC=nop             
  nop                            #  28    0x2ffa6  1      OPC=nop             
                                                                              
.size NACL_AnnotateIgnoreReadsBegin, .-NACL_AnnotateIgnoreReadsBegin

