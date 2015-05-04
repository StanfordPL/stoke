  .text
  .globl __local_lock_close_recursive
  .type __local_lock_close_recursive, @function

#! file-offset 0x407a0
#! rip-offset  0x407a0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  
.__local_lock_close_recursive:  #        0x407a0  0      
  movl %edi, %edi               #  1     0x407a0  2      
  jmpq .__local_lock_close      #  2     0x407a2  5      
  nop                           #  3     0x407a7  1      
  nop                           #  4     0x407a8  1      
                                                         
.size __local_lock_close_recursive, .-__local_lock_close_recursive

