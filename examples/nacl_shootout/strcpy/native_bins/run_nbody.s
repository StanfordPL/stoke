  .text
  .globl run_nbody
  .type run_nbody, @function

#! file-offset 0x807b
#! rip-offset  0x40807b
#! capacity    5 bytes

# Text         #  Line  RIP       Bytes  Opcode   
.run_nbody:    #        0x40807b  0      OPC=0    
  jmpq .nbody  #  1     0x40807b  5      OPC=930  
                                                  
.size run_nbody, .-run_nbody

