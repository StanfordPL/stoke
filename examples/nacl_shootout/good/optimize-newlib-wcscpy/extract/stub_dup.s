  .text
  .globl stub_dup
  .type stub_dup, @function

#! file-offset 0x158100
#! rip-offset  0x118100
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_dup:                 #        0x118100  0      OPC=<label>         
  popq %r11                #  1     0x118100  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118102  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118107  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11810e  1      OPC=nop             
  nop                      #  5     0x11810f  1      OPC=nop             
  nop                      #  6     0x118110  1      OPC=nop             
  nop                      #  7     0x118111  1      OPC=nop             
  addq %r15, %r11          #  8     0x118112  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118115  3      OPC=jmpq_r64        
  nop                      #  10    0x118118  1      OPC=nop             
  nop                      #  11    0x118119  1      OPC=nop             
  nop                      #  12    0x11811a  1      OPC=nop             
  nop                      #  13    0x11811b  1      OPC=nop             
  nop                      #  14    0x11811c  1      OPC=nop             
  nop                      #  15    0x11811d  1      OPC=nop             
  nop                      #  16    0x11811e  1      OPC=nop             
  nop                      #  17    0x11811f  1      OPC=nop             
  nop                      #  18    0x118120  1      OPC=nop             
  nop                      #  19    0x118121  1      OPC=nop             
  nop                      #  20    0x118122  1      OPC=nop             
  nop                      #  21    0x118123  1      OPC=nop             
  nop                      #  22    0x118124  1      OPC=nop             
  nop                      #  23    0x118125  1      OPC=nop             
  nop                      #  24    0x118126  1      OPC=nop             
                                                                         
.size stub_dup, .-stub_dup

