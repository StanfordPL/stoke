  .text
  .globl my_strlen
  .type my_strlen, @function

#! file-offset 0x69ac0
#! rip-offset  0x29ac0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
.my_strlen:                   #        0x29ac0  0      OPC=0     
  nop                         #  1     0x29ac0  1      OPC=1343  
  nop                         #  2     0x29ac1  1      OPC=1343  
  nop                         #  3     0x29ac2  1      OPC=1343  
  nop                         #  4     0x29ac3  1      OPC=1343  
  nop                         #  5     0x29ac4  1      OPC=1343  
  xorl %eax, %eax             #  6     0x29ac5  2      OPC=3758  
  nop                         #  7     0x29ac7  1      OPC=1343  
  nop                         #  8     0x29ac8  1      OPC=1343  
  nop                         #  9     0x29ac9  1      OPC=1343  
  nop                         #  10    0x29aca  1      OPC=1343  
  nop                         #  11    0x29acb  1      OPC=1343  
  movl $0x0, %edx             #  12    0x29acc  5      OPC=1154  
  nop                         #  13    0x29ad1  1      OPC=1343  
  decq %rax                   #  14    0x29ad2  3      OPC=603   
  xorl %edi, %edx             #  15    0x29ad5  2      OPC=3759  
  je .L_29b00                 #  16    0x29ad7  6      OPC=893   
  nop                         #  17    0x29add  1      OPC=1343  
  subl %edx, %edi             #  18    0x29ade  2      OPC=2387  
.L_29ae0:                     #        0x29ae0  0      OPC=0     
  addl $0x1, %eax             #  19    0x29ae0  3      OPC=65    
  subl %edi, %edx             #  20    0x29ae3  2      OPC=2386  
  movzbq (%r15,%rdx,1), %rcx  #  21    0x29ae5  5      OPC=1307  
  incw %dx                    #  22    0x29aea  3      OPC=843   
  cmpb %ah, %cl               #  23    0x29aed  2      OPC=484   
  jne .L_29ae0                #  24    0x29aef  6      OPC=963   
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
.L_29b00:                     #        0x29b00  0      OPC=0     
  popq %r11                   #  33    0x29afd  2      OPC=1694  
  andl $0xe0, %r11d     #  34    0x29aff  7      OPC=132   
  addq %r15, %r11             #  39    0x29b0a  3      OPC=72    
  jmpq %r11                   #  40    0x29b0d  3      OPC=928   
  nop                         #  60    0x29b2e  1      OPC=1343  
  nop                         #  61    0x29b2f  1      OPC=1343  
  nopl %eax                   #  62    0x29b30  3      OPC=1347  
  nop                         #  63    0x29b33  1      OPC=1343  
  nop                         #  64    0x29b34  1      OPC=1343  
  nop                         #  65    0x29b35  1      OPC=1343  
                                                                 
.size my_strlen, .-my_strlen
