  .text
  .globl round_by
  .type round_by, @function

#! file-offset 0x616e0
#! rip-offset  0x216e0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.round_by:                 #        0x216e0  0      OPC=<label>         
  movl %edi, %eax          #  1     0x216e0  2      OPC=movl_r32_r32    
  xorl %edx, %edx          #  2     0x216e2  2      OPC=xorl_r32_r32    
  divl %esi                #  3     0x216e4  2      OPC=divl_r32        
  movl %edi, %eax          #  4     0x216e6  2      OPC=movl_r32_r32    
  subl %edx, %eax          #  5     0x216e8  2      OPC=subl_r32_r32    
  popq %r11                #  6     0x216ea  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  7     0x216ec  7      OPC=andl_r32_imm32  
  nop                      #  8     0x216f3  1      OPC=nop             
  nop                      #  9     0x216f4  1      OPC=nop             
  nop                      #  10    0x216f5  1      OPC=nop             
  nop                      #  11    0x216f6  1      OPC=nop             
  addq %r15, %r11          #  12    0x216f7  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x216fa  3      OPC=jmpq_r64        
  nop                      #  14    0x216fd  1      OPC=nop             
  nop                      #  15    0x216fe  1      OPC=nop             
  nop                      #  16    0x216ff  1      OPC=nop             
  nop                      #  17    0x21700  1      OPC=nop             
  nop                      #  18    0x21701  1      OPC=nop             
  nop                      #  19    0x21702  1      OPC=nop             
  nop                      #  20    0x21703  1      OPC=nop             
  nop                      #  21    0x21704  1      OPC=nop             
  nop                      #  22    0x21705  1      OPC=nop             
  nop                      #  23    0x21706  1      OPC=nop             
                                                                        
.size round_by, .-round_by

