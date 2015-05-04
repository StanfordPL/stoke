  .text
  .globl thread_create
  .type thread_create, @function

#! file-offset 0x3fcc0
#! rip-offset  0x3fcc0
#! capacity    32 bytes

# Text                  #  Line  RIP      Bytes  
.thread_create:         #        0x3fcc0  0      
  movl %esi, %esi       #  1     0x3fcc0  2      
  movl %edx, %ecx       #  2     0x3fcc2  2      
  movl %edi, %edi       #  3     0x3fcc4  2      
  movl %esi, %edx       #  4     0x3fcc6  2      
  xorl %esi, %esi       #  5     0x3fcc8  2      
  jmpq .pthread_create  #  6     0x3fcca  5      
  nop                   #  7     0x3fccf  1      
  nop                   #  8     0x3fcd0  1      
  nop                   #  9     0x3fcd1  1      
  nop                   #  10    0x3fcd2  1      
  nop                   #  11    0x3fcd3  1      
  nop                   #  12    0x3fcd4  1      
  nop                   #  13    0x3fcd5  1      
  nop                   #  14    0x3fcd6  1      
  nop                   #  15    0x3fcd7  1      
  nop                   #  16    0x3fcd8  1      
  nop                   #  17    0x3fcd9  1      
  nop                   #  18    0x3fcda  1      
  nop                   #  19    0x3fcdb  1      
  nop                   #  20    0x3fcdc  1      
  nop                   #  21    0x3fcdd  1      
  nop                   #  22    0x3fcde  1      
  nop                   #  23    0x3fcdf  1      
                                                 
.size thread_create, .-thread_create

