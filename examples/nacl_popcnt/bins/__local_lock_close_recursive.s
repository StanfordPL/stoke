  .text
  .globl __local_lock_close_recursive
  .type __local_lock_close_recursive, @function

#! file-offset 0x40720
#! rip-offset  0x40720
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.__local_lock_close_recursive:  #        0x40720  0      
  movl %edi, %edi               #  1     0x40720  2      
  jmpq .__local_lock_close      #  2     0x40722  5      
  nop                           #  3     0x40727  1      
  nop                           #  4     0x40728  1      
                                                         
.size __local_lock_close_recursive, .-__local_lock_close_recursive

