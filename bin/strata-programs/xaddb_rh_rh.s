  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %eax  #  1     0    3      OPC=movzbl_r32_rh  
  addb %bh, %ah     #  2     0x3  2      OPC=addb_rh_rh     
  xaddb %bh, %al    #  3     0x5  3      OPC=xaddb_r8_rh    
  xchgb %ah, %al    #  4     0x8  2      OPC=xchgb_r8_rh    
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
