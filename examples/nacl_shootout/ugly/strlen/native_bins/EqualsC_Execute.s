  .text
  .globl EqualsC_Execute
  .type EqualsC_Execute, @function

#! file-offset 0x5771
#! rip-offset  0x405771
#! capacity    43 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.EqualsC_Execute:          #        0x405771  0      OPC=0     
  movzbl 0x10(%rdi), %eax  #  1     0x405771  4      OPC=1302  
  testb %al, %al           #  2     0x405775  2      OPC=2440  
  je .L_40578d             #  3     0x405777  6      OPC=893   
  nop                      #  4     0x40577d  1      OPC=1343  
  nop                      #  5     0x40577e  1      OPC=1343  
  cmpb $0x1, %al           #  6     0x40577f  2      OPC=449   
  jne .L_40578c            #  7     0x405781  6      OPC=963   
  nop                      #  8     0x405787  1      OPC=1343  
  nop                      #  9     0x405788  1      OPC=1343  
  movq 0x20(%rdi), %rax    #  10    0x405789  4      OPC=1161  
  movq (%rax), %rdx        #  11    0x40578d  3      OPC=1161  
  movq 0x28(%rdi), %rax    #  12    0x405790  4      OPC=1161  
  movq %rdx, (%rax)        #  13    0x405794  3      OPC=1138  
  retq                     #  14    0x405797  1      OPC=1978  
.L_40578c:                 #        0x405798  0      OPC=0     
  retq                     #  15    0x405798  1      OPC=1978  
.L_40578d:                 #        0x405799  0      OPC=0     
  movq 0x28(%rdi), %rax    #  16    0x405799  4      OPC=1161  
  movq (%rax), %rdx        #  17    0x40579d  3      OPC=1161  
  movq 0x20(%rdi), %rax    #  18    0x4057a0  4      OPC=1161  
  movq %rdx, (%rax)        #  19    0x4057a4  3      OPC=1138  
  retq                     #  20    0x4057a7  1      OPC=1978  
                                                               
.size EqualsC_Execute, .-EqualsC_Execute

