  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movslq %ebx, %rax               #  1     0    3      OPC=movslq_r64_r32  
  movq $0xffffffffffffffff, %rbx  #  2     0x3  10     OPC=movq_r64_imm64  
  xorl %eax, %ebx                 #  3     0xd  2      OPC=xorl_r32_r32    
  retq                            #  4     0xf  1      OPC=retq            
                                                                           
.size target, .-target
