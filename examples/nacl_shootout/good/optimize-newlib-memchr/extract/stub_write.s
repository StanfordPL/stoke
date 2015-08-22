  .text
  .globl stub_write
  .type stub_write, @function

#! file-offset 0x158b80
#! rip-offset  0x118b80
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_write:               #        0x118b80  0      OPC=<label>         
  popq %r11                #  1     0x118b80  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118b82  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118b87  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118b8e  1      OPC=nop             
  nop                      #  5     0x118b8f  1      OPC=nop             
  nop                      #  6     0x118b90  1      OPC=nop             
  nop                      #  7     0x118b91  1      OPC=nop             
  addq %r15, %r11          #  8     0x118b92  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118b95  3      OPC=jmpq_r64        
  nop                      #  10    0x118b98  1      OPC=nop             
  nop                      #  11    0x118b99  1      OPC=nop             
  nop                      #  12    0x118b9a  1      OPC=nop             
  nop                      #  13    0x118b9b  1      OPC=nop             
  nop                      #  14    0x118b9c  1      OPC=nop             
  nop                      #  15    0x118b9d  1      OPC=nop             
  nop                      #  16    0x118b9e  1      OPC=nop             
  nop                      #  17    0x118b9f  1      OPC=nop             
  nop                      #  18    0x118ba0  1      OPC=nop             
  nop                      #  19    0x118ba1  1      OPC=nop             
  nop                      #  20    0x118ba2  1      OPC=nop             
  nop                      #  21    0x118ba3  1      OPC=nop             
  nop                      #  22    0x118ba4  1      OPC=nop             
  nop                      #  23    0x118ba5  1      OPC=nop             
  nop                      #  24    0x118ba6  1      OPC=nop             
                                                                         
.size stub_write, .-stub_write

