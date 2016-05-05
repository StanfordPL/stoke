  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode              
.target:                 #        0    0      OPC=<label>         
  movslq %ecx, %r8       #  1     0    3      OPC=movslq_r64_r32  
  setl %cl               #  2     0x3  3      OPC=setl_r8         
  callq .write_cl_to_zf  #  3     0x6  5      OPC=callq_label     
  cmovel %r8d, %ebx      #  4     0xb  4      OPC=cmovel_r32_r32  
  retq                   #  5     0xf  1      OPC=retq            
                                                                  
.size target, .-target
