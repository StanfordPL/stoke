  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv, @function

#! file-offset 0xa4ca0
#! rip-offset  0x64ca0
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv:  #        0x64ca0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x64ca0  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x64ca2  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                 #  3     0x64ca4  6      OPC=testb_m8_imm8   
  popq %r11                                     #  4     0x64caa  2      OPC=popq_r64_1      
  setne %al                                     #  5     0x64cac  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                       #  6     0x64caf  7      OPC=andl_r32_imm32  
  nop                                           #  7     0x64cb6  1      OPC=nop             
  nop                                           #  8     0x64cb7  1      OPC=nop             
  nop                                           #  9     0x64cb8  1      OPC=nop             
  nop                                           #  10    0x64cb9  1      OPC=nop             
  addq %r15, %r11                               #  11    0x64cba  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  12    0x64cbd  3      OPC=jmpq_r64        
  nop                                           #  13    0x64cc0  1      OPC=nop             
  nop                                           #  14    0x64cc1  1      OPC=nop             
  nop                                           #  15    0x64cc2  1      OPC=nop             
  nop                                           #  16    0x64cc3  1      OPC=nop             
  nop                                           #  17    0x64cc4  1      OPC=nop             
  nop                                           #  18    0x64cc5  1      OPC=nop             
  nop                                           #  19    0x64cc6  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv

