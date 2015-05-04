  .text
  .globl __cxa_atexit
  .type __cxa_atexit, @function

#! file-offset 0x68420
#! rip-offset  0x68420
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.__cxa_atexit:               #        0x68420  0      
  movl %edi, %edi            #  1     0x68420  2      
  movl %esi, %esi            #  2     0x68422  2      
  movl %edx, %ecx            #  3     0x68424  2      
  movl %esi, %edx            #  4     0x68426  2      
  movl %edi, %esi            #  5     0x68428  2      
  movl $0x2, %edi            #  6     0x6842a  5      
  jmpq .__register_exitproc  #  7     0x6842f  5      
  nop                        #  8     0x68434  1      
  nop                        #  9     0x68435  1      
  nop                        #  10    0x68436  1      
  nop                        #  11    0x68437  1      
  nop                        #  12    0x68438  1      
  nop                        #  13    0x68439  1      
  nop                        #  14    0x6843a  1      
  nop                        #  15    0x6843b  1      
  nop                        #  16    0x6843c  1      
  nop                        #  17    0x6843d  1      
  nop                        #  18    0x6843e  1      
  nop                        #  19    0x6843f  1      
                                                      
.size __cxa_atexit, .-__cxa_atexit

