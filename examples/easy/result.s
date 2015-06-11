  .text
  .globl calc
  .type calc, @function

#! file-offset 0x5a0
#! rip-offset  0x4005a0
#! capacity    16 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.calc:                     #        0x4005a0  0      OPC=0     
  addl $0x3, %edi          #  1     0x4005a0  3      OPC=65    
  imull $0x40, %edi, %eax  #  2     0x4005a3  6      OPC=822   
  sarw $0x8, %ax           #  3     0x4005a9  4      OPC=2093  
  retq                     #  4     0x4005ad  1      OPC=1978  
                                                               
.size calc, .-calc
