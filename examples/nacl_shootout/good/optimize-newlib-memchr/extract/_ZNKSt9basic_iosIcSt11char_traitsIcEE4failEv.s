  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv, @function

#! file-offset 0xa5260
#! rip-offset  0x65260
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv:  #        0x65260  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x65260  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x65262  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                 #  3     0x65264  6      OPC=testb_m8_imm8   
  popq %r11                                     #  4     0x6526a  2      OPC=popq_r64_1      
  setne %al                                     #  5     0x6526c  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                       #  6     0x6526f  7      OPC=andl_r32_imm32  
  nop                                           #  7     0x65276  1      OPC=nop             
  nop                                           #  8     0x65277  1      OPC=nop             
  nop                                           #  9     0x65278  1      OPC=nop             
  nop                                           #  10    0x65279  1      OPC=nop             
  addq %r15, %r11                               #  11    0x6527a  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  12    0x6527d  3      OPC=jmpq_r64        
  nop                                           #  13    0x65280  1      OPC=nop             
  nop                                           #  14    0x65281  1      OPC=nop             
  nop                                           #  15    0x65282  1      OPC=nop             
  nop                                           #  16    0x65283  1      OPC=nop             
  nop                                           #  17    0x65284  1      OPC=nop             
  nop                                           #  18    0x65285  1      OPC=nop             
  nop                                           #  19    0x65286  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv

