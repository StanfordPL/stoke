  .text
  .globl NACL_AnnotateRWLockAcquired
  .type NACL_AnnotateRWLockAcquired, @function

#! file-offset 0x6fc40
#! rip-offset  0x2fc40
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockAcquired:  #        0x2fc40  0      OPC=<label>         
  popq %r11                    #  1     0x2fc40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x2fc42  7      OPC=andl_r32_imm32  
  nop                          #  3     0x2fc49  1      OPC=nop             
  nop                          #  4     0x2fc4a  1      OPC=nop             
  nop                          #  5     0x2fc4b  1      OPC=nop             
  nop                          #  6     0x2fc4c  1      OPC=nop             
  addq %r15, %r11              #  7     0x2fc4d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x2fc50  3      OPC=jmpq_r64        
  nop                          #  9     0x2fc53  1      OPC=nop             
  nop                          #  10    0x2fc54  1      OPC=nop             
  nop                          #  11    0x2fc55  1      OPC=nop             
  nop                          #  12    0x2fc56  1      OPC=nop             
  nop                          #  13    0x2fc57  1      OPC=nop             
  nop                          #  14    0x2fc58  1      OPC=nop             
  nop                          #  15    0x2fc59  1      OPC=nop             
  nop                          #  16    0x2fc5a  1      OPC=nop             
  nop                          #  17    0x2fc5b  1      OPC=nop             
  nop                          #  18    0x2fc5c  1      OPC=nop             
  nop                          #  19    0x2fc5d  1      OPC=nop             
  nop                          #  20    0x2fc5e  1      OPC=nop             
  nop                          #  21    0x2fc5f  1      OPC=nop             
  nop                          #  22    0x2fc60  1      OPC=nop             
  nop                          #  23    0x2fc61  1      OPC=nop             
  nop                          #  24    0x2fc62  1      OPC=nop             
  nop                          #  25    0x2fc63  1      OPC=nop             
  nop                          #  26    0x2fc64  1      OPC=nop             
  nop                          #  27    0x2fc65  1      OPC=nop             
  nop                          #  28    0x2fc66  1      OPC=nop             
                                                                            
.size NACL_AnnotateRWLockAcquired, .-NACL_AnnotateRWLockAcquired

