  .text
  .globl PPP_ShutdownModule
  .type PPP_ShutdownModule, @function

#! file-offset 0x6c420
#! rip-offset  0x2c420
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.PPP_ShutdownModule:       #        0x2c420  0      OPC=<label>         
  popq %r11                #  1     0x2c420  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2c422  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2c429  1      OPC=nop             
  nop                      #  4     0x2c42a  1      OPC=nop             
  nop                      #  5     0x2c42b  1      OPC=nop             
  nop                      #  6     0x2c42c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2c42d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2c430  3      OPC=jmpq_r64        
  nop                      #  9     0x2c433  1      OPC=nop             
  nop                      #  10    0x2c434  1      OPC=nop             
  nop                      #  11    0x2c435  1      OPC=nop             
  nop                      #  12    0x2c436  1      OPC=nop             
  nop                      #  13    0x2c437  1      OPC=nop             
  nop                      #  14    0x2c438  1      OPC=nop             
  nop                      #  15    0x2c439  1      OPC=nop             
  nop                      #  16    0x2c43a  1      OPC=nop             
  nop                      #  17    0x2c43b  1      OPC=nop             
  nop                      #  18    0x2c43c  1      OPC=nop             
  nop                      #  19    0x2c43d  1      OPC=nop             
  nop                      #  20    0x2c43e  1      OPC=nop             
  nop                      #  21    0x2c43f  1      OPC=nop             
  nop                      #  22    0x2c440  1      OPC=nop             
  nop                      #  23    0x2c441  1      OPC=nop             
  nop                      #  24    0x2c442  1      OPC=nop             
  nop                      #  25    0x2c443  1      OPC=nop             
  nop                      #  26    0x2c444  1      OPC=nop             
  nop                      #  27    0x2c445  1      OPC=nop             
  nop                      #  28    0x2c446  1      OPC=nop             
                                                                        
.size PPP_ShutdownModule, .-PPP_ShutdownModule

