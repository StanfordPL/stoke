  .text
  .globl _calloc_r
  .type _calloc_r, @function

#! file-offset 0x65e60
#! rip-offset  0x65e60
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._calloc_r:        #        0x65e60  0      
  movl %esi, %edi  #  1     0x65e60  2      
  movl %edx, %esi  #  2     0x65e62  2      
  jmpq .calloc     #  3     0x65e64  5      
  nop              #  4     0x65e69  1      
  nop              #  5     0x65e6a  1      
                                            
.size _calloc_r, .-_calloc_r

