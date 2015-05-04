  .text
  .globl _ZNSt15underflow_errorD0Ev
  .type _ZNSt15underflow_errorD0Ev, @function

#! file-offset 0x4cd00
#! rip-offset  0x4cd00
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSt15underflow_errorD0Ev:       #        0x4cd00  0      
  pushq %rbx                       #  1     0x4cd00  2      
  movl %edi, %ebx                  #  2     0x4cd02  2      
  movl %ebx, %edi                  #  3     0x4cd04  2      
  movl %ebx, %ebx                  #  4     0x4cd06  2      
  movl $0x10020fb8, (%r15,%rbx,1)  #  5     0x4cd08  8      
  nop                              #  6     0x4cd10  1      
  callq ._ZNSt13runtime_errorD2Ev  #  7     0x4cd11  5      
  movl %ebx, %edi                  #  8     0x4cd16  2      
  popq %rbx                        #  9     0x4cd18  2      
  jmpq ._ZdlPv                     #  10    0x4cd1a  5      
  nop                              #  11    0x4cd1f  1      
  nop                              #  12    0x4cd20  1      
  nop                              #  13    0x4cd21  1      
  nop                              #  14    0x4cd22  1      
  nop                              #  15    0x4cd23  1      
  nop                              #  16    0x4cd24  1      
  nop                              #  17    0x4cd25  1      
  nop                              #  18    0x4cd26  1      
  nop                              #  19    0x4cd27  1      
  nop                              #  20    0x4cd28  1      
  nop                              #  21    0x4cd29  1      
  nop                              #  22    0x4cd2a  1      
  nop                              #  23    0x4cd2b  1      
  nop                              #  24    0x4cd2c  1      
  nop                              #  25    0x4cd2d  1      
  nop                              #  26    0x4cd2e  1      
  nop                              #  27    0x4cd2f  1      
  nop                              #  28    0x4cd30  1      
  nop                              #  29    0x4cd31  1      
  nop                              #  30    0x4cd32  1      
  nop                              #  31    0x4cd33  1      
  nop                              #  32    0x4cd34  1      
  nop                              #  33    0x4cd35  1      
  nop                              #  34    0x4cd36  1      
                                                            
.size _ZNSt15underflow_errorD0Ev, .-_ZNSt15underflow_errorD0Ev

