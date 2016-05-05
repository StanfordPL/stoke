  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgl %ebx, %ecx  #  1     0    2      OPC=xchgl_r32_r32  
  callq .clear_cf   #  2     0x2  5      OPC=callq_label    
  adcl %ecx, %ebx   #  3     0x7  2      OPC=adcl_r32_r32   
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
