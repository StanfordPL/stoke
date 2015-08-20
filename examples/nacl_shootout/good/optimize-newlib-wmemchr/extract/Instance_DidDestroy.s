  .text
  .globl Instance_DidDestroy
  .type Instance_DidDestroy, @function

#! file-offset 0x6c620
#! rip-offset  0x2c620
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Instance_DidDestroy:      #        0x2c620  0      OPC=<label>         
  popq %r11                #  1     0x2c620  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2c622  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2c629  1      OPC=nop             
  nop                      #  4     0x2c62a  1      OPC=nop             
  nop                      #  5     0x2c62b  1      OPC=nop             
  nop                      #  6     0x2c62c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2c62d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2c630  3      OPC=jmpq_r64        
  nop                      #  9     0x2c633  1      OPC=nop             
  nop                      #  10    0x2c634  1      OPC=nop             
  nop                      #  11    0x2c635  1      OPC=nop             
  nop                      #  12    0x2c636  1      OPC=nop             
  nop                      #  13    0x2c637  1      OPC=nop             
  nop                      #  14    0x2c638  1      OPC=nop             
  nop                      #  15    0x2c639  1      OPC=nop             
  nop                      #  16    0x2c63a  1      OPC=nop             
  nop                      #  17    0x2c63b  1      OPC=nop             
  nop                      #  18    0x2c63c  1      OPC=nop             
  nop                      #  19    0x2c63d  1      OPC=nop             
  nop                      #  20    0x2c63e  1      OPC=nop             
  nop                      #  21    0x2c63f  1      OPC=nop             
  nop                      #  22    0x2c640  1      OPC=nop             
  nop                      #  23    0x2c641  1      OPC=nop             
  nop                      #  24    0x2c642  1      OPC=nop             
  nop                      #  25    0x2c643  1      OPC=nop             
  nop                      #  26    0x2c644  1      OPC=nop             
  nop                      #  27    0x2c645  1      OPC=nop             
  nop                      #  28    0x2c646  1      OPC=nop             
                                                                        
.size Instance_DidDestroy, .-Instance_DidDestroy

