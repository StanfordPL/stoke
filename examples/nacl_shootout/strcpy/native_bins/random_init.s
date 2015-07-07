  .text
  .globl random_init
  .type random_init, @function

#! file-offset 0x1aaf
#! rip-offset  0x401aaf
#! capacity    7 bytes

# Text                #  Line  RIP       Bytes  Opcode    
.random_init:         #        0x401aaf  0      OPC=0     
  movl $0x2a, (%rdi)  #  1     0x401aaf  6      OPC=1135  
  retq                #  2     0x401ab5  1      OPC=1978  
                                                          
.size random_init, .-random_init

