  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv, @function

#! file-offset 0xa4b00
#! rip-offset  0x64b00
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv:  #        0x64b00  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x64b00  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x64b02  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                  #  3     0x64b04  5      OPC=movl_r32_m32    
  popq %r11                                     #  4     0x64b09  2      OPC=popq_r64_1      
  testl %eax, %eax                              #  5     0x64b0b  2      OPC=testl_r32_r32   
  sete %al                                      #  6     0x64b0d  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d                       #  7     0x64b10  7      OPC=andl_r32_imm32  
  nop                                           #  8     0x64b17  1      OPC=nop             
  nop                                           #  9     0x64b18  1      OPC=nop             
  nop                                           #  10    0x64b19  1      OPC=nop             
  nop                                           #  11    0x64b1a  1      OPC=nop             
  addq %r15, %r11                               #  12    0x64b1b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  13    0x64b1e  3      OPC=jmpq_r64        
  nop                                           #  14    0x64b21  1      OPC=nop             
  nop                                           #  15    0x64b22  1      OPC=nop             
  nop                                           #  16    0x64b23  1      OPC=nop             
  nop                                           #  17    0x64b24  1      OPC=nop             
  nop                                           #  18    0x64b25  1      OPC=nop             
  nop                                           #  19    0x64b26  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv

