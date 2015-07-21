  .text
  .globl round_by
  .type round_by, @function

#! file-offset 0x2195
#! rip-offset  0x402195
#! capacity    15 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.round_by:         #        0x402195  0      OPC=0     
  movq %rdi, %rax  #  1     0x402195  3      OPC=1162  
  xorl %edx, %edx  #  2     0x402198  2      OPC=3758  
  divq %rsi        #  3     0x40219a  3      OPC=612   
  movq %rdi, %rax  #  4     0x40219d  3      OPC=1162  
  subq %rdx, %rax  #  5     0x4021a0  3      OPC=2391  
  retq             #  6     0x4021a3  1      OPC=1978  
                                                       
.size round_by, .-round_by

