  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  xorw %ax, %ax            #  2     0x5  3      OPC=xorw_r16_r16  
  xaddb %bl, %ah           #  3     0x8  3      OPC=xaddb_rh_r8   
  retq                     #  4     0xb  1      OPC=retq          
                                                                  
.size target, .-target
