  .text
  .globl stub_read
  .type stub_read, @function

#! file-offset 0x158140
#! rip-offset  0x118140
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_read:                #        0x118140  0      OPC=<label>         
  popq %r11                #  1     0x118140  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118142  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118147  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11814e  1      OPC=nop             
  nop                      #  5     0x11814f  1      OPC=nop             
  nop                      #  6     0x118150  1      OPC=nop             
  nop                      #  7     0x118151  1      OPC=nop             
  addq %r15, %r11          #  8     0x118152  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118155  3      OPC=jmpq_r64        
  nop                      #  10    0x118158  1      OPC=nop             
  nop                      #  11    0x118159  1      OPC=nop             
  nop                      #  12    0x11815a  1      OPC=nop             
  nop                      #  13    0x11815b  1      OPC=nop             
  nop                      #  14    0x11815c  1      OPC=nop             
  nop                      #  15    0x11815d  1      OPC=nop             
  nop                      #  16    0x11815e  1      OPC=nop             
  nop                      #  17    0x11815f  1      OPC=nop             
  nop                      #  18    0x118160  1      OPC=nop             
  nop                      #  19    0x118161  1      OPC=nop             
  nop                      #  20    0x118162  1      OPC=nop             
  nop                      #  21    0x118163  1      OPC=nop             
  nop                      #  22    0x118164  1      OPC=nop             
  nop                      #  23    0x118165  1      OPC=nop             
  nop                      #  24    0x118166  1      OPC=nop             
                                                                         
.size stub_read, .-stub_read

