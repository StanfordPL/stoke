  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv, @function

#! file-offset 0xa53e0
#! rip-offset  0x653e0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv:  #        0x653e0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x653e0  2      OPC=movl_r32_r32    
  popq %r11                                    #  2     0x653e2  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  3     0x653e4  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  4     0x653e6  5      OPC=movl_r32_m32    
  andl $0x1, %eax                              #  5     0x653eb  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  6     0x653ee  7      OPC=andl_r32_imm32  
  nop                                          #  7     0x653f5  1      OPC=nop             
  nop                                          #  8     0x653f6  1      OPC=nop             
  nop                                          #  9     0x653f7  1      OPC=nop             
  nop                                          #  10    0x653f8  1      OPC=nop             
  addq %r15, %r11                              #  11    0x653f9  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  12    0x653fc  3      OPC=jmpq_r64        
  nop                                          #  13    0x653ff  1      OPC=nop             
  nop                                          #  14    0x65400  1      OPC=nop             
  nop                                          #  15    0x65401  1      OPC=nop             
  nop                                          #  16    0x65402  1      OPC=nop             
  nop                                          #  17    0x65403  1      OPC=nop             
  nop                                          #  18    0x65404  1      OPC=nop             
  nop                                          #  19    0x65405  1      OPC=nop             
  nop                                          #  20    0x65406  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv

