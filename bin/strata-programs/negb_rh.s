  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %eax  #  1     0    3      OPC=movzbl_r32_rh  
  negb %al          #  2     0x3  2      OPC=negb_r8        
  xchgb %ah, %al    #  3     0x5  2      OPC=xchgb_r8_rh    
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
