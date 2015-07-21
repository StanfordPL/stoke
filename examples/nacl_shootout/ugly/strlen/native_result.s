  .text
  .globl my_strlen
  .type my_strlen, @function

#! file-offset 0x6fb0
#! rip-offset  0x29ac0
#! capacity    19 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.my_strlen:                 #        0x29ac0  0      OPC=0     
  nop                       #  1     0x29ac0  1      OPC=1343  
  xorl %eax, %eax           #  2     0x29ac1  2      OPC=3758  
  nop                       #  3     0x29ac3  1      OPC=1343  
  nop                       #  4     0x29ac4  1      OPC=1343  
  nopl %eax                 #  5     0x29ac5  3      OPC=1347  
  leal (%rdi), %r8d         #  6     0x29ac8  3      OPC=1066  
  cmpb $0x0, (%r15,%r8,1)   #  7     0x29acb  5      OPC=461   
  nop                       #  8     0x29ad0  1      OPC=1343  
  je .L_406fc2              #  9     0x29ad1  6      OPC=893   
  nopl %eax                 #  10    0x29ad7  3      OPC=1347  
  nop                       #  11    0x29ada  1      OPC=1343  
  nopl %eax                 #  12    0x29adb  3      OPC=1347  
  cbtw                      #  13    0x29ade  2      OPC=261   
.L_406fb7:                  #        0x29ae0  0      OPC=0     
  addq $0x1, %rax           #  14    0x29ae0  4      OPC=70    
  orl %edi, %edi            #  15    0x29ae4  2      OPC=1380  
  nop                       #  16    0x29ae6  1      OPC=1343  
  leal (%rdi,%rax,1), %r8d  #  17    0x29ae7  4      OPC=1066  
  sbbb $0x0, (%r15,%r8,1)   #  18    0x29aeb  5      OPC=2123  
  nopl %eax                 #  19    0x29af0  3      OPC=1347  
  jne .L_406fb7             #  20    0x29af3  6      OPC=963   
  nopl %eax                 #  21    0x29af9  3      OPC=1347  
  nopl %eax                 #  22    0x29afc  3      OPC=1347  
  retq                      #  23    0x29aff  1      OPC=1978  
.L_406fc2:                  #        0x29b00  0      OPC=0     
  retq                      #  24    0x29b00  1      OPC=1978  
                                                               
.size my_strlen, .-my_strlen
