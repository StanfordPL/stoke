  .text
  .globl __local_lock_acquire_recursive
  .type __local_lock_acquire_recursive, @function

#! file-offset 0x406a0
#! rip-offset  0x406a0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.__local_lock_acquire_recursive:  #        0x406a0  0      
  movl %edi, %edi                 #  1     0x406a0  2      
  jmpq .__local_lock_acquire      #  2     0x406a2  5      
  nop                             #  3     0x406a7  1      
  nop                             #  4     0x406a8  1      
                                                           
.size __local_lock_acquire_recursive, .-__local_lock_acquire_recursive

