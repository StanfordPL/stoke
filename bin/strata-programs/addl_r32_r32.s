  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode             
.target:                  #        0    0      OPC=<label>        
  xaddl %ecx, %ebx        #  1     0    3      OPC=xaddl_r32_r32  
  callq .set_szp_for_ebx  #  2     0x3  5      OPC=callq_label    
  retq                    #  3     0x8  1      OPC=retq           
                                                                  
.size target, .-target
