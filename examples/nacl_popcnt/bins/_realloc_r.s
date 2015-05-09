  .text
  .globl _realloc_r
  .type _realloc_r, @function

#! file-offset 0x667e0
#! rip-offset  0x667e0
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._realloc_r:       #        0x667e0  0      
  movl %esi, %edi  #  1     0x667e0  2      
  movl %edx, %esi  #  2     0x667e2  2      
  jmpq .realloc    #  3     0x667e4  5      
  nop              #  4     0x667e9  1      
  nop              #  5     0x667ea  1      
                                            
.size _realloc_r, .-_realloc_r

