  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x6e82
#! rip-offset  0x406e82
#! capacity    5 bytes

# Text              #  Line  RIP       Bytes  Opcode   
.my_memcpy:         #        0x406e82  0      OPC=0    
  jmpq .memcpy_plt  #  1     0x406e82  5      OPC=930  
                                                       
.size my_memcpy, .-my_memcpy

