  .text
  .globl __local_lock_release_recursive
  .type __local_lock_release_recursive, @function

#! file-offset 0x40680
#! rip-offset  0x40680
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.__local_lock_release_recursive:  #        0x40680  0      
  movl %edi, %edi                 #  1     0x40680  2      
  jmpq .__local_lock_release      #  2     0x40682  5      
  nop                             #  3     0x40687  1      
  nop                             #  4     0x40688  1      
                                                           
.size __local_lock_release_recursive, .-__local_lock_release_recursive

