  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movq $0x4, %rdi    #  1     0     10     OPC=movq_r64_imm64   
  shlb $0x1, %dil    #  2     0xa   3      OPC=shlb_r8_one      
  xorq %r8, %r8      #  3     0xd   3      OPC=xorq_r64_r64     
  xorb %ah, %bl      #  4     0x10  2      OPC=xorb_r8_rh       
  popcntw %r8w, %ax  #  5     0x12  6      OPC=popcntw_r16_r16  
  xaddb %ah, %bl     #  6     0x18  3      OPC=xaddb_r8_rh      
  rcll $0x1, %edi    #  7     0x1b  2      OPC=rcll_r32_one     
  retq               #  8     0x1d  1      OPC=retq             
                                                                
.size target, .-target
