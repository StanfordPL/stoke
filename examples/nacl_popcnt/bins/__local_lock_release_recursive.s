  .text
  .globl __local_lock_release_recursive
  .type __local_lock_release_recursive, @function

#! file-offset 0x40600
#! rip-offset  0x40600
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  
.__local_lock_release_recursive:  #        0x40600  0      
  movl %edi, %edi                 #  1     0x40600  2      
  jmpq .__local_lock_release      #  2     0x40602  5      
  nop                             #  3     0x40607  1      
  nop                             #  4     0x40608  1      
                                                           
.size __local_lock_release_recursive, .-__local_lock_release_recursive

