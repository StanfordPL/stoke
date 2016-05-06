  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  salw $0x1, %ax   #  2     0x3  3      OPC=salw_r16_one  
  xchgb %ah, %cl   #  3     0x6  2      OPC=xchgb_r8_rh   
  cmpb %ah, %bl    #  4     0x8  2      OPC=cmpb_r8_rh    
  retq             #  5     0xa  1      OPC=retq          
                                                          
.size target, .-target
