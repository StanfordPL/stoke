  .text
  .globl _Z3foov
  .type _Z3foov, @function

#! file-offset 0x500
#! rip-offset  0x400500
#! capacity    16 bytes

# This file is identical to the one that stoke extract would
# produce. The only difference is that it contains an instruction
# that can be removed. This is to prevent stoke from complaining 
# that it wasn't able to find a satisfactory result when what it's 
# looking for is a one line program that it can't do better than.

._Z3foov:                  
  movsd 0x90(%rip), %xmm0  
  xorq %rax, %rax         # <- This instruction does nothing 
  retq                     
  nop                      
                                                     
.size _Z3foov, .-_Z3foov

