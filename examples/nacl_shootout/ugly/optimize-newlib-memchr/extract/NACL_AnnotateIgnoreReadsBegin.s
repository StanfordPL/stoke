  .text
  .globl NACL_AnnotateIgnoreReadsBegin
  .type NACL_AnnotateIgnoreReadsBegin, @function

#! file-offset 0x706a0
#! rip-offset  0x306a0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreReadsBegin:  #        0x306a0  0      OPC=<label>         
  popq %r11                      #  1     0x306a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  2     0x306a2  7      OPC=andl_r32_imm32  
  nop                            #  3     0x306a9  1      OPC=nop             
  nop                            #  4     0x306aa  1      OPC=nop             
  nop                            #  5     0x306ab  1      OPC=nop             
  nop                            #  6     0x306ac  1      OPC=nop             
  addq %r15, %r11                #  7     0x306ad  3      OPC=addq_r64_r64    
  jmpq %r11                      #  8     0x306b0  3      OPC=jmpq_r64        
  nop                            #  9     0x306b3  1      OPC=nop             
  nop                            #  10    0x306b4  1      OPC=nop             
  nop                            #  11    0x306b5  1      OPC=nop             
  nop                            #  12    0x306b6  1      OPC=nop             
  nop                            #  13    0x306b7  1      OPC=nop             
  nop                            #  14    0x306b8  1      OPC=nop             
  nop                            #  15    0x306b9  1      OPC=nop             
  nop                            #  16    0x306ba  1      OPC=nop             
  nop                            #  17    0x306bb  1      OPC=nop             
  nop                            #  18    0x306bc  1      OPC=nop             
  nop                            #  19    0x306bd  1      OPC=nop             
  nop                            #  20    0x306be  1      OPC=nop             
  nop                            #  21    0x306bf  1      OPC=nop             
  nop                            #  22    0x306c0  1      OPC=nop             
  nop                            #  23    0x306c1  1      OPC=nop             
  nop                            #  24    0x306c2  1      OPC=nop             
  nop                            #  25    0x306c3  1      OPC=nop             
  nop                            #  26    0x306c4  1      OPC=nop             
  nop                            #  27    0x306c5  1      OPC=nop             
  nop                            #  28    0x306c6  1      OPC=nop             
                                                                              
.size NACL_AnnotateIgnoreReadsBegin, .-NACL_AnnotateIgnoreReadsBegin

