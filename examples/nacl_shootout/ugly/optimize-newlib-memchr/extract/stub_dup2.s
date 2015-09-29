  .text
  .globl stub_dup2
  .type stub_dup2, @function

#! file-offset 0x158b40
#! rip-offset  0x118b40
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_dup2:                #        0x118b40  0      OPC=<label>         
  popq %r11                #  1     0x118b40  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118b42  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118b47  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118b4e  1      OPC=nop             
  nop                      #  5     0x118b4f  1      OPC=nop             
  nop                      #  6     0x118b50  1      OPC=nop             
  nop                      #  7     0x118b51  1      OPC=nop             
  addq %r15, %r11          #  8     0x118b52  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118b55  3      OPC=jmpq_r64        
  nop                      #  10    0x118b58  1      OPC=nop             
  nop                      #  11    0x118b59  1      OPC=nop             
  nop                      #  12    0x118b5a  1      OPC=nop             
  nop                      #  13    0x118b5b  1      OPC=nop             
  nop                      #  14    0x118b5c  1      OPC=nop             
  nop                      #  15    0x118b5d  1      OPC=nop             
  nop                      #  16    0x118b5e  1      OPC=nop             
  nop                      #  17    0x118b5f  1      OPC=nop             
  nop                      #  18    0x118b60  1      OPC=nop             
  nop                      #  19    0x118b61  1      OPC=nop             
  nop                      #  20    0x118b62  1      OPC=nop             
  nop                      #  21    0x118b63  1      OPC=nop             
  nop                      #  22    0x118b64  1      OPC=nop             
  nop                      #  23    0x118b65  1      OPC=nop             
  nop                      #  24    0x118b66  1      OPC=nop             
                                                                         
.size stub_dup2, .-stub_dup2

