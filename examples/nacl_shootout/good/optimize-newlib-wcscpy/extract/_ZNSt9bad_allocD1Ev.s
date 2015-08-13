  .text
  .globl _ZNSt9bad_allocD1Ev
  .type _ZNSt9bad_allocD1Ev, @function

#! file-offset 0x120620
#! rip-offset  0xe0620
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD1Ev:              #        0xe0620  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe0620  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe0622  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  3     0xe0624  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt9exceptionD2Ev        #  4     0xe062c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe0631  1      OPC=nop             
  nop                              #  6     0xe0632  1      OPC=nop             
  nop                              #  7     0xe0633  1      OPC=nop             
  nop                              #  8     0xe0634  1      OPC=nop             
  nop                              #  9     0xe0635  1      OPC=nop             
  nop                              #  10    0xe0636  1      OPC=nop             
  nop                              #  11    0xe0637  1      OPC=nop             
  nop                              #  12    0xe0638  1      OPC=nop             
  nop                              #  13    0xe0639  1      OPC=nop             
  nop                              #  14    0xe063a  1      OPC=nop             
  nop                              #  15    0xe063b  1      OPC=nop             
  nop                              #  16    0xe063c  1      OPC=nop             
  nop                              #  17    0xe063d  1      OPC=nop             
  nop                              #  18    0xe063e  1      OPC=nop             
  nop                              #  19    0xe063f  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD1Ev, .-_ZNSt9bad_allocD1Ev

