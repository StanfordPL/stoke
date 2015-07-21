  .text
  .globl run_fannkuch
  .type run_fannkuch, @function

#! file-offset 0x1aaa
#! rip-offset  0x401aaa
#! capacity    5 bytes

# Text                 #  Line  RIP       Bytes  Opcode   
.run_fannkuch:         #        0x401aaa  0      OPC=0    
  jmpq .fannkuchredux  #  1     0x401aaa  5      OPC=930  
                                                          
.size run_fannkuch, .-run_fannkuch

