  .text
  .globl stub_dup
  .type stub_dup, @function

#! file-offset 0x158400
#! rip-offset  0x118400
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_dup:                 #        0x118400  0      OPC=<label>         
  popq %r11                #  1     0x118400  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118402  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118407  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11840e  1      OPC=nop             
  nop                      #  5     0x11840f  1      OPC=nop             
  nop                      #  6     0x118410  1      OPC=nop             
  nop                      #  7     0x118411  1      OPC=nop             
  addq %r15, %r11          #  8     0x118412  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118415  3      OPC=jmpq_r64        
  nop                      #  10    0x118418  1      OPC=nop             
  nop                      #  11    0x118419  1      OPC=nop             
  nop                      #  12    0x11841a  1      OPC=nop             
  nop                      #  13    0x11841b  1      OPC=nop             
  nop                      #  14    0x11841c  1      OPC=nop             
  nop                      #  15    0x11841d  1      OPC=nop             
  nop                      #  16    0x11841e  1      OPC=nop             
  nop                      #  17    0x11841f  1      OPC=nop             
  nop                      #  18    0x118420  1      OPC=nop             
  nop                      #  19    0x118421  1      OPC=nop             
  nop                      #  20    0x118422  1      OPC=nop             
  nop                      #  21    0x118423  1      OPC=nop             
  nop                      #  22    0x118424  1      OPC=nop             
  nop                      #  23    0x118425  1      OPC=nop             
  nop                      #  24    0x118426  1      OPC=nop             
                                                                         
.size stub_dup, .-stub_dup

