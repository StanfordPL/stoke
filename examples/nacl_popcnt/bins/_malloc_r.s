  .text
  .globl _malloc_r
  .type _malloc_r, @function

#! file-offset 0x65da0
#! rip-offset  0x65da0
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._malloc_r:        #        0x65da0  0      
  movl %esi, %edi  #  1     0x65da0  2      
  jmpq .malloc     #  2     0x65da2  5      
  nop              #  3     0x65da7  1      
  nop              #  4     0x65da8  1      
                                            
.size _malloc_r, .-_malloc_r

