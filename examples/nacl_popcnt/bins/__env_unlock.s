  .text
  .globl __env_unlock
  .type __env_unlock, @function

#! file-offset 0x7a840
#! rip-offset  0x7a840
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__env_unlock:                          #        0x7a840  0      
  movl $0x100309c0, %edi                #  1     0x7a840  5      
  jmpq .__local_lock_release_recursive  #  2     0x7a845  5      
  nop                                   #  3     0x7a84a  1      
  nop                                   #  4     0x7a84b  1      
                                                                 
.size __env_unlock, .-__env_unlock

