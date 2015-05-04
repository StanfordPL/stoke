  .text
  .globl _ZNSt12out_of_rangeD0Ev
  .type _ZNSt12out_of_rangeD0Ev, @function

#! file-offset 0x4cde0
#! rip-offset  0x4cde0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt12out_of_rangeD0Ev:          #        0x4cde0  0      
  pushq %rbx                       #  1     0x4cde0  2      
  movl %edi, %ebx                  #  2     0x4cde2  2      
  movl %ebx, %edi                  #  3     0x4cde4  2      
  movl %ebx, %ebx                  #  4     0x4cde6  2      
  movl $0x10021068, (%r15,%rbx,1)  #  5     0x4cde8  8      
  nop                              #  6     0x4cdf0  1      
  callq ._ZNSt11logic_errorD2Ev    #  7     0x4cdf1  5      
  movl %ebx, %edi                  #  8     0x4cdf6  2      
  popq %rbx                        #  9     0x4cdf8  2      
  jmpq ._ZdlPv                     #  10    0x4cdfa  5      
  nop                              #  11    0x4cdff  1      
  nop                              #  12    0x4ce00  1      
  nop                              #  13    0x4ce01  1      
  nop                              #  14    0x4ce02  1      
  nop                              #  15    0x4ce03  1      
  nop                              #  16    0x4ce04  1      
  nop                              #  17    0x4ce05  1      
  nop                              #  18    0x4ce06  1      
  nop                              #  19    0x4ce07  1      
  nop                              #  20    0x4ce08  1      
  nop                              #  21    0x4ce09  1      
  nop                              #  22    0x4ce0a  1      
  nop                              #  23    0x4ce0b  1      
  nop                              #  24    0x4ce0c  1      
  nop                              #  25    0x4ce0d  1      
  nop                              #  26    0x4ce0e  1      
  nop                              #  27    0x4ce0f  1      
  nop                              #  28    0x4ce10  1      
  nop                              #  29    0x4ce11  1      
  nop                              #  30    0x4ce12  1      
  nop                              #  31    0x4ce13  1      
  nop                              #  32    0x4ce14  1      
  nop                              #  33    0x4ce15  1      
  nop                              #  34    0x4ce16  1      
                                                            
.size _ZNSt12out_of_rangeD0Ev, .-_ZNSt12out_of_rangeD0Ev

