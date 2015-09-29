  .text
  .globl _ZNSt12out_of_rangeC1ERKSs
  .type _ZNSt12out_of_rangeC1ERKSs, @function

#! file-offset 0x129ca0
#! rip-offset  0xe9ca0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeC1ERKSs:        #        0xe9ca0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9ca0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9ca1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9ca3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9ca5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9ca7  1      OPC=nop             
  nop                               #  6     0xe9ca8  1      OPC=nop             
  nop                               #  7     0xe9ca9  1      OPC=nop             
  nop                               #  8     0xe9caa  1      OPC=nop             
  nop                               #  9     0xe9cab  1      OPC=nop             
  nop                               #  10    0xe9cac  1      OPC=nop             
  nop                               #  11    0xe9cad  1      OPC=nop             
  nop                               #  12    0xe9cae  1      OPC=nop             
  nop                               #  13    0xe9caf  1      OPC=nop             
  nop                               #  14    0xe9cb0  1      OPC=nop             
  nop                               #  15    0xe9cb1  1      OPC=nop             
  nop                               #  16    0xe9cb2  1      OPC=nop             
  nop                               #  17    0xe9cb3  1      OPC=nop             
  nop                               #  18    0xe9cb4  1      OPC=nop             
  nop                               #  19    0xe9cb5  1      OPC=nop             
  nop                               #  20    0xe9cb6  1      OPC=nop             
  nop                               #  21    0xe9cb7  1      OPC=nop             
  nop                               #  22    0xe9cb8  1      OPC=nop             
  nop                               #  23    0xe9cb9  1      OPC=nop             
  nop                               #  24    0xe9cba  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe9cbb  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe9cc0  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)   #  27    0xe9cc2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe9cca  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe9ccb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe9ccd  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe9cd4  1      OPC=nop             
  nop                               #  32    0xe9cd5  1      OPC=nop             
  nop                               #  33    0xe9cd6  1      OPC=nop             
  nop                               #  34    0xe9cd7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe9cd8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe9cdb  3      OPC=jmpq_r64        
  nop                               #  37    0xe9cde  1      OPC=nop             
  nop                               #  38    0xe9cdf  1      OPC=nop             
  nop                               #  39    0xe9ce0  1      OPC=nop             
  nop                               #  40    0xe9ce1  1      OPC=nop             
  nop                               #  41    0xe9ce2  1      OPC=nop             
  nop                               #  42    0xe9ce3  1      OPC=nop             
  nop                               #  43    0xe9ce4  1      OPC=nop             
  nop                               #  44    0xe9ce5  1      OPC=nop             
  nop                               #  45    0xe9ce6  1      OPC=nop             
                                                                                 
.size _ZNSt12out_of_rangeC1ERKSs, .-_ZNSt12out_of_rangeC1ERKSs

