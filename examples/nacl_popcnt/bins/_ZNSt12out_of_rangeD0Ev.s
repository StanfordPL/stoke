  .text
  .globl _ZNSt12out_of_rangeD0Ev
  .type _ZNSt12out_of_rangeD0Ev, @function

#! file-offset 0x4cd60
#! rip-offset  0x4cd60
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt12out_of_rangeD0Ev:          #        0x4cd60  0      
  pushq %rbx                       #  1     0x4cd60  2      
  movl %edi, %ebx                  #  2     0x4cd62  2      
  movl %ebx, %edi                  #  3     0x4cd64  2      
  movl %ebx, %ebx                  #  4     0x4cd66  2      
  movl $0x10021068, (%r15,%rbx,1)  #  5     0x4cd68  8      
  nop                              #  6     0x4cd70  1      
  callq ._ZNSt11logic_errorD2Ev    #  7     0x4cd71  5      
  movl %ebx, %edi                  #  8     0x4cd76  2      
  popq %rbx                        #  9     0x4cd78  2      
  jmpq ._ZdlPv                     #  10    0x4cd7a  5      
  nop                              #  11    0x4cd7f  1      
  nop                              #  12    0x4cd80  1      
  nop                              #  13    0x4cd81  1      
  nop                              #  14    0x4cd82  1      
  nop                              #  15    0x4cd83  1      
  nop                              #  16    0x4cd84  1      
  nop                              #  17    0x4cd85  1      
  nop                              #  18    0x4cd86  1      
  nop                              #  19    0x4cd87  1      
  nop                              #  20    0x4cd88  1      
  nop                              #  21    0x4cd89  1      
  nop                              #  22    0x4cd8a  1      
  nop                              #  23    0x4cd8b  1      
  nop                              #  24    0x4cd8c  1      
  nop                              #  25    0x4cd8d  1      
  nop                              #  26    0x4cd8e  1      
  nop                              #  27    0x4cd8f  1      
  nop                              #  28    0x4cd90  1      
  nop                              #  29    0x4cd91  1      
  nop                              #  30    0x4cd92  1      
  nop                              #  31    0x4cd93  1      
  nop                              #  32    0x4cd94  1      
  nop                              #  33    0x4cd95  1      
  nop                              #  34    0x4cd96  1      
                                                            
.size _ZNSt12out_of_rangeD0Ev, .-_ZNSt12out_of_rangeD0Ev

