  .text
  .globl thread_create
  .type thread_create, @function

#! file-offset 0x3fc20
#! rip-offset  0x3fc20
#! capacity    32 bytes

# Text                  #  Line  RIP      Bytes  
.thread_create:         #        0x3fc20  0      
  movl %esi, %esi       #  1     0x3fc20  2      
  movl %edx, %ecx       #  2     0x3fc22  2      
  movl %edi, %edi       #  3     0x3fc24  2      
  movl %esi, %edx       #  4     0x3fc26  2      
  xorl %esi, %esi       #  5     0x3fc28  2      
  jmpq .pthread_create  #  6     0x3fc2a  5      
  nop                   #  7     0x3fc2f  1      
  nop                   #  8     0x3fc30  1      
  nop                   #  9     0x3fc31  1      
  nop                   #  10    0x3fc32  1      
  nop                   #  11    0x3fc33  1      
  nop                   #  12    0x3fc34  1      
  nop                   #  13    0x3fc35  1      
  nop                   #  14    0x3fc36  1      
  nop                   #  15    0x3fc37  1      
  nop                   #  16    0x3fc38  1      
  nop                   #  17    0x3fc39  1      
  nop                   #  18    0x3fc3a  1      
  nop                   #  19    0x3fc3b  1      
  nop                   #  20    0x3fc3c  1      
  nop                   #  21    0x3fc3d  1      
  nop                   #  22    0x3fc3e  1      
  nop                   #  23    0x3fc3f  1      
                                                 
.size thread_create, .-thread_create

