  .text
  .globl _realloc_r
  .type _realloc_r, @function

#! file-offset 0x66880
#! rip-offset  0x66880
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._realloc_r:       #        0x66880  0      
  movl %esi, %edi  #  1     0x66880  2      
  movl %edx, %esi  #  2     0x66882  2      
  jmpq .realloc    #  3     0x66884  5      
  nop              #  4     0x66889  1      
  nop              #  5     0x6688a  1      
                                            
.size _realloc_r, .-_realloc_r

