  .text
  .globl _cleanup_r
  .type _cleanup_r, @function

#! file-offset 0x7b260
#! rip-offset  0x7b260
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  
._cleanup_r:           #        0x7b260  0      
  movl %edi, %edi      #  1     0x7b260  2      
  movl $0x879e0, %esi  #  2     0x7b262  5      
  jmpq ._fwalk_reent   #  3     0x7b267  5      
  nop                  #  4     0x7b26c  1      
  nop                  #  5     0x7b26d  1      
                                                
.size _cleanup_r, .-_cleanup_r

