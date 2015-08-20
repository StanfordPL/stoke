  .text
  .globl _ZNSt14overflow_errorD0Ev
  .type _ZNSt14overflow_errorD0Ev, @function

#! file-offset 0x126be0
#! rip-offset  0xe6be0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorD0Ev:        #        0xe6be0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe6be0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe6be1  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe6be3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe6be5  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)  #  5     0xe6be7  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe6bef  1      OPC=nop             
  nop                              #  7     0xe6bf0  1      OPC=nop             
  nop                              #  8     0xe6bf1  1      OPC=nop             
  nop                              #  9     0xe6bf2  1      OPC=nop             
  nop                              #  10    0xe6bf3  1      OPC=nop             
  nop                              #  11    0xe6bf4  1      OPC=nop             
  nop                              #  12    0xe6bf5  1      OPC=nop             
  nop                              #  13    0xe6bf6  1      OPC=nop             
  nop                              #  14    0xe6bf7  1      OPC=nop             
  nop                              #  15    0xe6bf8  1      OPC=nop             
  nop                              #  16    0xe6bf9  1      OPC=nop             
  nop                              #  17    0xe6bfa  1      OPC=nop             
  callq ._ZNSt13runtime_errorD2Ev  #  18    0xe6bfb  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe6c00  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe6c02  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe6c03  5      OPC=jmpq_label_1    
  nop                              #  22    0xe6c08  1      OPC=nop             
  nop                              #  23    0xe6c09  1      OPC=nop             
  nop                              #  24    0xe6c0a  1      OPC=nop             
  nop                              #  25    0xe6c0b  1      OPC=nop             
  nop                              #  26    0xe6c0c  1      OPC=nop             
  nop                              #  27    0xe6c0d  1      OPC=nop             
  nop                              #  28    0xe6c0e  1      OPC=nop             
  nop                              #  29    0xe6c0f  1      OPC=nop             
  nop                              #  30    0xe6c10  1      OPC=nop             
  nop                              #  31    0xe6c11  1      OPC=nop             
  nop                              #  32    0xe6c12  1      OPC=nop             
  nop                              #  33    0xe6c13  1      OPC=nop             
  nop                              #  34    0xe6c14  1      OPC=nop             
  nop                              #  35    0xe6c15  1      OPC=nop             
  nop                              #  36    0xe6c16  1      OPC=nop             
  nop                              #  37    0xe6c17  1      OPC=nop             
  nop                              #  38    0xe6c18  1      OPC=nop             
  nop                              #  39    0xe6c19  1      OPC=nop             
  nop                              #  40    0xe6c1a  1      OPC=nop             
  nop                              #  41    0xe6c1b  1      OPC=nop             
  nop                              #  42    0xe6c1c  1      OPC=nop             
  nop                              #  43    0xe6c1d  1      OPC=nop             
  nop                              #  44    0xe6c1e  1      OPC=nop             
  nop                              #  45    0xe6c1f  1      OPC=nop             
                                                                                
.size _ZNSt14overflow_errorD0Ev, .-_ZNSt14overflow_errorD0Ev

