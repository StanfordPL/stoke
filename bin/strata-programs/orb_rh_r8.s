  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8   
  xchgb %ah, %bl  #  2     0x2  2      OPC=xchgb_r8_rh  
  adcb %ah, %al   #  3     0x4  2      OPC=adcb_r8_rh   
  movb %bl, %bh   #  4     0x6  2      OPC=movb_rh_r8   
  orw %bx, %ax    #  5     0x8  3      OPC=orw_r16_r16  
  retq            #  6     0xb  1      OPC=retq         
                                                        
.size target, .-target
