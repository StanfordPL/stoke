  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x1, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setge %al        #  2     0xa   3      OPC=setge_r8        
  movb %al, %ah    #  3     0xd   2      OPC=movb_rh_r8      
  movq %rax, %rax  #  4     0xf   3      OPC=movq_r64_r64    
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
