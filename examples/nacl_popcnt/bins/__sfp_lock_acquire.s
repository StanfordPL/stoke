  .text
  .globl __sfp_lock_acquire
  .type __sfp_lock_acquire, @function

#! file-offset 0x7afc0
#! rip-offset  0x7afc0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__sfp_lock_acquire:                    #        0x7afc0  0      
  movl $0x10030a00, %edi                #  1     0x7afc0  5      
  jmpq .__local_lock_acquire_recursive  #  2     0x7afc5  5      
  nop                                   #  3     0x7afca  1      
  nop                                   #  4     0x7afcb  1      
                                                                 
.size __sfp_lock_acquire, .-__sfp_lock_acquire

