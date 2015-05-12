  .text
  .globl __sfp_lock_acquire
  .type __sfp_lock_acquire, @function

#! file-offset 0x7af40
#! rip-offset  0x7af40
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__sfp_lock_acquire:                    #        0x7af40  0      
  movl $0x10030a00, %edi                #  1     0x7af40  5      
  jmpq .__local_lock_acquire_recursive  #  2     0x7af45  5      
  nop                                   #  3     0x7af4a  1      
  nop                                   #  4     0x7af4b  1      
                                                                 
.size __sfp_lock_acquire, .-__sfp_lock_acquire

