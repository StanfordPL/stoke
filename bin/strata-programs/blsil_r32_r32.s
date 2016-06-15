  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  blsrl %ecx, %ebx                #  1     0     5      OPC=blsrl_r32_r32    
  xorl %ecx, %ebx                 #  2     0x5   2      OPC=xorl_r32_r32     
  movq $0xfffffffffffffff9, %rcx  #  3     0x7   10     OPC=movq_r64_imm64   
  cmovnaq %rbx, %rcx              #  4     0x11  4      OPC=cmovnaq_r64_r64  
  rorb $0x1, %cl                  #  5     0x15  2      OPC=rorb_r8_one      
  retq                            #  6     0x17  1      OPC=retq             
                                                                             
.size target, .-target
