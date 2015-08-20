  .text
  .globl _ZNSt12out_of_rangeD0Ev
  .type _ZNSt12out_of_rangeD0Ev, @function

#! file-offset 0x126c80
#! rip-offset  0xe6c80
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeD0Ev:          #        0xe6c80  0      OPC=<label>         
  pushq %rbx                       #  1     0xe6c80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe6c81  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe6c83  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe6c85  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)  #  5     0xe6c87  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe6c8f  1      OPC=nop             
  nop                              #  7     0xe6c90  1      OPC=nop             
  nop                              #  8     0xe6c91  1      OPC=nop             
  nop                              #  9     0xe6c92  1      OPC=nop             
  nop                              #  10    0xe6c93  1      OPC=nop             
  nop                              #  11    0xe6c94  1      OPC=nop             
  nop                              #  12    0xe6c95  1      OPC=nop             
  nop                              #  13    0xe6c96  1      OPC=nop             
  nop                              #  14    0xe6c97  1      OPC=nop             
  nop                              #  15    0xe6c98  1      OPC=nop             
  nop                              #  16    0xe6c99  1      OPC=nop             
  nop                              #  17    0xe6c9a  1      OPC=nop             
  callq ._ZNSt11logic_errorD2Ev    #  18    0xe6c9b  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe6ca0  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe6ca2  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe6ca3  5      OPC=jmpq_label_1    
  nop                              #  22    0xe6ca8  1      OPC=nop             
  nop                              #  23    0xe6ca9  1      OPC=nop             
  nop                              #  24    0xe6caa  1      OPC=nop             
  nop                              #  25    0xe6cab  1      OPC=nop             
  nop                              #  26    0xe6cac  1      OPC=nop             
  nop                              #  27    0xe6cad  1      OPC=nop             
  nop                              #  28    0xe6cae  1      OPC=nop             
  nop                              #  29    0xe6caf  1      OPC=nop             
  nop                              #  30    0xe6cb0  1      OPC=nop             
  nop                              #  31    0xe6cb1  1      OPC=nop             
  nop                              #  32    0xe6cb2  1      OPC=nop             
  nop                              #  33    0xe6cb3  1      OPC=nop             
  nop                              #  34    0xe6cb4  1      OPC=nop             
  nop                              #  35    0xe6cb5  1      OPC=nop             
  nop                              #  36    0xe6cb6  1      OPC=nop             
  nop                              #  37    0xe6cb7  1      OPC=nop             
  nop                              #  38    0xe6cb8  1      OPC=nop             
  nop                              #  39    0xe6cb9  1      OPC=nop             
  nop                              #  40    0xe6cba  1      OPC=nop             
  nop                              #  41    0xe6cbb  1      OPC=nop             
  nop                              #  42    0xe6cbc  1      OPC=nop             
  nop                              #  43    0xe6cbd  1      OPC=nop             
  nop                              #  44    0xe6cbe  1      OPC=nop             
  nop                              #  45    0xe6cbf  1      OPC=nop             
                                                                                
.size _ZNSt12out_of_rangeD0Ev, .-_ZNSt12out_of_rangeD0Ev

