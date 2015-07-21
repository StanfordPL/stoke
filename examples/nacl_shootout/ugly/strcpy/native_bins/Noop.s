  .text
  .globl Noop
  .type Noop, @function

#! file-offset 0x5770
#! rip-offset  0x405770
#! capacity    1 bytes

# Text   #  Line  RIP       Bytes  Opcode    
.Noop:   #        0x405770  0      OPC=0     
  retq   #  1     0x405770  1      OPC=1978  
                                             
.size Noop, .-Noop

