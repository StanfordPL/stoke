  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %r14  #  1     0     10     OPC=movq_r64_imm64  
  movq %r14, %rcx   #  2     0xa   3      OPC=movq_r64_r64    
  xaddb %bl, %ch    #  3     0xd   3      OPC=xaddb_rh_r8     
  sbbb %ah, %ch     #  4     0x10  2      OPC=sbbb_rh_rh      
  retq              #  5     0x12  1      OPC=retq            
                                                              
.size target, .-target
