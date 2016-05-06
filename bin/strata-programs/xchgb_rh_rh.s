  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorl %esi, %esi  #  1     0    2      OPC=xorl_r32_r32   
  decb %sil        #  2     0x2  2      OPC=decb_r8        
  setae %al        #  3     0x4  3      OPC=setae_r8       
  setpo %bl        #  4     0x7  3      OPC=setpo_r8       
  xchgw %ax, %bx   #  5     0xa  3      OPC=xchgw_r16_r16  
  retq             #  6     0xd  1      OPC=retq           
                                                           
.size target, .-target
