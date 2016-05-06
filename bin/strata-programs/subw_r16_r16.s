  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswl %cx, %esp  #  1     0    3      OPC=movswl_r32_r16  
  xorw %ax, %ax     #  2     0x3  3      OPC=xorw_r16_r16    
  rclb $0x1, %ch    #  3     0x6  2      OPC=rclb_rh_one     
  xorb %ah, %ch     #  4     0x8  2      OPC=xorb_rh_rh      
  adcb %ah, %bh     #  5     0xa  2      OPC=adcb_rh_rh      
  sbbw %sp, %bx     #  6     0xc  3      OPC=sbbw_r16_r16    
  retq              #  7     0xf  1      OPC=retq            
                                                             
.size target, .-target
