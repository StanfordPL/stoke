  .text
  .globl __local_lock_release_recursive
  .type __local_lock_release_recursive, @function

#! file-offset 0x405e0
#! rip-offset  0x405e0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.__local_lock_release_recursive:  #        0x405e0  0      
  movl %edi, %edi                 #  1     0x405e0  2      
  jmpq .__local_lock_release      #  2     0x405e2  5      
  nop                             #  3     0x405e7  1      
  nop                             #  4     0x405e8  1      
                                                           
.size __local_lock_release_recursive, .-__local_lock_release_recursive

