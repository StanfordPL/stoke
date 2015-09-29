  .text
  .globl _ZNSsC2ERKSaIcE
  .type _ZNSsC2ERKSaIcE, @function

#! file-offset 0xee6c0
#! rip-offset  0xae6c0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSaIcE:                       #        0xae6c0  0      OPC=<label>         
  pushq %rbx                            #  1     0xae6c0  1      OPC=pushq_r64_1     
  movl %esi, %edx                       #  2     0xae6c1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xae6c3  2      OPC=movl_r32_r32    
  xorl %esi, %esi                       #  4     0xae6c5  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                       #  5     0xae6c7  2      OPC=xorl_r32_r32    
  nop                                   #  6     0xae6c9  1      OPC=nop             
  nop                                   #  7     0xae6ca  1      OPC=nop             
  nop                                   #  8     0xae6cb  1      OPC=nop             
  nop                                   #  9     0xae6cc  1      OPC=nop             
  nop                                   #  10    0xae6cd  1      OPC=nop             
  nop                                   #  11    0xae6ce  1      OPC=nop             
  nop                                   #  12    0xae6cf  1      OPC=nop             
  nop                                   #  13    0xae6d0  1      OPC=nop             
  nop                                   #  14    0xae6d1  1      OPC=nop             
  nop                                   #  15    0xae6d2  1      OPC=nop             
  nop                                   #  16    0xae6d3  1      OPC=nop             
  nop                                   #  17    0xae6d4  1      OPC=nop             
  nop                                   #  18    0xae6d5  1      OPC=nop             
  nop                                   #  19    0xae6d6  1      OPC=nop             
  nop                                   #  20    0xae6d7  1      OPC=nop             
  nop                                   #  21    0xae6d8  1      OPC=nop             
  nop                                   #  22    0xae6d9  1      OPC=nop             
  nop                                   #  23    0xae6da  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  24    0xae6db  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xae6e0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  26    0xae6e2  4      OPC=movl_m32_r32    
  popq %rbx                             #  27    0xae6e6  1      OPC=popq_r64_1      
  popq %r11                             #  28    0xae6e7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  29    0xae6e9  7      OPC=andl_r32_imm32  
  nop                                   #  30    0xae6f0  1      OPC=nop             
  nop                                   #  31    0xae6f1  1      OPC=nop             
  nop                                   #  32    0xae6f2  1      OPC=nop             
  nop                                   #  33    0xae6f3  1      OPC=nop             
  addq %r15, %r11                       #  34    0xae6f4  3      OPC=addq_r64_r64    
  jmpq %r11                             #  35    0xae6f7  3      OPC=jmpq_r64        
  nop                                   #  36    0xae6fa  1      OPC=nop             
  nop                                   #  37    0xae6fb  1      OPC=nop             
  nop                                   #  38    0xae6fc  1      OPC=nop             
  nop                                   #  39    0xae6fd  1      OPC=nop             
  nop                                   #  40    0xae6fe  1      OPC=nop             
  nop                                   #  41    0xae6ff  1      OPC=nop             
  nop                                   #  42    0xae700  1      OPC=nop             
  nop                                   #  43    0xae701  1      OPC=nop             
  nop                                   #  44    0xae702  1      OPC=nop             
  nop                                   #  45    0xae703  1      OPC=nop             
  nop                                   #  46    0xae704  1      OPC=nop             
  nop                                   #  47    0xae705  1      OPC=nop             
  nop                                   #  48    0xae706  1      OPC=nop             
                                                                                     
.size _ZNSsC2ERKSaIcE, .-_ZNSsC2ERKSaIcE

