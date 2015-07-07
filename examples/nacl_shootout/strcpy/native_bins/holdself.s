  .text
  .globl holdself
  .type holdself, @function

#! file-offset 0x51e2
#! rip-offset  0x4051e2
#! capacity    22 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.holdself:                   #        0x4051e2  0      OPC=0     
  addl $0x1, 0x22023f(%rip)  #  1     0x4051e2  7      OPC=51    
  movq 0x220818(%rip), %rax  #  2     0x4051e9  7      OPC=1161  
  orl $0x4, 0x18(%rax)       #  3     0x4051f0  4      OPC=1364  
  movq (%rax), %rax          #  4     0x4051f4  3      OPC=1161  
  retq                       #  5     0x4051f7  1      OPC=1978  
                                                                 
.size holdself, .-holdself

