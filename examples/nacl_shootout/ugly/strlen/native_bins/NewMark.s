  .text
  .globl NewMark
  .type NewMark, @function

#! file-offset 0x617a
#! rip-offset  0x40617a
#! capacity    9 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.NewMark:                    #        0x40617a  0      OPC=0     
  addq $0x1, 0x21f2c6(%rip)  #  1     0x40617a  8      OPC=54    
  retq                       #  2     0x406182  1      OPC=1978  
                                                                 
.size NewMark, .-NewMark

