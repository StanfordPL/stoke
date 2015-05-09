  .text
  .globl memalign
  .type memalign, @function

#! file-offset 0x66d20
#! rip-offset  0x66d20
#! capacity    64 bytes

# Text             #  Line  RIP      Bytes  
.memalign:         #        0x66d20  0      
  cmpl $0x8, %edi  #  1     0x66d20  3      
  jbe .L_66d40     #  2     0x66d23  6      
  jmpq .T_277      #  3     0x66d29  5      
  nop              #  4     0x66d2e  1      
  nop              #  5     0x66d2f  1      
.L_66d40:          #        0x66d30  0      
  movl %esi, %edi  #  6     0x66d30  2      
  jmpq .malloc     #  7     0x66d32  5      
  nop              #  8     0x66d37  1      
  nop              #  9     0x66d38  1      
                                            
.size memalign, .-memalign

