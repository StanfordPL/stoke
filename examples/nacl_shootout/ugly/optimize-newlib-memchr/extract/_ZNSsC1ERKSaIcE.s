  .text
  .globl _ZNSsC1ERKSaIcE
  .type _ZNSsC1ERKSaIcE, @function

#! file-offset 0xee680
#! rip-offset  0xae680
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSaIcE:                       #        0xae680  0      OPC=<label>         
  pushq %rbx                            #  1     0xae680  1      OPC=pushq_r64_1     
  movl %esi, %edx                       #  2     0xae681  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xae683  2      OPC=movl_r32_r32    
  xorl %esi, %esi                       #  4     0xae685  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                       #  5     0xae687  2      OPC=xorl_r32_r32    
  nop                                   #  6     0xae689  1      OPC=nop             
  nop                                   #  7     0xae68a  1      OPC=nop             
  nop                                   #  8     0xae68b  1      OPC=nop             
  nop                                   #  9     0xae68c  1      OPC=nop             
  nop                                   #  10    0xae68d  1      OPC=nop             
  nop                                   #  11    0xae68e  1      OPC=nop             
  nop                                   #  12    0xae68f  1      OPC=nop             
  nop                                   #  13    0xae690  1      OPC=nop             
  nop                                   #  14    0xae691  1      OPC=nop             
  nop                                   #  15    0xae692  1      OPC=nop             
  nop                                   #  16    0xae693  1      OPC=nop             
  nop                                   #  17    0xae694  1      OPC=nop             
  nop                                   #  18    0xae695  1      OPC=nop             
  nop                                   #  19    0xae696  1      OPC=nop             
  nop                                   #  20    0xae697  1      OPC=nop             
  nop                                   #  21    0xae698  1      OPC=nop             
  nop                                   #  22    0xae699  1      OPC=nop             
  nop                                   #  23    0xae69a  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  24    0xae69b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xae6a0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  26    0xae6a2  4      OPC=movl_m32_r32    
  popq %rbx                             #  27    0xae6a6  1      OPC=popq_r64_1      
  popq %r11                             #  28    0xae6a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  29    0xae6a9  7      OPC=andl_r32_imm32  
  nop                                   #  30    0xae6b0  1      OPC=nop             
  nop                                   #  31    0xae6b1  1      OPC=nop             
  nop                                   #  32    0xae6b2  1      OPC=nop             
  nop                                   #  33    0xae6b3  1      OPC=nop             
  addq %r15, %r11                       #  34    0xae6b4  3      OPC=addq_r64_r64    
  jmpq %r11                             #  35    0xae6b7  3      OPC=jmpq_r64        
  nop                                   #  36    0xae6ba  1      OPC=nop             
  nop                                   #  37    0xae6bb  1      OPC=nop             
  nop                                   #  38    0xae6bc  1      OPC=nop             
  nop                                   #  39    0xae6bd  1      OPC=nop             
  nop                                   #  40    0xae6be  1      OPC=nop             
  nop                                   #  41    0xae6bf  1      OPC=nop             
  nop                                   #  42    0xae6c0  1      OPC=nop             
  nop                                   #  43    0xae6c1  1      OPC=nop             
  nop                                   #  44    0xae6c2  1      OPC=nop             
  nop                                   #  45    0xae6c3  1      OPC=nop             
  nop                                   #  46    0xae6c4  1      OPC=nop             
  nop                                   #  47    0xae6c5  1      OPC=nop             
  nop                                   #  48    0xae6c6  1      OPC=nop             
                                                                                     
.size _ZNSsC1ERKSaIcE, .-_ZNSsC1ERKSaIcE

