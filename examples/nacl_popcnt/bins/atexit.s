  .text
  .globl atexit
  .type atexit, @function

#! file-offset 0x68400
#! rip-offset  0x68400
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.atexit:                     #        0x68400  0      
  movl %edi, %esi            #  1     0x68400  2      
  xorl %ecx, %ecx            #  2     0x68402  2      
  xorl %edx, %edx            #  3     0x68404  2      
  xorl %edi, %edi            #  4     0x68406  2      
  jmpq .__register_exitproc  #  5     0x68408  5      
  nop                        #  6     0x6840d  1      
  nop                        #  7     0x6840e  1      
  nop                        #  8     0x6840f  1      
  nop                        #  9     0x68410  1      
  nop                        #  10    0x68411  1      
  nop                        #  11    0x68412  1      
  nop                        #  12    0x68413  1      
  nop                        #  13    0x68414  1      
  nop                        #  14    0x68415  1      
  nop                        #  15    0x68416  1      
  nop                        #  16    0x68417  1      
  nop                        #  17    0x68418  1      
  nop                        #  18    0x68419  1      
  nop                        #  19    0x6841a  1      
  nop                        #  20    0x6841b  1      
  nop                        #  21    0x6841c  1      
  nop                        #  22    0x6841d  1      
  nop                        #  23    0x6841e  1      
  nop                        #  24    0x6841f  1      
                                                      
.size atexit, .-atexit

