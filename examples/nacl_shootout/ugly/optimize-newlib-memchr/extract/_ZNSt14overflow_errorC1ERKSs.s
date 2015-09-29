  .text
  .globl _ZNSt14overflow_errorC1ERKSs
  .type _ZNSt14overflow_errorC1ERKSs, @function

#! file-offset 0x129aa0
#! rip-offset  0xe9aa0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorC1ERKSs:        #        0xe9aa0  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9aa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9aa1  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9aa3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9aa5  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9aa7  1      OPC=nop             
  nop                                 #  6     0xe9aa8  1      OPC=nop             
  nop                                 #  7     0xe9aa9  1      OPC=nop             
  nop                                 #  8     0xe9aaa  1      OPC=nop             
  nop                                 #  9     0xe9aab  1      OPC=nop             
  nop                                 #  10    0xe9aac  1      OPC=nop             
  nop                                 #  11    0xe9aad  1      OPC=nop             
  nop                                 #  12    0xe9aae  1      OPC=nop             
  nop                                 #  13    0xe9aaf  1      OPC=nop             
  nop                                 #  14    0xe9ab0  1      OPC=nop             
  nop                                 #  15    0xe9ab1  1      OPC=nop             
  nop                                 #  16    0xe9ab2  1      OPC=nop             
  nop                                 #  17    0xe9ab3  1      OPC=nop             
  nop                                 #  18    0xe9ab4  1      OPC=nop             
  nop                                 #  19    0xe9ab5  1      OPC=nop             
  nop                                 #  20    0xe9ab6  1      OPC=nop             
  nop                                 #  21    0xe9ab7  1      OPC=nop             
  nop                                 #  22    0xe9ab8  1      OPC=nop             
  nop                                 #  23    0xe9ab9  1      OPC=nop             
  nop                                 #  24    0xe9aba  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe9abb  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe9ac0  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)     #  27    0xe9ac2  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe9aca  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe9acb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe9acd  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe9ad4  1      OPC=nop             
  nop                                 #  32    0xe9ad5  1      OPC=nop             
  nop                                 #  33    0xe9ad6  1      OPC=nop             
  nop                                 #  34    0xe9ad7  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe9ad8  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe9adb  3      OPC=jmpq_r64        
  nop                                 #  37    0xe9ade  1      OPC=nop             
  nop                                 #  38    0xe9adf  1      OPC=nop             
  nop                                 #  39    0xe9ae0  1      OPC=nop             
  nop                                 #  40    0xe9ae1  1      OPC=nop             
  nop                                 #  41    0xe9ae2  1      OPC=nop             
  nop                                 #  42    0xe9ae3  1      OPC=nop             
  nop                                 #  43    0xe9ae4  1      OPC=nop             
  nop                                 #  44    0xe9ae5  1      OPC=nop             
  nop                                 #  45    0xe9ae6  1      OPC=nop             
                                                                                   
.size _ZNSt14overflow_errorC1ERKSs, .-_ZNSt14overflow_errorC1ERKSs

