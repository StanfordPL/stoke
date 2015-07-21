  .text
  .globl Instance_DidCreate
  .type Instance_DidCreate, @function

#! file-offset 0x6bdc0
#! rip-offset  0x2bdc0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.Instance_DidCreate:           #        0x2bdc0  0      OPC=0     
  movl %edi, 0x1004581a(%rip)  #  1     0x2bdc0  6      OPC=1136  
  movl $0x1, %eax              #  2     0x2bdc6  5      OPC=1154  
  popq %r11                    #  3     0x2bdcb  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  4     0x2bdcd  7      OPC=131   
  nop                          #  5     0x2bdd4  1      OPC=1343  
  nop                          #  6     0x2bdd5  1      OPC=1343  
  nop                          #  7     0x2bdd6  1      OPC=1343  
  nop                          #  8     0x2bdd7  1      OPC=1343  
  addq %r15, %r11              #  9     0x2bdd8  3      OPC=72    
  jmpq %r11                    #  10    0x2bddb  3      OPC=928   
  nop                          #  11    0x2bdde  1      OPC=1343  
  nop                          #  12    0x2bddf  1      OPC=1343  
  nop                          #  13    0x2bde0  1      OPC=1343  
  nop                          #  14    0x2bde1  1      OPC=1343  
  nop                          #  15    0x2bde2  1      OPC=1343  
  nop                          #  16    0x2bde3  1      OPC=1343  
  nop                          #  17    0x2bde4  1      OPC=1343  
  nop                          #  18    0x2bde5  1      OPC=1343  
  nop                          #  19    0x2bde6  1      OPC=1343  
                                                                  
.size Instance_DidCreate, .-Instance_DidCreate

