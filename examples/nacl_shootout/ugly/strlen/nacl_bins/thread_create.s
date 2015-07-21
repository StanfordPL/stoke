  .text
  .globl thread_create
  .type thread_create, @function

#! file-offset 0x6ca60
#! rip-offset  0x2ca60
#! capacity    32 bytes

# Text                  #  Line  RIP      Bytes  Opcode    
.thread_create:         #        0x2ca60  0      OPC=0     
  movl %esi, %esi       #  1     0x2ca60  2      OPC=1157  
  movl %edx, %ecx       #  2     0x2ca62  2      OPC=1157  
  movl %edi, %edi       #  3     0x2ca64  2      OPC=1157  
  movl %esi, %edx       #  4     0x2ca66  2      OPC=1157  
  xorl %esi, %esi       #  5     0x2ca68  2      OPC=3758  
  jmpq .pthread_create  #  6     0x2ca6a  5      OPC=930   
  nop                   #  7     0x2ca6f  1      OPC=1343  
  nop                   #  8     0x2ca70  1      OPC=1343  
  nop                   #  9     0x2ca71  1      OPC=1343  
  nop                   #  10    0x2ca72  1      OPC=1343  
  nop                   #  11    0x2ca73  1      OPC=1343  
  nop                   #  12    0x2ca74  1      OPC=1343  
  nop                   #  13    0x2ca75  1      OPC=1343  
  nop                   #  14    0x2ca76  1      OPC=1343  
  nop                   #  15    0x2ca77  1      OPC=1343  
  nop                   #  16    0x2ca78  1      OPC=1343  
  nop                   #  17    0x2ca79  1      OPC=1343  
  nop                   #  18    0x2ca7a  1      OPC=1343  
  nop                   #  19    0x2ca7b  1      OPC=1343  
  nop                   #  20    0x2ca7c  1      OPC=1343  
  nop                   #  21    0x2ca7d  1      OPC=1343  
  nop                   #  22    0x2ca7e  1      OPC=1343  
  nop                   #  23    0x2ca7f  1      OPC=1343  
                                                           
.size thread_create, .-thread_create

