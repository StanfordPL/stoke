  .text
  .globl __env_lock
  .type __env_lock, @function

#! file-offset 0x7a7e0
#! rip-offset  0x7a7e0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__env_lock:                            #        0x7a7e0  0      
  movl $0x100309c0, %edi                #  1     0x7a7e0  5      
  jmpq .__local_lock_acquire_recursive  #  2     0x7a7e5  5      
  nop                                   #  3     0x7a7ea  1      
  nop                                   #  4     0x7a7eb  1      
  nop                                   #  5     0x7a7ec  1      
  nop                                   #  6     0x7a7ed  1      
  nop                                   #  7     0x7a7ee  1      
  nop                                   #  8     0x7a7ef  1      
  nop                                   #  9     0x7a7f0  1      
  nop                                   #  10    0x7a7f1  1      
  nop                                   #  11    0x7a7f2  1      
  nop                                   #  12    0x7a7f3  1      
  nop                                   #  13    0x7a7f4  1      
  nop                                   #  14    0x7a7f5  1      
  nop                                   #  15    0x7a7f6  1      
  nop                                   #  16    0x7a7f7  1      
  nop                                   #  17    0x7a7f8  1      
  nop                                   #  18    0x7a7f9  1      
  nop                                   #  19    0x7a7fa  1      
  nop                                   #  20    0x7a7fb  1      
  nop                                   #  21    0x7a7fc  1      
  nop                                   #  22    0x7a7fd  1      
  nop                                   #  23    0x7a7fe  1      
  nop                                   #  24    0x7a7ff  1      
                                                                 
.size __env_lock, .-__env_lock

