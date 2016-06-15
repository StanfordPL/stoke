  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bl, %ecx  #  1     0    3      OPC=movzbl_r32_r8  
  decl %ecx         #  2     0x3  2      OPC=decl_r32       
  andl %ecx, %ecx   #  3     0x5  2      OPC=andl_r32_r32   
  sbbb %bl, %ah     #  4     0x7  2      OPC=sbbb_rh_r8     
  retq              #  5     0x9  1      OPC=retq           
                                                            
.size target, .-target
