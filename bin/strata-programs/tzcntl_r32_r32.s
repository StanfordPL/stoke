  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  blsmskl %ecx, %ecx  #  1     0     5      OPC=blsmskl_r32_r32  
  rclq $0x1, %rcx     #  2     0x5   3      OPC=rclq_r64_one     
  popcntq %rcx, %rbx  #  3     0x8   5      OPC=popcntq_r64_r64  
  decl %ebx           #  4     0xd   2      OPC=decl_r32         
  rorb $0x1, %cl      #  5     0xf   2      OPC=rorb_r8_one      
  retq                #  6     0x11  1      OPC=retq             
                                                                 
.size target, .-target
