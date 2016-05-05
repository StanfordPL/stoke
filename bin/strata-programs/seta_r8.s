  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  seta %bh          #  1     0    3      OPC=seta_rh        
  movsbl %bh, %ebx  #  2     0x3  3      OPC=movsbl_r32_rh  
  retq              #  3     0x6  1      OPC=retq           
                                                            
.size target, .-target
