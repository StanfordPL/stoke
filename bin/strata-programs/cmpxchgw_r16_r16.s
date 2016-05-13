  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movzwl %bx, %r13d  #  1     0     4      OPC=movzwl_r32_r16  
  movzwq %ax, %r14   #  2     0x4   4      OPC=movzwq_r64_r16  
  xaddw %ax, %r13w   #  3     0x8   5      OPC=xaddw_r16_r16   
  cmpw %ax, %r14w    #  4     0xd   4      OPC=cmpw_r16_r16    
  cmovzw %cx, %bx    #  5     0x11  4      OPC=cmovzw_r16_r16  
  retq               #  6     0x15  1      OPC=retq            
                                                               
.size target, .-target
