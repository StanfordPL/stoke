  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label  
  callq .set_szp_for_ebx   #  2     0x5   5      OPC=callq_label  
  callq .read_zf_into_rcx  #  3     0xa   5      OPC=callq_label  
  movb %cl, %ah            #  4     0xf   2      OPC=movb_rh_r8   
  retq                     #  5     0x11  1      OPC=retq         
                                                                  
.size target, .-target
