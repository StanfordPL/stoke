  .text
  .globl __sinit_lock_release
  .type __sinit_lock_release, @function

#! file-offset 0x7aec0
#! rip-offset  0x7aec0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__sinit_lock_release:                  #        0x7aec0  0      
  movl $0x100309e0, %edi                #  1     0x7aec0  5      
  jmpq .__local_lock_release_recursive  #  2     0x7aec5  5      
  nop                                   #  3     0x7aeca  1      
  nop                                   #  4     0x7aecb  1      
                                                                 
.size __sinit_lock_release, .-__sinit_lock_release

