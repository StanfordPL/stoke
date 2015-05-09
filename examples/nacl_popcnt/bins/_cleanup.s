  .text
  .globl _cleanup
  .type _cleanup, @function

#! file-offset 0x7b260
#! rip-offset  0x7b260
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._cleanup:                    #        0x7b260  0      
  movl 0xffa8226(%rip), %edi  #  1     0x7b260  6      
  jmpq ._cleanup_r            #  2     0x7b266  5      
  nop                         #  3     0x7b26b  1      
  nop                         #  4     0x7b26c  1      
                                                       
.size _cleanup, .-_cleanup

