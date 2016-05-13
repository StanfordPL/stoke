  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  andnl %ebx, %ebx, %esi  #  1     0     5      OPC=andnl_r32_r32_r32  
  movl %esi, %esi         #  2     0x5   2      OPC=movl_r32_r32       
  setns %cl               #  3     0x7   3      OPC=setns_r8           
  sarq %cl, %rbx          #  4     0xa   3      OPC=sarq_r64_cl        
  movzwl %si, %r12d       #  5     0xd   4      OPC=movzwl_r32_r16     
  decl %r12d              #  6     0x11  3      OPC=decl_r32           
  callq .set_szp_for_rbx  #  7     0x14  5      OPC=callq_label        
  retq                    #  8     0x19  1      OPC=retq               
                                                                       
.size target, .-target
