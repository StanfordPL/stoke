  .text
  .globl _ZNSt12out_of_rangeD0Ev
  .type _ZNSt12out_of_rangeD0Ev, @function

#! file-offset 0x4cd40
#! rip-offset  0x4cd40
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt12out_of_rangeD0Ev:          #        0x4cd40  0      
  pushq %rbx                       #  1     0x4cd40  2      
  movl %edi, %ebx                  #  2     0x4cd42  2      
  movl %ebx, %edi                  #  3     0x4cd44  2      
  movl %ebx, %ebx                  #  4     0x4cd46  2      
  movl $0x10021068, (%r15,%rbx,1)  #  5     0x4cd48  8      
  nop                              #  6     0x4cd50  1      
  callq ._ZNSt11logic_errorD2Ev    #  7     0x4cd51  5      
  movl %ebx, %edi                  #  8     0x4cd56  2      
  popq %rbx                        #  9     0x4cd58  2      
  jmpq ._ZdlPv                     #  10    0x4cd5a  5      
  nop                              #  11    0x4cd5f  1      
  nop                              #  12    0x4cd60  1      
  nop                              #  13    0x4cd61  1      
  nop                              #  14    0x4cd62  1      
  nop                              #  15    0x4cd63  1      
  nop                              #  16    0x4cd64  1      
  nop                              #  17    0x4cd65  1      
  nop                              #  18    0x4cd66  1      
  nop                              #  19    0x4cd67  1      
  nop                              #  20    0x4cd68  1      
  nop                              #  21    0x4cd69  1      
  nop                              #  22    0x4cd6a  1      
  nop                              #  23    0x4cd6b  1      
  nop                              #  24    0x4cd6c  1      
  nop                              #  25    0x4cd6d  1      
  nop                              #  26    0x4cd6e  1      
  nop                              #  27    0x4cd6f  1      
  nop                              #  28    0x4cd70  1      
  nop                              #  29    0x4cd71  1      
  nop                              #  30    0x4cd72  1      
  nop                              #  31    0x4cd73  1      
  nop                              #  32    0x4cd74  1      
  nop                              #  33    0x4cd75  1      
  nop                              #  34    0x4cd76  1      
                                                            
.size _ZNSt12out_of_rangeD0Ev, .-_ZNSt12out_of_rangeD0Ev

