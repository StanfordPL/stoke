  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  setge %bpl         #  1     0     4      OPC=setge_r8         
  movzbl %bpl, %r8d  #  2     0x4   4      OPC=movzbl_r32_r8    
  popcntq %r8, %rax  #  3     0x8   5      OPC=popcntq_r64_r64  
  cmovnew %cx, %bx   #  4     0xd   4      OPC=cmovnew_r16_r16  
  retq               #  5     0x11  1      OPC=retq             
                                                                
.size target, .-target
