  .text
  .globl __local_lock_close_recursive
  .type __local_lock_close_recursive, @function

#! file-offset 0x40700
#! rip-offset  0x40700
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.__local_lock_close_recursive:  #        0x40700  0      
  movl %edi, %edi               #  1     0x40700  2      
  jmpq .__local_lock_close      #  2     0x40702  5      
  nop                           #  3     0x40707  1      
  nop                           #  4     0x40708  1      
                                                         
.size __local_lock_close_recursive, .-__local_lock_close_recursive

