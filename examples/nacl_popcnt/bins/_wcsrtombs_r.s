  .text
  .globl _wcsrtombs_r
  .type _wcsrtombs_r, @function

#! file-offset 0x77480
#! rip-offset  0x77480
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  
._wcsrtombs_r:            #        0x77480  0      
  movl %r8d, %r9d         #  1     0x77480  3      
  movl %edi, %edi         #  2     0x77483  2      
  movl %ecx, %r8d         #  3     0x77485  3      
  movl %esi, %esi         #  4     0x77488  2      
  movl %edx, %edx         #  5     0x7748a  2      
  movl $0xffffffff, %ecx  #  6     0x7748c  5      
  jmpq ._wcsnrtombs_r     #  7     0x77491  5      
  nop                     #  8     0x77496  1      
  nop                     #  9     0x77497  1      
  nop                     #  10    0x77498  1      
  nop                     #  11    0x77499  1      
  nop                     #  12    0x7749a  1      
  nop                     #  13    0x7749b  1      
  nop                     #  14    0x7749c  1      
  nop                     #  15    0x7749d  1      
  nop                     #  16    0x7749e  1      
  nop                     #  17    0x7749f  1      
                                                   
.size _wcsrtombs_r, .-_wcsrtombs_r

