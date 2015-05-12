  .text
  .globl _cleanup
  .type _cleanup, @function

#! file-offset 0x7b280
#! rip-offset  0x7b280
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._cleanup:                    #        0x7b280  0      
  movl 0xffa8206(%rip), %edi  #  1     0x7b280  6      
  jmpq ._cleanup_r            #  2     0x7b286  5      
  nop                         #  3     0x7b28b  1      
  nop                         #  4     0x7b28c  1      
                                                       
.size _cleanup, .-_cleanup

