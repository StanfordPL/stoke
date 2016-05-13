  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  sarw $0x1, %bx  #  1     0    3      OPC=sarw_r16_one  
  rclb $0x1, %bh  #  2     0x3  2      OPC=rclb_rh_one   
  rorb $0x1, %bh  #  3     0x5  2      OPC=rorb_rh_one   
  retq            #  4     0x7  1      OPC=retq          
                                                         
.size target, .-target
