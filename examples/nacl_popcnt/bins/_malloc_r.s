  .text
  .globl _malloc_r
  .type _malloc_r, @function

#! file-offset 0x65d80
#! rip-offset  0x65d80
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._malloc_r:        #        0x65d80  0      
  movl %esi, %edi  #  1     0x65d80  2      
  jmpq .malloc     #  2     0x65d82  5      
  nop              #  3     0x65d87  1      
  nop              #  4     0x65d88  1      
                                            
.size _malloc_r, .-_malloc_r

