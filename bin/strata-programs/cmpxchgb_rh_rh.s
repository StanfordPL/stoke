  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  cmpb %bh, %al    #  1     0    2      OPC=cmpb_r8_rh      
  setnle %cl       #  2     0x2  3      OPC=setnle_r8       
  movb %bh, %al    #  3     0x5  2      OPC=movb_r8_rh      
  cmovew %cx, %bx  #  4     0x7  4      OPC=cmovew_r16_r16  
  retq             #  5     0xb  1      OPC=retq            
                                                            
.size target, .-target
