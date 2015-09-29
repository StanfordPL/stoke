  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv, @function

#! file-offset 0xa53c0
#! rip-offset  0x653c0
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv:  #        0x653c0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x653c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x653c2  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                 #  3     0x653c4  6      OPC=testb_m8_imm8   
  popq %r11                                     #  4     0x653ca  2      OPC=popq_r64_1      
  setne %al                                     #  5     0x653cc  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                       #  6     0x653cf  7      OPC=andl_r32_imm32  
  nop                                           #  7     0x653d6  1      OPC=nop             
  nop                                           #  8     0x653d7  1      OPC=nop             
  nop                                           #  9     0x653d8  1      OPC=nop             
  nop                                           #  10    0x653d9  1      OPC=nop             
  addq %r15, %r11                               #  11    0x653da  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  12    0x653dd  3      OPC=jmpq_r64        
  nop                                           #  13    0x653e0  1      OPC=nop             
  nop                                           #  14    0x653e1  1      OPC=nop             
  nop                                           #  15    0x653e2  1      OPC=nop             
  nop                                           #  16    0x653e3  1      OPC=nop             
  nop                                           #  17    0x653e4  1      OPC=nop             
  nop                                           #  18    0x653e5  1      OPC=nop             
  nop                                           #  19    0x653e6  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv

