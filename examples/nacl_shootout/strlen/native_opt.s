  .text
  .globl my_strlen
  .type my_strlen, @function

#! file-offset 0x69ac0
#! rip-offset  0x29ac0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.my_strlen:                 #        0x29ac0  0      OPC=0     
  nop                       #  1     0x29ac0  1      OPC=1343  
  nop                       #  2     0x29ac1  1      OPC=1343  
  nopl %eax                 #  3     0x29ac2  3      OPC=1347  
  xorl %eax, %eax           #  4     0x29ac5  2      OPC=3758  
  nop                       #  5     0x29ac7  1      OPC=1343  
  leal (%rdi), %r8d         #  6     0x29ac8  3      OPC=1066  
  cmpb $0x0, (%r15,%r8,1)   #  7     0x29acb  5      OPC=461   
  nopl %esi                 #  8     0x29ad0  3      OPC=1347  
  je .L_406fc2              #  9     0x29ad3  6      OPC=893   
  nopl %eax                 #  10    0x29ad9  3      OPC=1347  
  nop                       #  11    0x29adc  1      OPC=1343  
  nop                       #  12    0x29add  1      OPC=1343  
  subl %eax, %eax           #  13    0x29ade  2      OPC=2386  
.L_406fb7:                  #        0x29ae0  0      OPC=0     
  addq $0x1, %rax           #  14    0x29ae0  4      OPC=70    
  leal (%rdi,%rax,1), %r8d  #  15    0x29ae4  4      OPC=1066  
  cmpb $0x0, (%r15,%r8,1)   #  16    0x29ae8  5      OPC=461   
  jne .L_406fb7             #  17    0x29aed  6      OPC=963   
  popq %r11                   #  33    0x29afd  2      OPC=1694  
  andl $0xe0, %r11d     #  34    0x29aff  7      OPC=132   
  addq %r15, %r11             #  39    0x29b0a  3      OPC=72    
  jmpq %r11                   #  40    0x29b0d  3      OPC=928   
  nop
.L_406fc2:                  #        0x29b00  0      OPC=0     
  popq %r11                   #  33    0x29afd  2      OPC=1694  
  andl $0xe0, %r11d     #  34    0x29aff  7      OPC=132   
  addq %r15, %r11             #  39    0x29b0a  3      OPC=72    
  jmpq %r11                   #  40    0x29b0d  3      OPC=928   
                                                               
.size my_strlen, .-my_strlen
