  .text
  .globl _ZNSt16invalid_argumentC1ERKSs
  .type _ZNSt16invalid_argumentC1ERKSs, @function

#! file-offset 0x129680
#! rip-offset  0xe9680
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt16invalid_argumentC1ERKSs:    #        0xe9680  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9680  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9681  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9683  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9685  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9687  1      OPC=nop             
  nop                               #  6     0xe9688  1      OPC=nop             
  nop                               #  7     0xe9689  1      OPC=nop             
  nop                               #  8     0xe968a  1      OPC=nop             
  nop                               #  9     0xe968b  1      OPC=nop             
  nop                               #  10    0xe968c  1      OPC=nop             
  nop                               #  11    0xe968d  1      OPC=nop             
  nop                               #  12    0xe968e  1      OPC=nop             
  nop                               #  13    0xe968f  1      OPC=nop             
  nop                               #  14    0xe9690  1      OPC=nop             
  nop                               #  15    0xe9691  1      OPC=nop             
  nop                               #  16    0xe9692  1      OPC=nop             
  nop                               #  17    0xe9693  1      OPC=nop             
  nop                               #  18    0xe9694  1      OPC=nop             
  nop                               #  19    0xe9695  1      OPC=nop             
  nop                               #  20    0xe9696  1      OPC=nop             
  nop                               #  21    0xe9697  1      OPC=nop             
  nop                               #  22    0xe9698  1      OPC=nop             
  nop                               #  23    0xe9699  1      OPC=nop             
  nop                               #  24    0xe969a  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe969b  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe96a0  2      OPC=movl_r32_r32    
  movl $0x1003d808, (%r15,%rbx,1)   #  27    0xe96a2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe96aa  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe96ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe96ad  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe96b4  1      OPC=nop             
  nop                               #  32    0xe96b5  1      OPC=nop             
  nop                               #  33    0xe96b6  1      OPC=nop             
  nop                               #  34    0xe96b7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe96b8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe96bb  3      OPC=jmpq_r64        
  nop                               #  37    0xe96be  1      OPC=nop             
  nop                               #  38    0xe96bf  1      OPC=nop             
  nop                               #  39    0xe96c0  1      OPC=nop             
  nop                               #  40    0xe96c1  1      OPC=nop             
  nop                               #  41    0xe96c2  1      OPC=nop             
  nop                               #  42    0xe96c3  1      OPC=nop             
  nop                               #  43    0xe96c4  1      OPC=nop             
  nop                               #  44    0xe96c5  1      OPC=nop             
  nop                               #  45    0xe96c6  1      OPC=nop             
                                                                                 
.size _ZNSt16invalid_argumentC1ERKSs, .-_ZNSt16invalid_argumentC1ERKSs

