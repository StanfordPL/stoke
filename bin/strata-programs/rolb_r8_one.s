  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  xorq %rax, %rax  #  1     0     3      OPC=xorq_r64_r64  
  setnp %ah        #  2     0x3   3      OPC=setnp_rh      
  setnz %bh        #  3     0x6   3      OPC=setnz_rh      
  addw %bx, %ax    #  4     0x9   3      OPC=addw_r16_r16  
  adcb %al, %al    #  5     0xc   2      OPC=adcb_r8_r8    
  adcb %bl, %bl    #  6     0xe   2      OPC=adcb_r8_r8    
  retq             #  7     0x10  1      OPC=retq          
                                                           
.size target, .-target
