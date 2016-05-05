  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwq %cx, %r9     #  1     0    4      OPC=movzwq_r64_r16   
  cmovnbl %r9d, %ebx  #  2     0x4  4      OPC=cmovnbl_r32_r32  
  retq                #  3     0x8  1      OPC=retq             
                                                                
.size target, .-target
