  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwl %cx, %esp    #  1     0    3      OPC=movzwl_r32_r16   
  cmovpol %esp, %ebx  #  2     0x3  3      OPC=cmovpol_r32_r32  
  retq                #  3     0x6  1      OPC=retq             
                                                                
.size target, .-target
