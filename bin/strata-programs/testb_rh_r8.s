  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %edx, %edx  #  1     0    2      OPC=xorl_r32_r32  
  callq .clear_cf  #  2     0x2  5      OPC=callq_label   
  setg %bh         #  3     0x7  3      OPC=setg_rh       
  adcw %bx, %dx    #  4     0xa  3      OPC=adcw_r16_r16  
  testb %ah, %dl   #  5     0xd  2      OPC=testb_r8_rh   
  retq             #  6     0xf  1      OPC=retq          
                                                          
.size target, .-target
