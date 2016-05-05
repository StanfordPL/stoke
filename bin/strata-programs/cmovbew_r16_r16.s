  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswl %cx, %edx    #  1     0    3      OPC=movswl_r32_r16   
  cmovbel %edx, %ebx  #  2     0x3  3      OPC=cmovbel_r32_r32  
  retq                #  3     0x6  1      OPC=retq             
                                                                
.size target, .-target
