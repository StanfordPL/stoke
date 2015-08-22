  .text
  .globl stub_read
  .type stub_read, @function

#! file-offset 0x158b60
#! rip-offset  0x118b60
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_read:                #        0x118b60  0      OPC=<label>         
  popq %r11                #  1     0x118b60  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118b62  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118b67  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118b6e  1      OPC=nop             
  nop                      #  5     0x118b6f  1      OPC=nop             
  nop                      #  6     0x118b70  1      OPC=nop             
  nop                      #  7     0x118b71  1      OPC=nop             
  addq %r15, %r11          #  8     0x118b72  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118b75  3      OPC=jmpq_r64        
  nop                      #  10    0x118b78  1      OPC=nop             
  nop                      #  11    0x118b79  1      OPC=nop             
  nop                      #  12    0x118b7a  1      OPC=nop             
  nop                      #  13    0x118b7b  1      OPC=nop             
  nop                      #  14    0x118b7c  1      OPC=nop             
  nop                      #  15    0x118b7d  1      OPC=nop             
  nop                      #  16    0x118b7e  1      OPC=nop             
  nop                      #  17    0x118b7f  1      OPC=nop             
  nop                      #  18    0x118b80  1      OPC=nop             
  nop                      #  19    0x118b81  1      OPC=nop             
  nop                      #  20    0x118b82  1      OPC=nop             
  nop                      #  21    0x118b83  1      OPC=nop             
  nop                      #  22    0x118b84  1      OPC=nop             
  nop                      #  23    0x118b85  1      OPC=nop             
  nop                      #  24    0x118b86  1      OPC=nop             
                                                                         
.size stub_read, .-stub_read

