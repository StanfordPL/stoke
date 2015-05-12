  .text
  .globl _ZNSt15underflow_errorD0Ev
  .type _ZNSt15underflow_errorD0Ev, @function

#! file-offset 0x4cc80
#! rip-offset  0x4cc80
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt15underflow_errorD0Ev:       #        0x4cc80  0      
  pushq %rbx                       #  1     0x4cc80  2      
  movl %edi, %ebx                  #  2     0x4cc82  2      
  movl %ebx, %edi                  #  3     0x4cc84  2      
  movl %ebx, %ebx                  #  4     0x4cc86  2      
  movl $0x10020fb8, (%r15,%rbx,1)  #  5     0x4cc88  8      
  nop                              #  6     0x4cc90  1      
  callq ._ZNSt13runtime_errorD2Ev  #  7     0x4cc91  5      
  movl %ebx, %edi                  #  8     0x4cc96  2      
  popq %rbx                        #  9     0x4cc98  2      
  jmpq ._ZdlPv                     #  10    0x4cc9a  5      
  nop                              #  11    0x4cc9f  1      
  nop                              #  12    0x4cca0  1      
  nop                              #  13    0x4cca1  1      
  nop                              #  14    0x4cca2  1      
  nop                              #  15    0x4cca3  1      
  nop                              #  16    0x4cca4  1      
  nop                              #  17    0x4cca5  1      
  nop                              #  18    0x4cca6  1      
  nop                              #  19    0x4cca7  1      
  nop                              #  20    0x4cca8  1      
  nop                              #  21    0x4cca9  1      
  nop                              #  22    0x4ccaa  1      
  nop                              #  23    0x4ccab  1      
  nop                              #  24    0x4ccac  1      
  nop                              #  25    0x4ccad  1      
  nop                              #  26    0x4ccae  1      
  nop                              #  27    0x4ccaf  1      
  nop                              #  28    0x4ccb0  1      
  nop                              #  29    0x4ccb1  1      
  nop                              #  30    0x4ccb2  1      
  nop                              #  31    0x4ccb3  1      
  nop                              #  32    0x4ccb4  1      
  nop                              #  33    0x4ccb5  1      
  nop                              #  34    0x4ccb6  1      
                                                            
.size _ZNSt15underflow_errorD0Ev, .-_ZNSt15underflow_errorD0Ev

