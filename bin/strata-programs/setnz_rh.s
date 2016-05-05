  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .set_cf            #  1     0     5      OPC=callq_label     
  setnae %ah               #  2     0x5   3      OPC=setnae_rh       
  callq .read_cf_into_rcx  #  3     0x8   5      OPC=callq_label     
  cmoveq %rcx, %rax        #  4     0xd   4      OPC=cmoveq_r64_r64  
  retq                     #  5     0x11  1      OPC=retq            
                                                                     
.size target, .-target
