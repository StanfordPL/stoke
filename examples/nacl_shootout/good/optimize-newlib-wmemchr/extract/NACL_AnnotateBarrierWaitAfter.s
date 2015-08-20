  .text
  .globl NACL_AnnotateBarrierWaitAfter
  .type NACL_AnnotateBarrierWaitAfter, @function

#! file-offset 0x6fcc0
#! rip-offset  0x2fcc0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierWaitAfter:  #        0x2fcc0  0      OPC=<label>         
  popq %r11                      #  1     0x2fcc0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  2     0x2fcc2  7      OPC=andl_r32_imm32  
  nop                            #  3     0x2fcc9  1      OPC=nop             
  nop                            #  4     0x2fcca  1      OPC=nop             
  nop                            #  5     0x2fccb  1      OPC=nop             
  nop                            #  6     0x2fccc  1      OPC=nop             
  addq %r15, %r11                #  7     0x2fccd  3      OPC=addq_r64_r64    
  jmpq %r11                      #  8     0x2fcd0  3      OPC=jmpq_r64        
  nop                            #  9     0x2fcd3  1      OPC=nop             
  nop                            #  10    0x2fcd4  1      OPC=nop             
  nop                            #  11    0x2fcd5  1      OPC=nop             
  nop                            #  12    0x2fcd6  1      OPC=nop             
  nop                            #  13    0x2fcd7  1      OPC=nop             
  nop                            #  14    0x2fcd8  1      OPC=nop             
  nop                            #  15    0x2fcd9  1      OPC=nop             
  nop                            #  16    0x2fcda  1      OPC=nop             
  nop                            #  17    0x2fcdb  1      OPC=nop             
  nop                            #  18    0x2fcdc  1      OPC=nop             
  nop                            #  19    0x2fcdd  1      OPC=nop             
  nop                            #  20    0x2fcde  1      OPC=nop             
  nop                            #  21    0x2fcdf  1      OPC=nop             
  nop                            #  22    0x2fce0  1      OPC=nop             
  nop                            #  23    0x2fce1  1      OPC=nop             
  nop                            #  24    0x2fce2  1      OPC=nop             
  nop                            #  25    0x2fce3  1      OPC=nop             
  nop                            #  26    0x2fce4  1      OPC=nop             
  nop                            #  27    0x2fce5  1      OPC=nop             
  nop                            #  28    0x2fce6  1      OPC=nop             
                                                                              
.size NACL_AnnotateBarrierWaitAfter, .-NACL_AnnotateBarrierWaitAfter

