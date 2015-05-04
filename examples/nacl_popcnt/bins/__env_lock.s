  .text
  .globl __env_lock
  .type __env_lock, @function

#! file-offset 0x7a860
#! rip-offset  0x7a860
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__env_lock:                            #        0x7a860  0      
  movl $0x100309c0, %edi                #  1     0x7a860  5      
  jmpq .__local_lock_acquire_recursive  #  2     0x7a865  5      
  nop                                   #  3     0x7a86a  1      
  nop                                   #  4     0x7a86b  1      
  nop                                   #  5     0x7a86c  1      
  nop                                   #  6     0x7a86d  1      
  nop                                   #  7     0x7a86e  1      
  nop                                   #  8     0x7a86f  1      
  nop                                   #  9     0x7a870  1      
  nop                                   #  10    0x7a871  1      
  nop                                   #  11    0x7a872  1      
  nop                                   #  12    0x7a873  1      
  nop                                   #  13    0x7a874  1      
  nop                                   #  14    0x7a875  1      
  nop                                   #  15    0x7a876  1      
  nop                                   #  16    0x7a877  1      
  nop                                   #  17    0x7a878  1      
  nop                                   #  18    0x7a879  1      
  nop                                   #  19    0x7a87a  1      
  nop                                   #  20    0x7a87b  1      
  nop                                   #  21    0x7a87c  1      
  nop                                   #  22    0x7a87d  1      
  nop                                   #  23    0x7a87e  1      
  nop                                   #  24    0x7a87f  1      
                                                                 
.size __env_lock, .-__env_lock

