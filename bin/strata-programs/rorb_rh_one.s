  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movb %ah, %dh     #  1     0    2      OPC=movb_rh_rh      
  movb %dh, %al     #  2     0x2  2      OPC=movb_r8_rh      
  rorb $0x1, %al    #  3     0x4  2      OPC=rorb_r8_one     
  movswq %ax, %rbx  #  4     0x6  4      OPC=movswq_r64_r16  
  xchgb %ah, %bl    #  5     0xa  2      OPC=xchgb_r8_rh     
  retq              #  6     0xc  1      OPC=retq            
                                                             
.size target, .-target
