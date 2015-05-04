  .text
  .globl memalign
  .type memalign, @function

#! file-offset 0x66dc0
#! rip-offset  0x66dc0
#! capacity    64 bytes

# Text             #  Line  RIP      Bytes  
.memalign:         #        0x66dc0  0      
  cmpl $0x8, %edi  #  1     0x66dc0  3      
  jbe .L_66de0     #  2     0x66dc3  6      
  jmpq .T_277      #  3     0x66dc9  5      
  nop              #  4     0x66dce  1      
  nop              #  5     0x66dcf  1      
.L_66de0:          #        0x66dd0  0      
  movl %esi, %edi  #  6     0x66dd0  2      
  jmpq .malloc     #  7     0x66dd2  5      
  nop              #  8     0x66dd7  1      
  nop              #  9     0x66dd8  1      
                                            
.size memalign, .-memalign

