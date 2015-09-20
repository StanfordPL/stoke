  .text
  .globl anonymous_function
  .type anonymous_function, @function

#! file-offset 0
#! rip-offset  0
#! capacity    29 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.anonymous_function:  #        0     0      OPC=<label>         
  xorl %ecx, %ecx     #  1     0     2      OPC=xorl_r32_r32    
  movl $0x13, %eax    #  2     0x2   5      OPC=movl_r32_imm32  
  movl $0x10, %edi    #  3     0x7   5      OPC=movl_r32_imm32  
.L1:                  #        0xc   0      OPC=<label>         
  shll $0x2, %eax     #  4     0xc   3      OPC=shll_r32_imm8   
  addl %ecx, %eax     #  5     0xf   2      OPC=addl_r32_r32    
  addl $0x1, %ecx     #  6     0x11  3      OPC=addl_r32_imm8   
  cmpl %ecx, %edi     #  7     0x14  2      OPC=cmpl_r32_r32    
  jne .L1             #  8     0x16  2      OPC=jne_label       
  retq                #  9     0x18  1      OPC=retq            
                                                                
.size anonymous_function, .-anonymous_function
