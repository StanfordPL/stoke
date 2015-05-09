  .text
  .globl __sinit_lock_acquire
  .type __sinit_lock_acquire, @function

#! file-offset 0x7af00
#! rip-offset  0x7af00
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
.__sinit_lock_acquire:                  #        0x7af00  0      
  movl $0x100309e0, %edi                #  1     0x7af00  5      
  jmpq .__local_lock_acquire_recursive  #  2     0x7af05  5      
  nop                                   #  3     0x7af0a  1      
  nop                                   #  4     0x7af0b  1      
                                                                 
.size __sinit_lock_acquire, .-__sinit_lock_acquire

