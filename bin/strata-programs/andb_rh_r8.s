  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  andb %ah, %bl   #  1     0    2      OPC=andb_r8_rh   
  xchgb %ah, %bl  #  2     0x2  2      OPC=xchgb_r8_rh  
  retq            #  3     0x4  1      OPC=retq         
                                                        
.size target, .-target
