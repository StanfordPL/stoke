  .text
  .globl _ZNSsC2ERKSaIcE
  .type _ZNSsC2ERKSaIcE, @function

#! file-offset 0xedca0
#! rip-offset  0xadca0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSaIcE:                       #        0xadca0  0      OPC=<label>         
  pushq %rbx                            #  1     0xadca0  1      OPC=pushq_r64_1     
  movl %esi, %edx                       #  2     0xadca1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadca3  2      OPC=movl_r32_r32    
  xorl %esi, %esi                       #  4     0xadca5  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                       #  5     0xadca7  2      OPC=xorl_r32_r32    
  nop                                   #  6     0xadca9  1      OPC=nop             
  nop                                   #  7     0xadcaa  1      OPC=nop             
  nop                                   #  8     0xadcab  1      OPC=nop             
  nop                                   #  9     0xadcac  1      OPC=nop             
  nop                                   #  10    0xadcad  1      OPC=nop             
  nop                                   #  11    0xadcae  1      OPC=nop             
  nop                                   #  12    0xadcaf  1      OPC=nop             
  nop                                   #  13    0xadcb0  1      OPC=nop             
  nop                                   #  14    0xadcb1  1      OPC=nop             
  nop                                   #  15    0xadcb2  1      OPC=nop             
  nop                                   #  16    0xadcb3  1      OPC=nop             
  nop                                   #  17    0xadcb4  1      OPC=nop             
  nop                                   #  18    0xadcb5  1      OPC=nop             
  nop                                   #  19    0xadcb6  1      OPC=nop             
  nop                                   #  20    0xadcb7  1      OPC=nop             
  nop                                   #  21    0xadcb8  1      OPC=nop             
  nop                                   #  22    0xadcb9  1      OPC=nop             
  nop                                   #  23    0xadcba  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  24    0xadcbb  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xadcc0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  26    0xadcc2  4      OPC=movl_m32_r32    
  popq %rbx                             #  27    0xadcc6  1      OPC=popq_r64_1      
  popq %r11                             #  28    0xadcc7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  29    0xadcc9  7      OPC=andl_r32_imm32  
  nop                                   #  30    0xadcd0  1      OPC=nop             
  nop                                   #  31    0xadcd1  1      OPC=nop             
  nop                                   #  32    0xadcd2  1      OPC=nop             
  nop                                   #  33    0xadcd3  1      OPC=nop             
  addq %r15, %r11                       #  34    0xadcd4  3      OPC=addq_r64_r64    
  jmpq %r11                             #  35    0xadcd7  3      OPC=jmpq_r64        
  nop                                   #  36    0xadcda  1      OPC=nop             
  nop                                   #  37    0xadcdb  1      OPC=nop             
  nop                                   #  38    0xadcdc  1      OPC=nop             
  nop                                   #  39    0xadcdd  1      OPC=nop             
  nop                                   #  40    0xadcde  1      OPC=nop             
  nop                                   #  41    0xadcdf  1      OPC=nop             
  nop                                   #  42    0xadce0  1      OPC=nop             
  nop                                   #  43    0xadce1  1      OPC=nop             
  nop                                   #  44    0xadce2  1      OPC=nop             
  nop                                   #  45    0xadce3  1      OPC=nop             
  nop                                   #  46    0xadce4  1      OPC=nop             
  nop                                   #  47    0xadce5  1      OPC=nop             
  nop                                   #  48    0xadce6  1      OPC=nop             
                                                                                     
.size _ZNSsC2ERKSaIcE, .-_ZNSsC2ERKSaIcE

