  .text
  .globl stub_dup2
  .type stub_dup2, @function

#! file-offset 0x158420
#! rip-offset  0x118420
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.stub_dup2:                #        0x118420  0      OPC=<label>         
  popq %r11                #  1     0x118420  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118422  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118427  7      OPC=andl_r32_imm32  
  nop                      #  4     0x11842e  1      OPC=nop             
  nop                      #  5     0x11842f  1      OPC=nop             
  nop                      #  6     0x118430  1      OPC=nop             
  nop                      #  7     0x118431  1      OPC=nop             
  addq %r15, %r11          #  8     0x118432  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118435  3      OPC=jmpq_r64        
  nop                      #  10    0x118438  1      OPC=nop             
  nop                      #  11    0x118439  1      OPC=nop             
  nop                      #  12    0x11843a  1      OPC=nop             
  nop                      #  13    0x11843b  1      OPC=nop             
  nop                      #  14    0x11843c  1      OPC=nop             
  nop                      #  15    0x11843d  1      OPC=nop             
  nop                      #  16    0x11843e  1      OPC=nop             
  nop                      #  17    0x11843f  1      OPC=nop             
  nop                      #  18    0x118440  1      OPC=nop             
  nop                      #  19    0x118441  1      OPC=nop             
  nop                      #  20    0x118442  1      OPC=nop             
  nop                      #  21    0x118443  1      OPC=nop             
  nop                      #  22    0x118444  1      OPC=nop             
  nop                      #  23    0x118445  1      OPC=nop             
  nop                      #  24    0x118446  1      OPC=nop             
                                                                         
.size stub_dup2, .-stub_dup2

