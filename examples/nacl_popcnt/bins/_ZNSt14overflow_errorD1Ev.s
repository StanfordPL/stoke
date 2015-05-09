  .text
  .globl _ZNSt14overflow_errorD1Ev
  .type _ZNSt14overflow_errorD1Ev, @function

#! file-offset 0x4cc20
#! rip-offset  0x4cc20
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt14overflow_errorD1Ev:        #        0x4cc20  0      
  movl %edi, %edi                  #  1     0x4cc20  2      
  movl %edi, %edi                  #  2     0x4cc22  2      
  movl $0x10020ff8, (%r15,%rdi,1)  #  3     0x4cc24  8      
  jmpq ._ZNSt13runtime_errorD2Ev   #  4     0x4cc2c  5      
  nop                              #  5     0x4cc31  1      
  nop                              #  6     0x4cc32  1      
  nop                              #  7     0x4cc33  1      
  nop                              #  8     0x4cc34  1      
  nop                              #  9     0x4cc35  1      
  nop                              #  10    0x4cc36  1      
  nop                              #  11    0x4cc37  1      
  nop                              #  12    0x4cc38  1      
  nop                              #  13    0x4cc39  1      
  nop                              #  14    0x4cc3a  1      
  nop                              #  15    0x4cc3b  1      
  nop                              #  16    0x4cc3c  1      
  nop                              #  17    0x4cc3d  1      
  nop                              #  18    0x4cc3e  1      
  nop                              #  19    0x4cc3f  1      
                                                            
.size _ZNSt14overflow_errorD1Ev, .-_ZNSt14overflow_errorD1Ev

