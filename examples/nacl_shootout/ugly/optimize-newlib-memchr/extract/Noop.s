  .text
  .globl Noop
  .type Noop, @function

#! file-offset 0x66720
#! rip-offset  0x26720
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Noop:                     #        0x26720  0      OPC=<label>         
  popq %r11                #  1     0x26720  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x26722  7      OPC=andl_r32_imm32  
  nop                      #  3     0x26729  1      OPC=nop             
  nop                      #  4     0x2672a  1      OPC=nop             
  nop                      #  5     0x2672b  1      OPC=nop             
  nop                      #  6     0x2672c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2672d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x26730  3      OPC=jmpq_r64        
  nop                      #  9     0x26733  1      OPC=nop             
  nop                      #  10    0x26734  1      OPC=nop             
  nop                      #  11    0x26735  1      OPC=nop             
  nop                      #  12    0x26736  1      OPC=nop             
  nop                      #  13    0x26737  1      OPC=nop             
  nop                      #  14    0x26738  1      OPC=nop             
  nop                      #  15    0x26739  1      OPC=nop             
  nop                      #  16    0x2673a  1      OPC=nop             
  nop                      #  17    0x2673b  1      OPC=nop             
  nop                      #  18    0x2673c  1      OPC=nop             
  nop                      #  19    0x2673d  1      OPC=nop             
  nop                      #  20    0x2673e  1      OPC=nop             
  nop                      #  21    0x2673f  1      OPC=nop             
  nop                      #  22    0x26740  1      OPC=nop             
  nop                      #  23    0x26741  1      OPC=nop             
  nop                      #  24    0x26742  1      OPC=nop             
  nop                      #  25    0x26743  1      OPC=nop             
  nop                      #  26    0x26744  1      OPC=nop             
  nop                      #  27    0x26745  1      OPC=nop             
  nop                      #  28    0x26746  1      OPC=nop             
                                                                        
.size Noop, .-Noop

