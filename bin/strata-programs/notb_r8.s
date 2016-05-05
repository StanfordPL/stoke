  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorq %rdx, %rdx   #  1     0    3      OPC=xorq_r64_r64    
  adcb %bl, %dl     #  2     0x3  2      OPC=adcb_r8_r8      
  notl %edx         #  3     0x5  2      OPC=notl_r32        
  movswl %dx, %ebx  #  4     0x7  3      OPC=movswl_r32_r16  
  retq              #  5     0xa  1      OPC=retq            
                                                             
.size target, .-target
