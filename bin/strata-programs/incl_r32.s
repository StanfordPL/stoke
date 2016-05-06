  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .clear_cf          #  1     0     5      OPC=callq_label   
  callq .set_pf            #  2     0x5   5      OPC=callq_label   
  callq .read_pf_into_rcx  #  3     0xa   5      OPC=callq_label   
  adcl %ecx, %ebx          #  4     0xf   2      OPC=adcl_r32_r32  
  callq .set_szp_for_ebx   #  5     0x11  5      OPC=callq_label   
  retq                     #  6     0x16  1      OPC=retq          
                                                                   
.size target, .-target
