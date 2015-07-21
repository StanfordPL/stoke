  .text
  .globl __libc_csu_fini
  .type __libc_csu_fini, @function

#! file-offset 0x8200
#! rip-offset  0x408200
#! capacity    2 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.__libc_csu_fini:  #        0x408200  0      OPC=0     
  retq             #  1     0x408200  1      OPC=1978  
  nop              #  2     0x408201  1      OPC=1343  
                                                       
.size __libc_csu_fini, .-__libc_csu_fini

