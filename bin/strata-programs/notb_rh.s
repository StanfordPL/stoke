  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffd, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  callq .write_dl_to_zf           #  2     0xa   5      OPC=callq_label     
  callq .read_zf_into_rbx         #  3     0xf   5      OPC=callq_label     
  stc                             #  4     0x14  1      OPC=stc             
  adcw %dx, %bx                   #  5     0x15  3      OPC=adcw_r16_r16    
  xorb %bl, %ah                   #  6     0x18  2      OPC=xorb_rh_r8      
  retq                            #  7     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
