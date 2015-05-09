  .text
  .globl _wcsrtombs_r
  .type _wcsrtombs_r, @function

#! file-offset 0x77460
#! rip-offset  0x77460
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  
._wcsrtombs_r:            #        0x77460  0      
  movl %r8d, %r9d         #  1     0x77460  3      
  movl %edi, %edi         #  2     0x77463  2      
  movl %ecx, %r8d         #  3     0x77465  3      
  movl %esi, %esi         #  4     0x77468  2      
  movl %edx, %edx         #  5     0x7746a  2      
  movl $0xffffffff, %ecx  #  6     0x7746c  5      
  jmpq ._wcsnrtombs_r     #  7     0x77471  5      
  nop                     #  8     0x77476  1      
  nop                     #  9     0x77477  1      
  nop                     #  10    0x77478  1      
  nop                     #  11    0x77479  1      
  nop                     #  12    0x7747a  1      
  nop                     #  13    0x7747b  1      
  nop                     #  14    0x7747c  1      
  nop                     #  15    0x7747d  1      
  nop                     #  16    0x7747e  1      
  nop                     #  17    0x7747f  1      
                                                   
.size _wcsrtombs_r, .-_wcsrtombs_r

