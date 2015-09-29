  .text
  .globl _cleanup
  .type _cleanup, @function

#! file-offset 0x15b140
#! rip-offset  0x11b140
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode            
._cleanup:                    #        0x11b140  0      OPC=<label>       
  movl 0xff25c9a(%rip), %edi  #  1     0x11b140  6      OPC=movl_r32_m32  
  jmpq ._cleanup_r            #  2     0x11b146  5      OPC=jmpq_label_1  
  nop                         #  3     0x11b14b  1      OPC=nop           
  nop                         #  4     0x11b14c  1      OPC=nop           
  nop                         #  5     0x11b14d  1      OPC=nop           
  nop                         #  6     0x11b14e  1      OPC=nop           
  nop                         #  7     0x11b14f  1      OPC=nop           
  nop                         #  8     0x11b150  1      OPC=nop           
  nop                         #  9     0x11b151  1      OPC=nop           
  nop                         #  10    0x11b152  1      OPC=nop           
  nop                         #  11    0x11b153  1      OPC=nop           
  nop                         #  12    0x11b154  1      OPC=nop           
  nop                         #  13    0x11b155  1      OPC=nop           
  nop                         #  14    0x11b156  1      OPC=nop           
  nop                         #  15    0x11b157  1      OPC=nop           
  nop                         #  16    0x11b158  1      OPC=nop           
  nop                         #  17    0x11b159  1      OPC=nop           
  nop                         #  18    0x11b15a  1      OPC=nop           
  nop                         #  19    0x11b15b  1      OPC=nop           
  nop                         #  20    0x11b15c  1      OPC=nop           
  nop                         #  21    0x11b15d  1      OPC=nop           
  nop                         #  22    0x11b15e  1      OPC=nop           
  nop                         #  23    0x11b15f  1      OPC=nop           
                                                                          
.size _cleanup, .-_cleanup

