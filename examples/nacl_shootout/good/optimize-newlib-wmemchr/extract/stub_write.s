  .text
  .globl stub_write
  .type stub_write, @function

#! file-offset 0x158460
#! rip-offset  0x118460
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_write:               #        0x118460  0      OPC=<label>         
  popq %r11                #  1     0x118460  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118462  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118467  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11846e  1      OPC=nop             
  nop                      #  5     0x11846f  1      OPC=nop             
  nop                      #  6     0x118470  1      OPC=nop             
  nop                      #  7     0x118471  1      OPC=nop             
  addq %r15, %r11          #  8     0x118472  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118475  3      OPC=jmpq_r64        
  nop                      #  10    0x118478  1      OPC=nop             
  nop                      #  11    0x118479  1      OPC=nop             
  nop                      #  12    0x11847a  1      OPC=nop             
  nop                      #  13    0x11847b  1      OPC=nop             
  nop                      #  14    0x11847c  1      OPC=nop             
  nop                      #  15    0x11847d  1      OPC=nop             
  nop                      #  16    0x11847e  1      OPC=nop             
  nop                      #  17    0x11847f  1      OPC=nop             
  nop                      #  18    0x118480  1      OPC=nop             
  nop                      #  19    0x118481  1      OPC=nop             
  nop                      #  20    0x118482  1      OPC=nop             
  nop                      #  21    0x118483  1      OPC=nop             
  nop                      #  22    0x118484  1      OPC=nop             
  nop                      #  23    0x118485  1      OPC=nop             
  nop                      #  24    0x118486  1      OPC=nop             
                                                                         
.size stub_write, .-stub_write

