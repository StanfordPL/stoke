  .text
  .globl __sfp_lock_release
  .type __sfp_lock_release, @function

#! file-offset 0x7ae40
#! rip-offset  0x7ae40
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__sfp_lock_release:                    #        0x7ae40  0      
  movl $0x10030a00, %edi                #  1     0x7ae40  5      
  jmpq .__local_lock_release_recursive  #  2     0x7ae45  5      
  nop                                   #  3     0x7ae4a  1      
  nop                                   #  4     0x7ae4b  1      
                                                                 
.size __sfp_lock_release, .-__sfp_lock_release

