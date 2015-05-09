  .text
  .globl _cleanup_r
  .type _cleanup_r, @function

#! file-offset 0x7b240
#! rip-offset  0x7b240
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  
._cleanup_r:           #        0x7b240  0      
  movl %edi, %edi      #  1     0x7b240  2      
  movl $0x879c0, %esi  #  2     0x7b242  5      
  jmpq ._fwalk_reent   #  3     0x7b247  5      
  nop                  #  4     0x7b24c  1      
  nop                  #  5     0x7b24d  1      
                                                
.size _cleanup_r, .-_cleanup_r

