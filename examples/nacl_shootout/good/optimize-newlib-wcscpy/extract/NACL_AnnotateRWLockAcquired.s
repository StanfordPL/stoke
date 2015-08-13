  .text
  .globl NACL_AnnotateRWLockAcquired
  .type NACL_AnnotateRWLockAcquired, @function

#! file-offset 0x6f940
#! rip-offset  0x2f940
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockAcquired:  #        0x2f940  0      OPC=<label>         
  popq %r11                    #  1     0x2f940  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x2f942  7      OPC=andl_r32_imm32  
  nop                          #  3     0x2f949  1      OPC=nop             
  nop                          #  4     0x2f94a  1      OPC=nop             
  nop                          #  5     0x2f94b  1      OPC=nop             
  nop                          #  6     0x2f94c  1      OPC=nop             
  addq %r15, %r11              #  7     0x2f94d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x2f950  3      OPC=jmpq_r64        
  nop                          #  9     0x2f953  1      OPC=nop             
  nop                          #  10    0x2f954  1      OPC=nop             
  nop                          #  11    0x2f955  1      OPC=nop             
  nop                          #  12    0x2f956  1      OPC=nop             
  nop                          #  13    0x2f957  1      OPC=nop             
  nop                          #  14    0x2f958  1      OPC=nop             
  nop                          #  15    0x2f959  1      OPC=nop             
  nop                          #  16    0x2f95a  1      OPC=nop             
  nop                          #  17    0x2f95b  1      OPC=nop             
  nop                          #  18    0x2f95c  1      OPC=nop             
  nop                          #  19    0x2f95d  1      OPC=nop             
  nop                          #  20    0x2f95e  1      OPC=nop             
  nop                          #  21    0x2f95f  1      OPC=nop             
  nop                          #  22    0x2f960  1      OPC=nop             
  nop                          #  23    0x2f961  1      OPC=nop             
  nop                          #  24    0x2f962  1      OPC=nop             
  nop                          #  25    0x2f963  1      OPC=nop             
  nop                          #  26    0x2f964  1      OPC=nop             
  nop                          #  27    0x2f965  1      OPC=nop             
  nop                          #  28    0x2f966  1      OPC=nop             
                                                                            
.size NACL_AnnotateRWLockAcquired, .-NACL_AnnotateRWLockAcquired

