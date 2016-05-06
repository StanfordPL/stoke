  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setnle %cl      #  1     0    3      OPC=setnle_r8    
  setne %ah       #  2     0x3  3      OPC=setne_rh     
  xchgb %cl, %ah  #  3     0x6  2      OPC=xchgb_rh_r8  
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
