  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode                
.target:              #        0    0      OPC=<label>           
  movzwq %cx, %r9     #  1     0    4      OPC=movzwq_r64_r16    
  cmovngew %r9w, %bx  #  2     0x4  5      OPC=cmovngew_r16_r16  
  cmovzl %r9d, %ebx   #  3     0x9  4      OPC=cmovzl_r32_r32    
  retq                #  4     0xd  1      OPC=retq              
                                                                 
.size target, .-target
