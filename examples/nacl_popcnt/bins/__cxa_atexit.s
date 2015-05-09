  .text
  .globl __cxa_atexit
  .type __cxa_atexit, @function

#! file-offset 0x68380
#! rip-offset  0x68380
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.__cxa_atexit:               #        0x68380  0      
  movl %edi, %edi            #  1     0x68380  2      
  movl %esi, %esi            #  2     0x68382  2      
  movl %edx, %ecx            #  3     0x68384  2      
  movl %esi, %edx            #  4     0x68386  2      
  movl %edi, %esi            #  5     0x68388  2      
  movl $0x2, %edi            #  6     0x6838a  5      
  jmpq .__register_exitproc  #  7     0x6838f  5      
  nop                        #  8     0x68394  1      
  nop                        #  9     0x68395  1      
  nop                        #  10    0x68396  1      
  nop                        #  11    0x68397  1      
  nop                        #  12    0x68398  1      
  nop                        #  13    0x68399  1      
  nop                        #  14    0x6839a  1      
  nop                        #  15    0x6839b  1      
  nop                        #  16    0x6839c  1      
  nop                        #  17    0x6839d  1      
  nop                        #  18    0x6839e  1      
  nop                        #  19    0x6839f  1      
                                                      
.size __cxa_atexit, .-__cxa_atexit

