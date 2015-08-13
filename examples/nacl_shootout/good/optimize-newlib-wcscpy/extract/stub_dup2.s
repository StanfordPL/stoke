  .text
  .globl stub_dup2
  .type stub_dup2, @function

#! file-offset 0x158120
#! rip-offset  0x118120
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_dup2:                #        0x118120  0      OPC=<label>         
  popq %r11                #  1     0x118120  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118122  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118127  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11812e  1      OPC=nop             
  nop                      #  5     0x11812f  1      OPC=nop             
  nop                      #  6     0x118130  1      OPC=nop             
  nop                      #  7     0x118131  1      OPC=nop             
  addq %r15, %r11          #  8     0x118132  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118135  3      OPC=jmpq_r64        
  nop                      #  10    0x118138  1      OPC=nop             
  nop                      #  11    0x118139  1      OPC=nop             
  nop                      #  12    0x11813a  1      OPC=nop             
  nop                      #  13    0x11813b  1      OPC=nop             
  nop                      #  14    0x11813c  1      OPC=nop             
  nop                      #  15    0x11813d  1      OPC=nop             
  nop                      #  16    0x11813e  1      OPC=nop             
  nop                      #  17    0x11813f  1      OPC=nop             
  nop                      #  18    0x118140  1      OPC=nop             
  nop                      #  19    0x118141  1      OPC=nop             
  nop                      #  20    0x118142  1      OPC=nop             
  nop                      #  21    0x118143  1      OPC=nop             
  nop                      #  22    0x118144  1      OPC=nop             
  nop                      #  23    0x118145  1      OPC=nop             
  nop                      #  24    0x118146  1      OPC=nop             
                                                                         
.size stub_dup2, .-stub_dup2

