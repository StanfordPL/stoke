  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  andnl %ecx, %ebx, %r13d  #  1     0    5      OPC=andnl_r32_r32_r32  
  movzbl %bh, %ebx         #  2     0x5  3      OPC=movzbl_r32_rh      
  xorl %r13d, %ecx         #  3     0x8  3      OPC=xorl_r32_r32       
  xchgl %ebx, %ecx         #  4     0xb  2      OPC=xchgl_r32_r32      
  retq                     #  5     0xd  1      OPC=retq               
                                                                       
.size target, .-target
