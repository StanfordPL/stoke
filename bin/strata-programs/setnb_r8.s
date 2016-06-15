  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  setnc %bl        #  1     0    3      OPC=setnc_r8      
  xorq %rcx, %rcx  #  2     0x3  3      OPC=xorq_r64_r64  
  xaddb %ch, %bl   #  3     0x6  3      OPC=xaddb_r8_rh   
  retq             #  4     0x9  1      OPC=retq          
                                                          
.size target, .-target
