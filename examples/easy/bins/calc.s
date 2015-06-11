  .text
  .globl calc
  .type calc, @function

#! file-offset 0x5a0
#! rip-offset  0x4005a0
#! capacity    16 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.calc:                  #        0x4005a0  0      OPC=0     
  movl %edi, %edx       #  1     0x4005a0  2      OPC=1157  
  sarl $0x2, %edx       #  2     0x4005a2  3      OPC=2096  
  andl $0x3, %edi       #  3     0x4005a5  3      OPC=132   
  leal 0x1(%rdx), %eax  #  4     0x4005a8  3      OPC=1066  
  cmovel %edx, %eax     #  5     0x4005ab  3      OPC=302   
  retq                  #  6     0x4005ae  1      OPC=1978  
  nop                   #  7     0x4005af  1      OPC=1343  
                                                            
.size calc, .-calc

