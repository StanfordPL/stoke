  .text
  .globl _ZNSt15underflow_errorD0Ev
  .type _ZNSt15underflow_errorD0Ev, @function

#! file-offset 0x4cc60
#! rip-offset  0x4cc60
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt15underflow_errorD0Ev:       #        0x4cc60  0      
  pushq %rbx                       #  1     0x4cc60  2      
  movl %edi, %ebx                  #  2     0x4cc62  2      
  movl %ebx, %edi                  #  3     0x4cc64  2      
  movl %ebx, %ebx                  #  4     0x4cc66  2      
  movl $0x10020fb8, (%r15,%rbx,1)  #  5     0x4cc68  8      
  nop                              #  6     0x4cc70  1      
  callq ._ZNSt13runtime_errorD2Ev  #  7     0x4cc71  5      
  movl %ebx, %edi                  #  8     0x4cc76  2      
  popq %rbx                        #  9     0x4cc78  2      
  jmpq ._ZdlPv                     #  10    0x4cc7a  5      
  nop                              #  11    0x4cc7f  1      
  nop                              #  12    0x4cc80  1      
  nop                              #  13    0x4cc81  1      
  nop                              #  14    0x4cc82  1      
  nop                              #  15    0x4cc83  1      
  nop                              #  16    0x4cc84  1      
  nop                              #  17    0x4cc85  1      
  nop                              #  18    0x4cc86  1      
  nop                              #  19    0x4cc87  1      
  nop                              #  20    0x4cc88  1      
  nop                              #  21    0x4cc89  1      
  nop                              #  22    0x4cc8a  1      
  nop                              #  23    0x4cc8b  1      
  nop                              #  24    0x4cc8c  1      
  nop                              #  25    0x4cc8d  1      
  nop                              #  26    0x4cc8e  1      
  nop                              #  27    0x4cc8f  1      
  nop                              #  28    0x4cc90  1      
  nop                              #  29    0x4cc91  1      
  nop                              #  30    0x4cc92  1      
  nop                              #  31    0x4cc93  1      
  nop                              #  32    0x4cc94  1      
  nop                              #  33    0x4cc95  1      
  nop                              #  34    0x4cc96  1      
                                                            
.size _ZNSt15underflow_errorD0Ev, .-_ZNSt15underflow_errorD0Ev

