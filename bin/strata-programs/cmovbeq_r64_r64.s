  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setnbe %al         #  1     0    3      OPC=setnbe_r8       
  xaddb %al, %al     #  2     0x3  3      OPC=xaddb_r8_r8     
  cmoveq %rcx, %rbx  #  3     0x6  4      OPC=cmoveq_r64_r64  
  retq               #  4     0xa  1      OPC=retq            
                                                              
.size target, .-target
