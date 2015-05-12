  .text
  .globl _free_r
  .type _free_r, @function

#! file-offset 0x63100
#! rip-offset  0x63100
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._free_r:          #        0x63100  0      
  movl %esi, %edi  #  1     0x63100  2      
  jmpq .free       #  2     0x63102  5      
  nop              #  3     0x63107  1      
  nop              #  4     0x63108  1      
                                            
.size _free_r, .-_free_r

