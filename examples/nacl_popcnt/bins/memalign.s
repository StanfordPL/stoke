  .text
  .globl memalign
  .type memalign, @function

#! file-offset 0x66d40
#! rip-offset  0x66d40
#! capacity    64 bytes

# Text             #  Line  RIP      Bytes  
.memalign:         #        0x66d40  0      
  cmpl $0x8, %edi  #  1     0x66d40  3      
  jbe .L_66d60     #  2     0x66d43  6      
  jmpq .T_277      #  3     0x66d49  5      
  nop              #  4     0x66d4e  1      
  nop              #  5     0x66d4f  1      
.L_66d60:          #        0x66d50  0      
  movl %esi, %edi  #  6     0x66d50  2      
  jmpq .malloc     #  7     0x66d52  5      
  nop              #  8     0x66d57  1      
  nop              #  9     0x66d58  1      
                                            
.size memalign, .-memalign

