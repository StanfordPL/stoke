  .text
  .globl _free_r
  .type _free_r, @function

#! file-offset 0x630e0
#! rip-offset  0x630e0
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._free_r:          #        0x630e0  0      
  movl %esi, %edi  #  1     0x630e0  2      
  jmpq .free       #  2     0x630e2  5      
  nop              #  3     0x630e7  1      
  nop              #  4     0x630e8  1      
                                            
.size _free_r, .-_free_r

