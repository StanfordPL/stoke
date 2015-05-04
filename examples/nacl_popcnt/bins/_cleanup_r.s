  .text
  .globl _cleanup_r
  .type _cleanup_r, @function

#! file-offset 0x7b2e0
#! rip-offset  0x7b2e0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  
._cleanup_r:           #        0x7b2e0  0      
  movl %edi, %edi      #  1     0x7b2e0  2      
  movl $0x87a60, %esi  #  2     0x7b2e2  5      
  jmpq ._fwalk_reent   #  3     0x7b2e7  5      
  nop                  #  4     0x7b2ec  1      
  nop                  #  5     0x7b2ed  1      
                                                
.size _cleanup_r, .-_cleanup_r

