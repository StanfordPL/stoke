  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %ah, %bl     #  1     0    2      OPC=movb_r8_rh     
  shlb $0x1, %bl    #  2     0x2  2      OPC=shlb_r8_one    
  movzbq %bl, %rcx  #  3     0x4  4      OPC=movzbq_r64_r8  
  movb %cl, %ah     #  4     0x8  2      OPC=movb_rh_r8     
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
