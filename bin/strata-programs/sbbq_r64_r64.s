  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  notq %rcx        #  1     0    3      OPC=notq_r64      
  cmc              #  2     0x3  1      OPC=cmc           
  adcq %rcx, %rbx  #  3     0x4  3      OPC=adcq_r64_r64  
  cmc              #  4     0x7  1      OPC=cmc           
  retq             #  5     0x8  1      OPC=retq          
                                                          
.size target, .-target
