  .text
  .globl Noop
  .type Noop, @function

#! file-offset 0x661c0
#! rip-offset  0x261c0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Noop:                     #        0x261c0  0      OPC=<label>         
  popq %r11                #  1     0x261c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x261c2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x261c9  1      OPC=nop             
  nop                      #  4     0x261ca  1      OPC=nop             
  nop                      #  5     0x261cb  1      OPC=nop             
  nop                      #  6     0x261cc  1      OPC=nop             
  addq %r15, %r11          #  7     0x261cd  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x261d0  3      OPC=jmpq_r64        
  nop                      #  9     0x261d3  1      OPC=nop             
  nop                      #  10    0x261d4  1      OPC=nop             
  nop                      #  11    0x261d5  1      OPC=nop             
  nop                      #  12    0x261d6  1      OPC=nop             
  nop                      #  13    0x261d7  1      OPC=nop             
  nop                      #  14    0x261d8  1      OPC=nop             
  nop                      #  15    0x261d9  1      OPC=nop             
  nop                      #  16    0x261da  1      OPC=nop             
  nop                      #  17    0x261db  1      OPC=nop             
  nop                      #  18    0x261dc  1      OPC=nop             
  nop                      #  19    0x261dd  1      OPC=nop             
  nop                      #  20    0x261de  1      OPC=nop             
  nop                      #  21    0x261df  1      OPC=nop             
  nop                      #  22    0x261e0  1      OPC=nop             
  nop                      #  23    0x261e1  1      OPC=nop             
  nop                      #  24    0x261e2  1      OPC=nop             
  nop                      #  25    0x261e3  1      OPC=nop             
  nop                      #  26    0x261e4  1      OPC=nop             
  nop                      #  27    0x261e5  1      OPC=nop             
  nop                      #  28    0x261e6  1      OPC=nop             
                                                                        
.size Noop, .-Noop

