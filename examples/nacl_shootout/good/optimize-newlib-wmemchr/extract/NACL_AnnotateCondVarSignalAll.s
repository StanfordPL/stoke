  .text
  .globl NACL_AnnotateCondVarSignalAll
  .type NACL_AnnotateCondVarSignalAll, @function

#! file-offset 0x6fd40
#! rip-offset  0x2fd40
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateCondVarSignalAll:  #        0x2fd40  0      OPC=<label>         
  popq %r11                      #  1     0x2fd40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  2     0x2fd42  7      OPC=andl_r32_imm32  
  nop                            #  3     0x2fd49  1      OPC=nop             
  nop                            #  4     0x2fd4a  1      OPC=nop             
  nop                            #  5     0x2fd4b  1      OPC=nop             
  nop                            #  6     0x2fd4c  1      OPC=nop             
  addq %r15, %r11                #  7     0x2fd4d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  8     0x2fd50  3      OPC=jmpq_r64        
  nop                            #  9     0x2fd53  1      OPC=nop             
  nop                            #  10    0x2fd54  1      OPC=nop             
  nop                            #  11    0x2fd55  1      OPC=nop             
  nop                            #  12    0x2fd56  1      OPC=nop             
  nop                            #  13    0x2fd57  1      OPC=nop             
  nop                            #  14    0x2fd58  1      OPC=nop             
  nop                            #  15    0x2fd59  1      OPC=nop             
  nop                            #  16    0x2fd5a  1      OPC=nop             
  nop                            #  17    0x2fd5b  1      OPC=nop             
  nop                            #  18    0x2fd5c  1      OPC=nop             
  nop                            #  19    0x2fd5d  1      OPC=nop             
  nop                            #  20    0x2fd5e  1      OPC=nop             
  nop                            #  21    0x2fd5f  1      OPC=nop             
  nop                            #  22    0x2fd60  1      OPC=nop             
  nop                            #  23    0x2fd61  1      OPC=nop             
  nop                            #  24    0x2fd62  1      OPC=nop             
  nop                            #  25    0x2fd63  1      OPC=nop             
  nop                            #  26    0x2fd64  1      OPC=nop             
  nop                            #  27    0x2fd65  1      OPC=nop             
  nop                            #  28    0x2fd66  1      OPC=nop             
                                                                              
.size NACL_AnnotateCondVarSignalAll, .-NACL_AnnotateCondVarSignalAll

