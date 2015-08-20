  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv, @function

#! file-offset 0xa4c60
#! rip-offset  0x64c60
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv:  #        0x64c60  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x64c60  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x64c62  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %edx                  #  3     0x64c64  5      OPC=movl_r32_m32    
  popq %r11                                     #  4     0x64c69  2      OPC=popq_r64_1      
  testl %edx, %edx                              #  5     0x64c6b  2      OPC=testl_r32_r32   
  sete %al                                      #  6     0x64c6d  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d                       #  7     0x64c70  7      OPC=andl_r32_imm32  
  nop                                           #  8     0x64c77  1      OPC=nop             
  nop                                           #  9     0x64c78  1      OPC=nop             
  nop                                           #  10    0x64c79  1      OPC=nop             
  nop                                           #  11    0x64c7a  1      OPC=nop             
  addq %r15, %r11                               #  12    0x64c7b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  13    0x64c7e  3      OPC=jmpq_r64        
  nop                                           #  14    0x64c81  1      OPC=nop             
  nop                                           #  15    0x64c82  1      OPC=nop             
  nop                                           #  16    0x64c83  1      OPC=nop             
  nop                                           #  17    0x64c84  1      OPC=nop             
  nop                                           #  18    0x64c85  1      OPC=nop             
  nop                                           #  19    0x64c86  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv

