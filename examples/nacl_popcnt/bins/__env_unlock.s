  .text
  .globl __env_unlock
  .type __env_unlock, @function

#! file-offset 0x7a7a0
#! rip-offset  0x7a7a0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__env_unlock:                          #        0x7a7a0  0      
  movl $0x100309c0, %edi                #  1     0x7a7a0  5      
  jmpq .__local_lock_release_recursive  #  2     0x7a7a5  5      
  nop                                   #  3     0x7a7aa  1      
  nop                                   #  4     0x7a7ab  1      
                                                                 
.size __env_unlock, .-__env_unlock

