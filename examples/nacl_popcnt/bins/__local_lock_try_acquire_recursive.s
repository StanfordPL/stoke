  .text
  .globl __local_lock_try_acquire_recursive
  .type __local_lock_try_acquire_recursive, @function

#! file-offset 0x406e0
#! rip-offset  0x406e0
#! capacity    32 bytes

# Text                                #  Line  RIP      Bytes  
.__local_lock_try_acquire_recursive:  #        0x406e0  0      
  movl %edi, %edi                     #  1     0x406e0  2      
  jmpq .__local_lock_try_acquire      #  2     0x406e2  5      
  nop                                 #  3     0x406e7  1      
  nop                                 #  4     0x406e8  1      
                                                               
.size __local_lock_try_acquire_recursive, .-__local_lock_try_acquire_recursive

