  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff8, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  xchgb %cl, %bh                  #  2     0xa   2      OPC=xchgb_rh_r8     
  movsbl %bh, %eax                #  3     0xc   3      OPC=movsbl_r32_rh   
  movw %ax, %bx                   #  4     0xf   3      OPC=movw_r16_r16    
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
