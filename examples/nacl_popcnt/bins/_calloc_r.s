  .text
  .globl _calloc_r
  .type _calloc_r, @function

#! file-offset 0x65e80
#! rip-offset  0x65e80
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  
._calloc_r:        #        0x65e80  0      
  movl %esi, %edi  #  1     0x65e80  2      
  movl %edx, %esi  #  2     0x65e82  2      
  jmpq .calloc     #  3     0x65e84  5      
  nop              #  4     0x65e89  1      
  nop              #  5     0x65e8a  1      
                                            
.size _calloc_r, .-_calloc_r

