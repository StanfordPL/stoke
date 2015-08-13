  .text
  .globl NACL_AnnotateCondVarSignalAll
  .type NACL_AnnotateCondVarSignalAll, @function

#! file-offset 0x6fa40
#! rip-offset  0x2fa40
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateCondVarSignalAll:  #        0x2fa40  0      OPC=<label>         
  popq %r11                      #  1     0x2fa40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  2     0x2fa42  7      OPC=andl_r32_imm32  
  nop                            #  3     0x2fa49  1      OPC=nop             
  nop                            #  4     0x2fa4a  1      OPC=nop             
  nop                            #  5     0x2fa4b  1      OPC=nop             
  nop                            #  6     0x2fa4c  1      OPC=nop             
  addq %r15, %r11                #  7     0x2fa4d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  8     0x2fa50  3      OPC=jmpq_r64        
  nop                            #  9     0x2fa53  1      OPC=nop             
  nop                            #  10    0x2fa54  1      OPC=nop             
  nop                            #  11    0x2fa55  1      OPC=nop             
  nop                            #  12    0x2fa56  1      OPC=nop             
  nop                            #  13    0x2fa57  1      OPC=nop             
  nop                            #  14    0x2fa58  1      OPC=nop             
  nop                            #  15    0x2fa59  1      OPC=nop             
  nop                            #  16    0x2fa5a  1      OPC=nop             
  nop                            #  17    0x2fa5b  1      OPC=nop             
  nop                            #  18    0x2fa5c  1      OPC=nop             
  nop                            #  19    0x2fa5d  1      OPC=nop             
  nop                            #  20    0x2fa5e  1      OPC=nop             
  nop                            #  21    0x2fa5f  1      OPC=nop             
  nop                            #  22    0x2fa60  1      OPC=nop             
  nop                            #  23    0x2fa61  1      OPC=nop             
  nop                            #  24    0x2fa62  1      OPC=nop             
  nop                            #  25    0x2fa63  1      OPC=nop             
  nop                            #  26    0x2fa64  1      OPC=nop             
  nop                            #  27    0x2fa65  1      OPC=nop             
  nop                            #  28    0x2fa66  1      OPC=nop             
                                                                              
.size NACL_AnnotateCondVarSignalAll, .-NACL_AnnotateCondVarSignalAll

