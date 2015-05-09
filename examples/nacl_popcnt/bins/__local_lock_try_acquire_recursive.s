  .text
  .globl __local_lock_try_acquire_recursive
  .type __local_lock_try_acquire_recursive, @function

#! file-offset 0x40640
#! rip-offset  0x40640
#! capacity    32 bytes

# Text                                #  Line  RIP      Bytes  
.__local_lock_try_acquire_recursive:  #        0x40640  0      
  movl %edi, %edi                     #  1     0x40640  2      
  jmpq .__local_lock_try_acquire      #  2     0x40642  5      
  nop                                 #  3     0x40647  1      
  nop                                 #  4     0x40648  1      
                                                               
.size __local_lock_try_acquire_recursive, .-__local_lock_try_acquire_recursive

