  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  cmc               #  1     0    1      OPC=cmc             
  notw %cx          #  2     0x1  3      OPC=notw_r16        
  adcw %bx, %cx     #  3     0x4  3      OPC=adcw_r16_r16    
  cmc               #  4     0x7  1      OPC=cmc             
  movswq %cx, %rbx  #  5     0x8  4      OPC=movswq_r64_r16  
  retq              #  6     0xc  1      OPC=retq            
                                                             
.size target, .-target
