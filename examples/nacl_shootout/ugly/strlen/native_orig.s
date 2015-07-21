  .text
  .globl my_strlen
  .type my_strlen, @function

#! file-offset 0x6fb0
#! rip-offset  0x406fb0
#! capacity    19 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.my_strlen:                 #        0x406fb0  0      OPC=0     
  xorl %eax, %eax           #  1     0x406fb0  2      OPC=3758  
  cmpb $0x0, (%rdi)         #  2     0x406fb2  3      OPC=461   
  je .L_406fc2              #  3     0x406fb5  6      OPC=893   
  nop                       #  4     0x406fbb  1      OPC=1343  
  nop                       #  5     0x406fbc  1      OPC=1343  
.L_406fb7:                  #        0x406fbd  0      OPC=0     
  addq $0x1, %rax           #  6     0x406fbd  4      OPC=70    
  cmpb $0x0, (%rdi,%rax,1)  #  7     0x406fc1  4      OPC=461   
  jne .L_406fb7             #  8     0x406fc5  6      OPC=963   
  nop                       #  9     0x406fcb  1      OPC=1343  
  nop                       #  10    0x406fcc  1      OPC=1343  
  retq                      #  11    0x406fcd  1      OPC=1978  
.L_406fc2:                  #        0x406fce  0      OPC=0     
  retq                      #  12    0x406fce  1      OPC=1978  
                                                                
.size my_strlen, .-my_strlen

