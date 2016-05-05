  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label     
  setnc %ah                #  2     0x5  3      OPC=setnc_rh        
  decb %bl                 #  3     0x8  2      OPC=decb_r8         
  cmovzq %rbx, %rax        #  4     0xa  4      OPC=cmovzq_r64_r64  
  retq                     #  5     0xe  1      OPC=retq            
                                                                    
.size target, .-target
