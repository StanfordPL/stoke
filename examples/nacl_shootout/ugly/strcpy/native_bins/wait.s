  .text
  .globl wait
  .type wait, @function

#! file-offset 0x51d6
#! rip-offset  0x4051d6
#! capacity    12 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.wait:                       #        0x4051d6  0      OPC=0     
  movq 0x22082b(%rip), %rax  #  1     0x4051d6  7      OPC=1161  
  orl $0x2, 0x18(%rax)       #  2     0x4051dd  4      OPC=1364  
  retq                       #  3     0x4051e1  1      OPC=1978  
                                                                 
.size wait, .-wait

