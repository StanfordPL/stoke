  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv, @function

#! file-offset 0xa4b60
#! rip-offset  0x64b60
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv:  #        0x64b60  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x64b60  2      OPC=movl_r32_r32    
  popq %r11                                    #  2     0x64b62  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  3     0x64b64  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  4     0x64b66  5      OPC=movl_r32_m32    
  andl $0x1, %eax                              #  5     0x64b6b  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  6     0x64b6e  7      OPC=andl_r32_imm32  
  nop                                          #  7     0x64b75  1      OPC=nop             
  nop                                          #  8     0x64b76  1      OPC=nop             
  nop                                          #  9     0x64b77  1      OPC=nop             
  nop                                          #  10    0x64b78  1      OPC=nop             
  addq %r15, %r11                              #  11    0x64b79  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  12    0x64b7c  3      OPC=jmpq_r64        
  nop                                          #  13    0x64b7f  1      OPC=nop             
  nop                                          #  14    0x64b80  1      OPC=nop             
  nop                                          #  15    0x64b81  1      OPC=nop             
  nop                                          #  16    0x64b82  1      OPC=nop             
  nop                                          #  17    0x64b83  1      OPC=nop             
  nop                                          #  18    0x64b84  1      OPC=nop             
  nop                                          #  19    0x64b85  1      OPC=nop             
  nop                                          #  20    0x64b86  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv

