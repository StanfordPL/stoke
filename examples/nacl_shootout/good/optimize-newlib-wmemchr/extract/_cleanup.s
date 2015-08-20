  .text
  .globl _cleanup
  .type _cleanup, @function

#! file-offset 0x15aa20
#! rip-offset  0x11aa20
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode            
._cleanup:                    #        0x11aa20  0      OPC=<label>       
  movl 0xff263ba(%rip), %edi  #  1     0x11aa20  6      OPC=movl_r32_m32  
  jmpq ._cleanup_r            #  2     0x11aa26  5      OPC=jmpq_label_1  
  nop                         #  3     0x11aa2b  1      OPC=nop           
  nop                         #  4     0x11aa2c  1      OPC=nop           
  nop                         #  5     0x11aa2d  1      OPC=nop           
  nop                         #  6     0x11aa2e  1      OPC=nop           
  nop                         #  7     0x11aa2f  1      OPC=nop           
  nop                         #  8     0x11aa30  1      OPC=nop           
  nop                         #  9     0x11aa31  1      OPC=nop           
  nop                         #  10    0x11aa32  1      OPC=nop           
  nop                         #  11    0x11aa33  1      OPC=nop           
  nop                         #  12    0x11aa34  1      OPC=nop           
  nop                         #  13    0x11aa35  1      OPC=nop           
  nop                         #  14    0x11aa36  1      OPC=nop           
  nop                         #  15    0x11aa37  1      OPC=nop           
  nop                         #  16    0x11aa38  1      OPC=nop           
  nop                         #  17    0x11aa39  1      OPC=nop           
  nop                         #  18    0x11aa3a  1      OPC=nop           
  nop                         #  19    0x11aa3b  1      OPC=nop           
  nop                         #  20    0x11aa3c  1      OPC=nop           
  nop                         #  21    0x11aa3d  1      OPC=nop           
  nop                         #  22    0x11aa3e  1      OPC=nop           
  nop                         #  23    0x11aa3f  1      OPC=nop           
                                                                          
.size _cleanup, .-_cleanup

