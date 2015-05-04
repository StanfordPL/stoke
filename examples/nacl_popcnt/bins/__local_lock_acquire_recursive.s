  .text
  .globl __local_lock_acquire_recursive
  .type __local_lock_acquire_recursive, @function

#! file-offset 0x40740
#! rip-offset  0x40740
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.__local_lock_acquire_recursive:  #        0x40740  0      
  movl %edi, %edi                 #  1     0x40740  2      
  jmpq .__local_lock_acquire      #  2     0x40742  5      
  nop                             #  3     0x40747  1      
  nop                             #  4     0x40748  1      
                                                           
.size __local_lock_acquire_recursive, .-__local_lock_acquire_recursive

