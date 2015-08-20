  .text
  .globl stub_seek
  .type stub_seek, @function

#! file-offset 0x158480
#! rip-offset  0x118480
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_seek:                #        0x118480  0      OPC=<label>         
  popq %r11                #  1     0x118480  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118482  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118487  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11848e  1      OPC=nop             
  nop                      #  5     0x11848f  1      OPC=nop             
  nop                      #  6     0x118490  1      OPC=nop             
  nop                      #  7     0x118491  1      OPC=nop             
  addq %r15, %r11          #  8     0x118492  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118495  3      OPC=jmpq_r64        
  nop                      #  10    0x118498  1      OPC=nop             
  nop                      #  11    0x118499  1      OPC=nop             
  nop                      #  12    0x11849a  1      OPC=nop             
  nop                      #  13    0x11849b  1      OPC=nop             
  nop                      #  14    0x11849c  1      OPC=nop             
  nop                      #  15    0x11849d  1      OPC=nop             
  nop                      #  16    0x11849e  1      OPC=nop             
  nop                      #  17    0x11849f  1      OPC=nop             
  nop                      #  18    0x1184a0  1      OPC=nop             
  nop                      #  19    0x1184a1  1      OPC=nop             
  nop                      #  20    0x1184a2  1      OPC=nop             
  nop                      #  21    0x1184a3  1      OPC=nop             
  nop                      #  22    0x1184a4  1      OPC=nop             
  nop                      #  23    0x1184a5  1      OPC=nop             
  nop                      #  24    0x1184a6  1      OPC=nop             
                                                                         
.size stub_seek, .-stub_seek

