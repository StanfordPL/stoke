  .text
  .globl run_binarytrees
  .type run_binarytrees, @function

#! file-offset 0x3b40
#! rip-offset  0x403b40
#! capacity    6 bytes

# Text                    #  Line  RIP       Bytes  Opcode    
.run_binarytrees:         #        0x403b40  0      OPC=0     
  jmpq ._Z11binarytreesi  #  1     0x403b40  5      OPC=930   
  nop                     #  2     0x403b45  1      OPC=1343  
                                                              
.size run_binarytrees, .-run_binarytrees

