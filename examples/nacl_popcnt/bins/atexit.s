  .text
  .globl atexit
  .type atexit, @function

#! file-offset 0x68380
#! rip-offset  0x68380
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.atexit:                     #        0x68380  0      
  movl %edi, %esi            #  1     0x68380  2      
  xorl %ecx, %ecx            #  2     0x68382  2      
  xorl %edx, %edx            #  3     0x68384  2      
  xorl %edi, %edi            #  4     0x68386  2      
  jmpq .__register_exitproc  #  5     0x68388  5      
  nop                        #  6     0x6838d  1      
  nop                        #  7     0x6838e  1      
  nop                        #  8     0x6838f  1      
  nop                        #  9     0x68390  1      
  nop                        #  10    0x68391  1      
  nop                        #  11    0x68392  1      
  nop                        #  12    0x68393  1      
  nop                        #  13    0x68394  1      
  nop                        #  14    0x68395  1      
  nop                        #  15    0x68396  1      
  nop                        #  16    0x68397  1      
  nop                        #  17    0x68398  1      
  nop                        #  18    0x68399  1      
  nop                        #  19    0x6839a  1      
  nop                        #  20    0x6839b  1      
  nop                        #  21    0x6839c  1      
  nop                        #  22    0x6839d  1      
  nop                        #  23    0x6839e  1      
  nop                        #  24    0x6839f  1      
                                                      
.size atexit, .-atexit

