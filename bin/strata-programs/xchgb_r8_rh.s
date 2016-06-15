  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %bl, %ch     #  1     0    2      OPC=movb_rh_r8     
  movb %ch, %cl     #  2     0x2  2      OPC=movb_r8_rh     
  movzbl %ah, %edx  #  3     0x4  3      OPC=movzbl_r32_rh  
  xaddb %bl, %dl    #  4     0x7  3      OPC=xaddb_r8_r8    
  movb %cl, %ah     #  5     0xa  2      OPC=movb_rh_r8     
  retq              #  6     0xc  1      OPC=retq           
                                                            
.size target, .-target
