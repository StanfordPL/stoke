  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64     
  clc                 #  2     0x3  1      OPC=clc              
  adcw %cx, %ax       #  3     0x4  3      OPC=adcw_r16_r16     
  popcntq %rax, %rbx  #  4     0x7  5      OPC=popcntq_r64_r64  
  clc                 #  5     0xc  1      OPC=clc              
  retq                #  6     0xd  1      OPC=retq             
                                                                
.size target, .-target
