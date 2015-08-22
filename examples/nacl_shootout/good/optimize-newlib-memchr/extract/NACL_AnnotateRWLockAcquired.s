  .text
  .globl NACL_AnnotateRWLockAcquired
  .type NACL_AnnotateRWLockAcquired, @function

#! file-offset 0x70360
#! rip-offset  0x30360
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockAcquired:  #        0x30360  0      OPC=<label>         
  popq %r11                    #  1     0x30360  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x30362  7      OPC=andl_r32_imm32  
  nop                          #  3     0x30369  1      OPC=nop             
  nop                          #  4     0x3036a  1      OPC=nop             
  nop                          #  5     0x3036b  1      OPC=nop             
  nop                          #  6     0x3036c  1      OPC=nop             
  addq %r15, %r11              #  7     0x3036d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x30370  3      OPC=jmpq_r64        
  nop                          #  9     0x30373  1      OPC=nop             
  nop                          #  10    0x30374  1      OPC=nop             
  nop                          #  11    0x30375  1      OPC=nop             
  nop                          #  12    0x30376  1      OPC=nop             
  nop                          #  13    0x30377  1      OPC=nop             
  nop                          #  14    0x30378  1      OPC=nop             
  nop                          #  15    0x30379  1      OPC=nop             
  nop                          #  16    0x3037a  1      OPC=nop             
  nop                          #  17    0x3037b  1      OPC=nop             
  nop                          #  18    0x3037c  1      OPC=nop             
  nop                          #  19    0x3037d  1      OPC=nop             
  nop                          #  20    0x3037e  1      OPC=nop             
  nop                          #  21    0x3037f  1      OPC=nop             
  nop                          #  22    0x30380  1      OPC=nop             
  nop                          #  23    0x30381  1      OPC=nop             
  nop                          #  24    0x30382  1      OPC=nop             
  nop                          #  25    0x30383  1      OPC=nop             
  nop                          #  26    0x30384  1      OPC=nop             
  nop                          #  27    0x30385  1      OPC=nop             
  nop                          #  28    0x30386  1      OPC=nop             
                                                                            
.size NACL_AnnotateRWLockAcquired, .-NACL_AnnotateRWLockAcquired

