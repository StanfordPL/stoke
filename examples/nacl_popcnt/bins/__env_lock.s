  .text
  .globl __env_lock
  .type __env_lock, @function

#! file-offset 0x7a7c0
#! rip-offset  0x7a7c0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__env_lock:                            #        0x7a7c0  0      
  movl $0x100309c0, %edi                #  1     0x7a7c0  5      
  jmpq .__local_lock_acquire_recursive  #  2     0x7a7c5  5      
  nop                                   #  3     0x7a7ca  1      
  nop                                   #  4     0x7a7cb  1      
  nop                                   #  5     0x7a7cc  1      
  nop                                   #  6     0x7a7cd  1      
  nop                                   #  7     0x7a7ce  1      
  nop                                   #  8     0x7a7cf  1      
  nop                                   #  9     0x7a7d0  1      
  nop                                   #  10    0x7a7d1  1      
  nop                                   #  11    0x7a7d2  1      
  nop                                   #  12    0x7a7d3  1      
  nop                                   #  13    0x7a7d4  1      
  nop                                   #  14    0x7a7d5  1      
  nop                                   #  15    0x7a7d6  1      
  nop                                   #  16    0x7a7d7  1      
  nop                                   #  17    0x7a7d8  1      
  nop                                   #  18    0x7a7d9  1      
  nop                                   #  19    0x7a7da  1      
  nop                                   #  20    0x7a7db  1      
  nop                                   #  21    0x7a7dc  1      
  nop                                   #  22    0x7a7dd  1      
  nop                                   #  23    0x7a7de  1      
  nop                                   #  24    0x7a7df  1      
                                                                 
.size __env_lock, .-__env_lock

