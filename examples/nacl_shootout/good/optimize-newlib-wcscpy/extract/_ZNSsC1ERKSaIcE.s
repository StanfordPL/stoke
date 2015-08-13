  .text
  .globl _ZNSsC1ERKSaIcE
  .type _ZNSsC1ERKSaIcE, @function

#! file-offset 0xedc60
#! rip-offset  0xadc60
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSaIcE:                       #        0xadc60  0      OPC=<label>         
  pushq %rbx                            #  1     0xadc60  1      OPC=pushq_r64_1     
  movl %esi, %edx                       #  2     0xadc61  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadc63  2      OPC=movl_r32_r32    
  xorl %esi, %esi                       #  4     0xadc65  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                       #  5     0xadc67  2      OPC=xorl_r32_r32    
  nop                                   #  6     0xadc69  1      OPC=nop             
  nop                                   #  7     0xadc6a  1      OPC=nop             
  nop                                   #  8     0xadc6b  1      OPC=nop             
  nop                                   #  9     0xadc6c  1      OPC=nop             
  nop                                   #  10    0xadc6d  1      OPC=nop             
  nop                                   #  11    0xadc6e  1      OPC=nop             
  nop                                   #  12    0xadc6f  1      OPC=nop             
  nop                                   #  13    0xadc70  1      OPC=nop             
  nop                                   #  14    0xadc71  1      OPC=nop             
  nop                                   #  15    0xadc72  1      OPC=nop             
  nop                                   #  16    0xadc73  1      OPC=nop             
  nop                                   #  17    0xadc74  1      OPC=nop             
  nop                                   #  18    0xadc75  1      OPC=nop             
  nop                                   #  19    0xadc76  1      OPC=nop             
  nop                                   #  20    0xadc77  1      OPC=nop             
  nop                                   #  21    0xadc78  1      OPC=nop             
  nop                                   #  22    0xadc79  1      OPC=nop             
  nop                                   #  23    0xadc7a  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  24    0xadc7b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xadc80  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  26    0xadc82  4      OPC=movl_m32_r32    
  popq %rbx                             #  27    0xadc86  1      OPC=popq_r64_1      
  popq %r11                             #  28    0xadc87  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  29    0xadc89  7      OPC=andl_r32_imm32  
  nop                                   #  30    0xadc90  1      OPC=nop             
  nop                                   #  31    0xadc91  1      OPC=nop             
  nop                                   #  32    0xadc92  1      OPC=nop             
  nop                                   #  33    0xadc93  1      OPC=nop             
  addq %r15, %r11                       #  34    0xadc94  3      OPC=addq_r64_r64    
  jmpq %r11                             #  35    0xadc97  3      OPC=jmpq_r64        
  nop                                   #  36    0xadc9a  1      OPC=nop             
  nop                                   #  37    0xadc9b  1      OPC=nop             
  nop                                   #  38    0xadc9c  1      OPC=nop             
  nop                                   #  39    0xadc9d  1      OPC=nop             
  nop                                   #  40    0xadc9e  1      OPC=nop             
  nop                                   #  41    0xadc9f  1      OPC=nop             
  nop                                   #  42    0xadca0  1      OPC=nop             
  nop                                   #  43    0xadca1  1      OPC=nop             
  nop                                   #  44    0xadca2  1      OPC=nop             
  nop                                   #  45    0xadca3  1      OPC=nop             
  nop                                   #  46    0xadca4  1      OPC=nop             
  nop                                   #  47    0xadca5  1      OPC=nop             
  nop                                   #  48    0xadca6  1      OPC=nop             
                                                                                     
.size _ZNSsC1ERKSaIcE, .-_ZNSsC1ERKSaIcE

