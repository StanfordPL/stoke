  .text
  .globl arrayfile_set_keep_output
  .type arrayfile_set_keep_output, @function

#! file-offset 0x796b
#! rip-offset  0x40796b
#! capacity    4 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.arrayfile_set_keep_output:  #        0x40796b  0      OPC=0     
  movl %esi, 0x24(%rdi)      #  1     0x40796b  3      OPC=1136  
  retq                       #  2     0x40796e  1      OPC=1978  
                                                                 
.size arrayfile_set_keep_output, .-arrayfile_set_keep_output

