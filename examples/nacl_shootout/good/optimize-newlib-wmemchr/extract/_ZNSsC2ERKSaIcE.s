  .text
  .globl _ZNSsC2ERKSaIcE
  .type _ZNSsC2ERKSaIcE, @function

#! file-offset 0xedfa0
#! rip-offset  0xadfa0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSaIcE:                       #        0xadfa0  0      OPC=<label>         
  pushq %rbx                            #  1     0xadfa0  1      OPC=pushq_r64_1     
  movl %esi, %edx                       #  2     0xadfa1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadfa3  2      OPC=movl_r32_r32    
  xorl %esi, %esi                       #  4     0xadfa5  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                       #  5     0xadfa7  2      OPC=xorl_r32_r32    
  nop                                   #  6     0xadfa9  1      OPC=nop             
  nop                                   #  7     0xadfaa  1      OPC=nop             
  nop                                   #  8     0xadfab  1      OPC=nop             
  nop                                   #  9     0xadfac  1      OPC=nop             
  nop                                   #  10    0xadfad  1      OPC=nop             
  nop                                   #  11    0xadfae  1      OPC=nop             
  nop                                   #  12    0xadfaf  1      OPC=nop             
  nop                                   #  13    0xadfb0  1      OPC=nop             
  nop                                   #  14    0xadfb1  1      OPC=nop             
  nop                                   #  15    0xadfb2  1      OPC=nop             
  nop                                   #  16    0xadfb3  1      OPC=nop             
  nop                                   #  17    0xadfb4  1      OPC=nop             
  nop                                   #  18    0xadfb5  1      OPC=nop             
  nop                                   #  19    0xadfb6  1      OPC=nop             
  nop                                   #  20    0xadfb7  1      OPC=nop             
  nop                                   #  21    0xadfb8  1      OPC=nop             
  nop                                   #  22    0xadfb9  1      OPC=nop             
  nop                                   #  23    0xadfba  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  24    0xadfbb  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xadfc0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  26    0xadfc2  4      OPC=movl_m32_r32    
  popq %rbx                             #  27    0xadfc6  1      OPC=popq_r64_1      
  popq %r11                             #  28    0xadfc7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  29    0xadfc9  7      OPC=andl_r32_imm32  
  nop                                   #  30    0xadfd0  1      OPC=nop             
  nop                                   #  31    0xadfd1  1      OPC=nop             
  nop                                   #  32    0xadfd2  1      OPC=nop             
  nop                                   #  33    0xadfd3  1      OPC=nop             
  addq %r15, %r11                       #  34    0xadfd4  3      OPC=addq_r64_r64    
  jmpq %r11                             #  35    0xadfd7  3      OPC=jmpq_r64        
  nop                                   #  36    0xadfda  1      OPC=nop             
  nop                                   #  37    0xadfdb  1      OPC=nop             
  nop                                   #  38    0xadfdc  1      OPC=nop             
  nop                                   #  39    0xadfdd  1      OPC=nop             
  nop                                   #  40    0xadfde  1      OPC=nop             
  nop                                   #  41    0xadfdf  1      OPC=nop             
  nop                                   #  42    0xadfe0  1      OPC=nop             
  nop                                   #  43    0xadfe1  1      OPC=nop             
  nop                                   #  44    0xadfe2  1      OPC=nop             
  nop                                   #  45    0xadfe3  1      OPC=nop             
  nop                                   #  46    0xadfe4  1      OPC=nop             
  nop                                   #  47    0xadfe5  1      OPC=nop             
  nop                                   #  48    0xadfe6  1      OPC=nop             
                                                                                     
.size _ZNSsC2ERKSaIcE, .-_ZNSsC2ERKSaIcE

