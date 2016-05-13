  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label  
  orl %ebx, %ebx           #  2     0x5  2      OPC=orl_r32_r32  
  setge %r10b              #  3     0x7  4      OPC=setge_r8     
  xorb %r10b, %bl          #  4     0xb  3      OPC=xorb_r8_r8   
  retq                     #  5     0xe  1      OPC=retq         
                                                                 
.size target, .-target
