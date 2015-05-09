  .text
  .globl atexit
  .type atexit, @function

#! file-offset 0x68360
#! rip-offset  0x68360
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.atexit:                     #        0x68360  0      
  movl %edi, %esi            #  1     0x68360  2      
  xorl %ecx, %ecx            #  2     0x68362  2      
  xorl %edx, %edx            #  3     0x68364  2      
  xorl %edi, %edi            #  4     0x68366  2      
  jmpq .__register_exitproc  #  5     0x68368  5      
  nop                        #  6     0x6836d  1      
  nop                        #  7     0x6836e  1      
  nop                        #  8     0x6836f  1      
  nop                        #  9     0x68370  1      
  nop                        #  10    0x68371  1      
  nop                        #  11    0x68372  1      
  nop                        #  12    0x68373  1      
  nop                        #  13    0x68374  1      
  nop                        #  14    0x68375  1      
  nop                        #  15    0x68376  1      
  nop                        #  16    0x68377  1      
  nop                        #  17    0x68378  1      
  nop                        #  18    0x68379  1      
  nop                        #  19    0x6837a  1      
  nop                        #  20    0x6837b  1      
  nop                        #  21    0x6837c  1      
  nop                        #  22    0x6837d  1      
  nop                        #  23    0x6837e  1      
  nop                        #  24    0x6837f  1      
                                                      
.size atexit, .-atexit

