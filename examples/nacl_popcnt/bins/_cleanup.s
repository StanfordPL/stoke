  .text
  .globl _cleanup
  .type _cleanup, @function

#! file-offset 0x7b300
#! rip-offset  0x7b300
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._cleanup:                    #        0x7b300  0      
  movl 0xffa8186(%rip), %edi  #  1     0x7b300  6      
  jmpq ._cleanup_r            #  2     0x7b306  5      
  nop                         #  3     0x7b30b  1      
  nop                         #  4     0x7b30c  1      
                                                       
.size _cleanup, .-_cleanup

