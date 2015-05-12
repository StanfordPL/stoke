  .text
  .globl _realloc_r
  .type _realloc_r, @function

#! file-offset 0x66800
#! rip-offset  0x66800
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._realloc_r:       #        0x66800  0      
  movl %esi, %edi  #  1     0x66800  2      
  movl %edx, %esi  #  2     0x66802  2      
  jmpq .realloc    #  3     0x66804  5      
  nop              #  4     0x66809  1      
  nop              #  5     0x6680a  1      
                                            
.size _realloc_r, .-_realloc_r

