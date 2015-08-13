  .text
  .globl NACL_AnnotateRWLockReleased
  .type NACL_AnnotateRWLockReleased, @function

#! file-offset 0x6f960
#! rip-offset  0x2f960
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockReleased:  #        0x2f960  0      OPC=<label>         
  popq %r11                    #  1     0x2f960  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  2     0x2f962  7      OPC=andl_r32_imm32  
  nop                          #  3     0x2f969  1      OPC=nop             
  nop                          #  4     0x2f96a  1      OPC=nop             
  nop                          #  5     0x2f96b  1      OPC=nop             
  nop                          #  6     0x2f96c  1      OPC=nop             
  addq %r15, %r11              #  7     0x2f96d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  8     0x2f970  3      OPC=jmpq_r64        
  nop                          #  9     0x2f973  1      OPC=nop             
  nop                          #  10    0x2f974  1      OPC=nop             
  nop                          #  11    0x2f975  1      OPC=nop             
  nop                          #  12    0x2f976  1      OPC=nop             
  nop                          #  13    0x2f977  1      OPC=nop             
  nop                          #  14    0x2f978  1      OPC=nop             
  nop                          #  15    0x2f979  1      OPC=nop             
  nop                          #  16    0x2f97a  1      OPC=nop             
  nop                          #  17    0x2f97b  1      OPC=nop             
  nop                          #  18    0x2f97c  1      OPC=nop             
  nop                          #  19    0x2f97d  1      OPC=nop             
  nop                          #  20    0x2f97e  1      OPC=nop             
  nop                          #  21    0x2f97f  1      OPC=nop             
  nop                          #  22    0x2f980  1      OPC=nop             
  nop                          #  23    0x2f981  1      OPC=nop             
  nop                          #  24    0x2f982  1      OPC=nop             
  nop                          #  25    0x2f983  1      OPC=nop             
  nop                          #  26    0x2f984  1      OPC=nop             
  nop                          #  27    0x2f985  1      OPC=nop             
  nop                          #  28    0x2f986  1      OPC=nop             
                                                                            
.size NACL_AnnotateRWLockReleased, .-NACL_AnnotateRWLockReleased

