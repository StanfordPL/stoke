  .text
  .globl __cxa_atexit
  .type __cxa_atexit, @function

#! file-offset 0x683a0
#! rip-offset  0x683a0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.__cxa_atexit:               #        0x683a0  0      
  movl %edi, %edi            #  1     0x683a0  2      
  movl %esi, %esi            #  2     0x683a2  2      
  movl %edx, %ecx            #  3     0x683a4  2      
  movl %esi, %edx            #  4     0x683a6  2      
  movl %edi, %esi            #  5     0x683a8  2      
  movl $0x2, %edi            #  6     0x683aa  5      
  jmpq .__register_exitproc  #  7     0x683af  5      
  nop                        #  8     0x683b4  1      
  nop                        #  9     0x683b5  1      
  nop                        #  10    0x683b6  1      
  nop                        #  11    0x683b7  1      
  nop                        #  12    0x683b8  1      
  nop                        #  13    0x683b9  1      
  nop                        #  14    0x683ba  1      
  nop                        #  15    0x683bb  1      
  nop                        #  16    0x683bc  1      
  nop                        #  17    0x683bd  1      
  nop                        #  18    0x683be  1      
  nop                        #  19    0x683bf  1      
                                                      
.size __cxa_atexit, .-__cxa_atexit

