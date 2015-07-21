  .text
  .globl pthread_mutexattr_init
  .type pthread_mutexattr_init, @function

#! file-offset 0x6cb80
#! rip-offset  0x2cb80
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.pthread_mutexattr_init:    #        0x2cb80  0      OPC=0     
  popq %r11                 #  1     0x2cb80  2      OPC=1694  
  movl %edi, %edi           #  2     0x2cb82  2      OPC=1157  
  xorl %eax, %eax           #  3     0x2cb84  2      OPC=3758  
  movl %edi, %edi           #  4     0x2cb86  2      OPC=1157  
  movl $0x0, (%r15,%rdi,1)  #  5     0x2cb88  8      OPC=1135  
  andl $0xffffffe0, %r11d   #  6     0x2cb90  7      OPC=131   
  nop                       #  7     0x2cb97  1      OPC=1343  
  nop                       #  8     0x2cb98  1      OPC=1343  
  nop                       #  9     0x2cb99  1      OPC=1343  
  nop                       #  10    0x2cb9a  1      OPC=1343  
  addq %r15, %r11           #  11    0x2cb9b  3      OPC=72    
  jmpq %r11                 #  12    0x2cb9e  3      OPC=928   
  nop                       #  13    0x2cba1  1      OPC=1343  
  nop                       #  14    0x2cba2  1      OPC=1343  
  nop                       #  15    0x2cba3  1      OPC=1343  
  nop                       #  16    0x2cba4  1      OPC=1343  
  nop                       #  17    0x2cba5  1      OPC=1343  
  nop                       #  18    0x2cba6  1      OPC=1343  
                                                               
.size pthread_mutexattr_init, .-pthread_mutexattr_init

