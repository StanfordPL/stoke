  .text
  .globl run_nbody
  .type run_nbody, @function

#! file-offset 0x80db
#! rip-offset  0x4080db
#! capacity    5 bytes

# Text         #  Line  RIP       Bytes  Opcode   
.run_nbody:    #        0x4080db  0      OPC=0    
  jmpq .nbody  #  1     0x4080db  5      OPC=930  
                                                  
.size run_nbody, .-run_nbody

