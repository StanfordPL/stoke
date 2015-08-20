  .text
  .globl _ZNSsC1ERKSaIcE
  .type _ZNSsC1ERKSaIcE, @function

#! file-offset 0xedf60
#! rip-offset  0xadf60
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSaIcE:                       #        0xadf60  0      OPC=<label>         
  pushq %rbx                            #  1     0xadf60  1      OPC=pushq_r64_1     
  movl %esi, %edx                       #  2     0xadf61  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadf63  2      OPC=movl_r32_r32    
  xorl %esi, %esi                       #  4     0xadf65  2      OPC=xorl_r32_r32    
  xorl %edi, %edi                       #  5     0xadf67  2      OPC=xorl_r32_r32    
  nop                                   #  6     0xadf69  1      OPC=nop             
  nop                                   #  7     0xadf6a  1      OPC=nop             
  nop                                   #  8     0xadf6b  1      OPC=nop             
  nop                                   #  9     0xadf6c  1      OPC=nop             
  nop                                   #  10    0xadf6d  1      OPC=nop             
  nop                                   #  11    0xadf6e  1      OPC=nop             
  nop                                   #  12    0xadf6f  1      OPC=nop             
  nop                                   #  13    0xadf70  1      OPC=nop             
  nop                                   #  14    0xadf71  1      OPC=nop             
  nop                                   #  15    0xadf72  1      OPC=nop             
  nop                                   #  16    0xadf73  1      OPC=nop             
  nop                                   #  17    0xadf74  1      OPC=nop             
  nop                                   #  18    0xadf75  1      OPC=nop             
  nop                                   #  19    0xadf76  1      OPC=nop             
  nop                                   #  20    0xadf77  1      OPC=nop             
  nop                                   #  21    0xadf78  1      OPC=nop             
  nop                                   #  22    0xadf79  1      OPC=nop             
  nop                                   #  23    0xadf7a  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  24    0xadf7b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xadf80  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  26    0xadf82  4      OPC=movl_m32_r32    
  popq %rbx                             #  27    0xadf86  1      OPC=popq_r64_1      
  popq %r11                             #  28    0xadf87  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  29    0xadf89  7      OPC=andl_r32_imm32  
  nop                                   #  30    0xadf90  1      OPC=nop             
  nop                                   #  31    0xadf91  1      OPC=nop             
  nop                                   #  32    0xadf92  1      OPC=nop             
  nop                                   #  33    0xadf93  1      OPC=nop             
  addq %r15, %r11                       #  34    0xadf94  3      OPC=addq_r64_r64    
  jmpq %r11                             #  35    0xadf97  3      OPC=jmpq_r64        
  nop                                   #  36    0xadf9a  1      OPC=nop             
  nop                                   #  37    0xadf9b  1      OPC=nop             
  nop                                   #  38    0xadf9c  1      OPC=nop             
  nop                                   #  39    0xadf9d  1      OPC=nop             
  nop                                   #  40    0xadf9e  1      OPC=nop             
  nop                                   #  41    0xadf9f  1      OPC=nop             
  nop                                   #  42    0xadfa0  1      OPC=nop             
  nop                                   #  43    0xadfa1  1      OPC=nop             
  nop                                   #  44    0xadfa2  1      OPC=nop             
  nop                                   #  45    0xadfa3  1      OPC=nop             
  nop                                   #  46    0xadfa4  1      OPC=nop             
  nop                                   #  47    0xadfa5  1      OPC=nop             
  nop                                   #  48    0xadfa6  1      OPC=nop             
                                                                                     
.size _ZNSsC1ERKSaIcE, .-_ZNSsC1ERKSaIcE

