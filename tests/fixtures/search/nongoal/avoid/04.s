  .text
  .globl anonymous_function
  .type anonymous_function, @function

#! file-offset 0
#! rip-offset  0
#! capacity    17 bytes

# Text                #  Line  RIP  Bytes  Opcode    
.anonymous_function:  #        0    0      OPC=0     
  incb %al            #  1     0    2      OPC=846   
  retq                #  2     0x2  1      OPC=1978  
                                                     
.size anonymous_function, .-anonymous_function
