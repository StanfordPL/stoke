  .text
  .globl my_strlen
  .type my_strlen, @function

#! file-offset 0x69ac0
#! rip-offset  0x29ac0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
.my_strlen:                   #        0x29ac0  0      OPC=0     
  movl %edi, %eax             #  2     0x29ac2  2      OPC=1157  
  subl $0x1, %eax
  nop                         #  4     0x29ac7  1      OPC=1343  
  nop                         #  5     0x29ac8  1      OPC=1343  
  nop                         #  6     0x29ac9  1      OPC=1343  
  nop                         #  7     0x29aca  1      OPC=1343  
  nop                         #  8     0x29acb  1      OPC=1343  
  nop                         #  10    0x29acf  1      OPC=1343  
  nop                         #  11    0x29ad0  1      OPC=1343  
  nop                         #  12    0x29ad1  1      OPC=1343  
  nop                         #  13    0x29ad2  1      OPC=1343  
  nop                         #  14    0x29ad3  1      OPC=1343  
  nop                         #  15    0x29ad4  1      OPC=1343  
  nop                         #  16    0x29ad5  1      OPC=1343  
  nop                         #  19    0x29ade  1      OPC=1343  
  nop                         #  20    0x29adf  1      OPC=1343  
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
.L_29ae0:                     #        0x29ae0  0      OPC=0     
  addl $0x1, %eax
  movzbl (%r15,%rax,1), %ecx 
  testb %cl, %cl
  jnz .L_29ae0 
  subl %edi, %eax
  popq %r11                   #  33    0x29afd  2      OPC=1694  
  andl $0xe0, %r11d     #  34    0x29aff  7      OPC=132   
  addq %r15, %r11             #  39    0x29b0a  3      OPC=72    
  jmpq %r11                   #  40    0x29b0d  3      OPC=928   
                                                                 
.size my_strlen, .-my_strlen


