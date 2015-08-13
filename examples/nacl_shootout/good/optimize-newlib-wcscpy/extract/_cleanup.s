  .text
  .globl _cleanup
  .type _cleanup, @function

#! file-offset 0x15a720
#! rip-offset  0x11a720
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode            
._cleanup:                    #        0x11a720  0      OPC=<label>       
  movl 0xff266ba(%rip), %edi  #  1     0x11a720  6      OPC=movl_r32_m32  
  jmpq ._cleanup_r            #  2     0x11a726  5      OPC=jmpq_label_1  
  nop                         #  3     0x11a72b  1      OPC=nop           
  nop                         #  4     0x11a72c  1      OPC=nop           
  nop                         #  5     0x11a72d  1      OPC=nop           
  nop                         #  6     0x11a72e  1      OPC=nop           
  nop                         #  7     0x11a72f  1      OPC=nop           
  nop                         #  8     0x11a730  1      OPC=nop           
  nop                         #  9     0x11a731  1      OPC=nop           
  nop                         #  10    0x11a732  1      OPC=nop           
  nop                         #  11    0x11a733  1      OPC=nop           
  nop                         #  12    0x11a734  1      OPC=nop           
  nop                         #  13    0x11a735  1      OPC=nop           
  nop                         #  14    0x11a736  1      OPC=nop           
  nop                         #  15    0x11a737  1      OPC=nop           
  nop                         #  16    0x11a738  1      OPC=nop           
  nop                         #  17    0x11a739  1      OPC=nop           
  nop                         #  18    0x11a73a  1      OPC=nop           
  nop                         #  19    0x11a73b  1      OPC=nop           
  nop                         #  20    0x11a73c  1      OPC=nop           
  nop                         #  21    0x11a73d  1      OPC=nop           
  nop                         #  22    0x11a73e  1      OPC=nop           
  nop                         #  23    0x11a73f  1      OPC=nop           
                                                                          
.size _cleanup, .-_cleanup

