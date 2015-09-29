  .text
  .globl stub_dup
  .type stub_dup, @function

#! file-offset 0x158b20
#! rip-offset  0x118b20
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_dup:                 #        0x118b20  0      OPC=<label>         
  popq %r11                #  1     0x118b20  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118b22  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118b27  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118b2e  1      OPC=nop             
  nop                      #  5     0x118b2f  1      OPC=nop             
  nop                      #  6     0x118b30  1      OPC=nop             
  nop                      #  7     0x118b31  1      OPC=nop             
  addq %r15, %r11          #  8     0x118b32  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118b35  3      OPC=jmpq_r64        
  nop                      #  10    0x118b38  1      OPC=nop             
  nop                      #  11    0x118b39  1      OPC=nop             
  nop                      #  12    0x118b3a  1      OPC=nop             
  nop                      #  13    0x118b3b  1      OPC=nop             
  nop                      #  14    0x118b3c  1      OPC=nop             
  nop                      #  15    0x118b3d  1      OPC=nop             
  nop                      #  16    0x118b3e  1      OPC=nop             
  nop                      #  17    0x118b3f  1      OPC=nop             
  nop                      #  18    0x118b40  1      OPC=nop             
  nop                      #  19    0x118b41  1      OPC=nop             
  nop                      #  20    0x118b42  1      OPC=nop             
  nop                      #  21    0x118b43  1      OPC=nop             
  nop                      #  22    0x118b44  1      OPC=nop             
  nop                      #  23    0x118b45  1      OPC=nop             
  nop                      #  24    0x118b46  1      OPC=nop             
                                                                         
.size stub_dup, .-stub_dup

