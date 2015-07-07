  .text
  .globl append
  .type append, @function

#! file-offset 0x5495
#! rip-offset  0x405495
#! capacity    24 bytes

# Text               #  Line  RIP       Bytes  Opcode    
.append:             #        0x405495  0      OPC=0     
  movq $0x0, (%rdi)  #  1     0x405495  7      OPC=1137  
  jmpq .L_4054a1     #  2     0x40549c  5      OPC=930   
  nop                #  3     0x4054a1  1      OPC=1343  
  nop                #  4     0x4054a2  1      OPC=1343  
.L_40549e:           #        0x4054a3  0      OPC=0     
  movq %rax, %rsi    #  5     0x4054a3  3      OPC=1162  
.L_4054a1:           #        0x4054a6  0      OPC=0     
  movq (%rsi), %rax  #  6     0x4054a6  3      OPC=1161  
  testq %rax, %rax   #  7     0x4054a9  3      OPC=2438  
  jne .L_40549e      #  8     0x4054ac  6      OPC=963   
  nop                #  9     0x4054b2  1      OPC=1343  
  nop                #  10    0x4054b3  1      OPC=1343  
  movq %rdi, (%rsi)  #  11    0x4054b4  3      OPC=1138  
  retq               #  12    0x4054b7  1      OPC=1978  
                                                         
.size append, .-append

