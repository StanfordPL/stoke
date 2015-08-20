  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, @function

#! file-offset 0xa4c80
#! rip-offset  0x64c80
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv:  #        0x64c80  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x64c80  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0x64c82  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  3     0x64c84  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0x64c89  2      OPC=popq_r64_1      
  shrl $0x1, %eax                              #  5     0x64c8b  2      OPC=shrl_r32_one    
  andl $0x1, %eax                              #  6     0x64c8d  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  7     0x64c90  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x64c97  1      OPC=nop             
  nop                                          #  9     0x64c98  1      OPC=nop             
  nop                                          #  10    0x64c99  1      OPC=nop             
  nop                                          #  11    0x64c9a  1      OPC=nop             
  addq %r15, %r11                              #  12    0x64c9b  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x64c9e  3      OPC=jmpq_r64        
  nop                                          #  14    0x64ca1  1      OPC=nop             
  nop                                          #  15    0x64ca2  1      OPC=nop             
  nop                                          #  16    0x64ca3  1      OPC=nop             
  nop                                          #  17    0x64ca4  1      OPC=nop             
  nop                                          #  18    0x64ca5  1      OPC=nop             
  nop                                          #  19    0x64ca6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv

