  .text
  .globl NACL_AnnotateBarrierWaitAfter
  .type NACL_AnnotateBarrierWaitAfter, @function

#! file-offset 0x6f9c0
#! rip-offset  0x2f9c0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierWaitAfter:  #        0x2f9c0  0      OPC=<label>         
  popq %r11                      #  1     0x2f9c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  2     0x2f9c2  7      OPC=andl_r32_imm32  
  nop                            #  3     0x2f9c9  1      OPC=nop             
  nop                            #  4     0x2f9ca  1      OPC=nop             
  nop                            #  5     0x2f9cb  1      OPC=nop             
  nop                            #  6     0x2f9cc  1      OPC=nop             
  addq %r15, %r11                #  7     0x2f9cd  3      OPC=addq_r64_r64    
  jmpq %r11                      #  8     0x2f9d0  3      OPC=jmpq_r64        
  nop                            #  9     0x2f9d3  1      OPC=nop             
  nop                            #  10    0x2f9d4  1      OPC=nop             
  nop                            #  11    0x2f9d5  1      OPC=nop             
  nop                            #  12    0x2f9d6  1      OPC=nop             
  nop                            #  13    0x2f9d7  1      OPC=nop             
  nop                            #  14    0x2f9d8  1      OPC=nop             
  nop                            #  15    0x2f9d9  1      OPC=nop             
  nop                            #  16    0x2f9da  1      OPC=nop             
  nop                            #  17    0x2f9db  1      OPC=nop             
  nop                            #  18    0x2f9dc  1      OPC=nop             
  nop                            #  19    0x2f9dd  1      OPC=nop             
  nop                            #  20    0x2f9de  1      OPC=nop             
  nop                            #  21    0x2f9df  1      OPC=nop             
  nop                            #  22    0x2f9e0  1      OPC=nop             
  nop                            #  23    0x2f9e1  1      OPC=nop             
  nop                            #  24    0x2f9e2  1      OPC=nop             
  nop                            #  25    0x2f9e3  1      OPC=nop             
  nop                            #  26    0x2f9e4  1      OPC=nop             
  nop                            #  27    0x2f9e5  1      OPC=nop             
  nop                            #  28    0x2f9e6  1      OPC=nop             
                                                                              
.size NACL_AnnotateBarrierWaitAfter, .-NACL_AnnotateBarrierWaitAfter

