  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv, @function

#! file-offset 0xa4840
#! rip-offset  0x64840
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv:  #        0x64840  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x64840  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x64842  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                 #  3     0x64844  6      OPC=testb_m8_imm8   
  popq %r11                                     #  4     0x6484a  2      OPC=popq_r64_1      
  setne %al                                     #  5     0x6484c  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                       #  6     0x6484f  7      OPC=andl_r32_imm32  
  nop                                           #  7     0x64856  1      OPC=nop             
  nop                                           #  8     0x64857  1      OPC=nop             
  nop                                           #  9     0x64858  1      OPC=nop             
  nop                                           #  10    0x64859  1      OPC=nop             
  addq %r15, %r11                               #  11    0x6485a  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  12    0x6485d  3      OPC=jmpq_r64        
  nop                                           #  13    0x64860  1      OPC=nop             
  nop                                           #  14    0x64861  1      OPC=nop             
  nop                                           #  15    0x64862  1      OPC=nop             
  nop                                           #  16    0x64863  1      OPC=nop             
  nop                                           #  17    0x64864  1      OPC=nop             
  nop                                           #  18    0x64865  1      OPC=nop             
  nop                                           #  19    0x64866  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv

