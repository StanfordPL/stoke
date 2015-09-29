  .text
  .globl stub_close
  .type stub_close, @function

#! file-offset 0x158b00
#! rip-offset  0x118b00
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_close:               #        0x118b00  0      OPC=<label>         
  popq %r11                #  1     0x118b00  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118b02  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118b07  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118b0e  1      OPC=nop             
  nop                      #  5     0x118b0f  1      OPC=nop             
  nop                      #  6     0x118b10  1      OPC=nop             
  nop                      #  7     0x118b11  1      OPC=nop             
  addq %r15, %r11          #  8     0x118b12  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118b15  3      OPC=jmpq_r64        
  nop                      #  10    0x118b18  1      OPC=nop             
  nop                      #  11    0x118b19  1      OPC=nop             
  nop                      #  12    0x118b1a  1      OPC=nop             
  nop                      #  13    0x118b1b  1      OPC=nop             
  nop                      #  14    0x118b1c  1      OPC=nop             
  nop                      #  15    0x118b1d  1      OPC=nop             
  nop                      #  16    0x118b1e  1      OPC=nop             
  nop                      #  17    0x118b1f  1      OPC=nop             
  nop                      #  18    0x118b20  1      OPC=nop             
  nop                      #  19    0x118b21  1      OPC=nop             
  nop                      #  20    0x118b22  1      OPC=nop             
  nop                      #  21    0x118b23  1      OPC=nop             
  nop                      #  22    0x118b24  1      OPC=nop             
  nop                      #  23    0x118b25  1      OPC=nop             
  nop                      #  24    0x118b26  1      OPC=nop             
                                                                         
.size stub_close, .-stub_close

