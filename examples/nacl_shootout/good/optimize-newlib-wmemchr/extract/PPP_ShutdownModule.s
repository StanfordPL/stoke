  .text
  .globl PPP_ShutdownModule
  .type PPP_ShutdownModule, @function

#! file-offset 0x6c720
#! rip-offset  0x2c720
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.PPP_ShutdownModule:       #        0x2c720  0      OPC=<label>         
  popq %r11                #  1     0x2c720  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2c722  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2c729  1      OPC=nop             
  nop                      #  4     0x2c72a  1      OPC=nop             
  nop                      #  5     0x2c72b  1      OPC=nop             
  nop                      #  6     0x2c72c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2c72d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2c730  3      OPC=jmpq_r64        
  nop                      #  9     0x2c733  1      OPC=nop             
  nop                      #  10    0x2c734  1      OPC=nop             
  nop                      #  11    0x2c735  1      OPC=nop             
  nop                      #  12    0x2c736  1      OPC=nop             
  nop                      #  13    0x2c737  1      OPC=nop             
  nop                      #  14    0x2c738  1      OPC=nop             
  nop                      #  15    0x2c739  1      OPC=nop             
  nop                      #  16    0x2c73a  1      OPC=nop             
  nop                      #  17    0x2c73b  1      OPC=nop             
  nop                      #  18    0x2c73c  1      OPC=nop             
  nop                      #  19    0x2c73d  1      OPC=nop             
  nop                      #  20    0x2c73e  1      OPC=nop             
  nop                      #  21    0x2c73f  1      OPC=nop             
  nop                      #  22    0x2c740  1      OPC=nop             
  nop                      #  23    0x2c741  1      OPC=nop             
  nop                      #  24    0x2c742  1      OPC=nop             
  nop                      #  25    0x2c743  1      OPC=nop             
  nop                      #  26    0x2c744  1      OPC=nop             
  nop                      #  27    0x2c745  1      OPC=nop             
  nop                      #  28    0x2c746  1      OPC=nop             
                                                                        
.size PPP_ShutdownModule, .-PPP_ShutdownModule

