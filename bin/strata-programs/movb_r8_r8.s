  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x1, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  callq .set_szp_for_rbx   #  2     0xa   5      OPC=callq_label     
  movzbq %cl, %r15         #  3     0xf   4      OPC=movzbq_r64_r8   
  callq .read_sf_into_rbx  #  4     0x13  5      OPC=callq_label     
  xaddb %r15b, %bl         #  5     0x18  4      OPC=xaddb_r8_r8     
  retq                     #  6     0x1c  1      OPC=retq            
                                                                     
.size target, .-target
