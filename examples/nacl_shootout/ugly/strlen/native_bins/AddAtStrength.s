  .text
  .globl AddAtStrength
  .type AddAtStrength, @function

#! file-offset 0x6693
#! rip-offset  0x406693
#! capacity    17 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.AddAtStrength:              #        0x406693  0      OPC=0     
  movl 0x21f3a7(%rip), %eax  #  1     0x406693  6      OPC=1156  
  cmpl %eax, 0xc(%rdi)       #  2     0x406699  3      OPC=457   
  je .L_40669f               #  3     0x40669c  6      OPC=893   
  nop                        #  4     0x4066a2  1      OPC=1343  
  nop                        #  5     0x4066a3  1      OPC=1343  
  retq                       #  6     0x4066a4  1      OPC=1978  
.L_40669f:                   #        0x4066a5  0      OPC=0     
  jmpq .IncrementalAdd       #  7     0x4066a5  5      OPC=930   
                                                                 
.size AddAtStrength, .-AddAtStrength

