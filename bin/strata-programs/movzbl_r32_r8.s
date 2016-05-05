  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x8, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ebx_r10w_r11w  #  2     0xa   5      OPC=callq_label     
  addw %bx, %r10w                    #  3     0xf   4      OPC=addw_r16_r16    
  callq .read_pf_into_rbx            #  4     0x13  5      OPC=callq_label     
  adcb %cl, %bl                      #  5     0x18  2      OPC=adcb_r8_r8      
  retq                               #  6     0x1a  1      OPC=retq            
                                                                               
.size target, .-target
