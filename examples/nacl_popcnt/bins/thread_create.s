  .text
  .globl thread_create
  .type thread_create, @function

#! file-offset 0x3fc40
#! rip-offset  0x3fc40
#! capacity    32 bytes

# Text                  #  Line  RIP      Bytes  
.thread_create:         #        0x3fc40  0      
  movl %esi, %esi       #  1     0x3fc40  2      
  movl %edx, %ecx       #  2     0x3fc42  2      
  movl %edi, %edi       #  3     0x3fc44  2      
  movl %esi, %edx       #  4     0x3fc46  2      
  xorl %esi, %esi       #  5     0x3fc48  2      
  jmpq .pthread_create  #  6     0x3fc4a  5      
  nop                   #  7     0x3fc4f  1      
  nop                   #  8     0x3fc50  1      
  nop                   #  9     0x3fc51  1      
  nop                   #  10    0x3fc52  1      
  nop                   #  11    0x3fc53  1      
  nop                   #  12    0x3fc54  1      
  nop                   #  13    0x3fc55  1      
  nop                   #  14    0x3fc56  1      
  nop                   #  15    0x3fc57  1      
  nop                   #  16    0x3fc58  1      
  nop                   #  17    0x3fc59  1      
  nop                   #  18    0x3fc5a  1      
  nop                   #  19    0x3fc5b  1      
  nop                   #  20    0x3fc5c  1      
  nop                   #  21    0x3fc5d  1      
  nop                   #  22    0x3fc5e  1      
  nop                   #  23    0x3fc5f  1      
                                                 
.size thread_create, .-thread_create

