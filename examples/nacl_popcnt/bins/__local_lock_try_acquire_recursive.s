  .text
  .globl __local_lock_try_acquire_recursive
  .type __local_lock_try_acquire_recursive, @function

#! file-offset 0x40660
#! rip-offset  0x40660
#! capacity    32 bytes

# Text                                #  Line  RIP      Bytes  
.__local_lock_try_acquire_recursive:  #        0x40660  0      
  movl %edi, %edi                     #  1     0x40660  2      
  jmpq .__local_lock_try_acquire      #  2     0x40662  5      
  nop                                 #  3     0x40667  1      
  nop                                 #  4     0x40668  1      
                                                               
.size __local_lock_try_acquire_recursive, .-__local_lock_try_acquire_recursive

