  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, @function

#! file-offset 0xa53a0
#! rip-offset  0x653a0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv:  #        0x653a0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x653a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0x653a2  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  3     0x653a4  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0x653a9  2      OPC=popq_r64_1      
  shrl $0x1, %eax                              #  5     0x653ab  2      OPC=shrl_r32_one    
  andl $0x1, %eax                              #  6     0x653ad  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  7     0x653b0  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x653b7  1      OPC=nop             
  nop                                          #  9     0x653b8  1      OPC=nop             
  nop                                          #  10    0x653b9  1      OPC=nop             
  nop                                          #  11    0x653ba  1      OPC=nop             
  addq %r15, %r11                              #  12    0x653bb  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x653be  3      OPC=jmpq_r64        
  nop                                          #  14    0x653c1  1      OPC=nop             
  nop                                          #  15    0x653c2  1      OPC=nop             
  nop                                          #  16    0x653c3  1      OPC=nop             
  nop                                          #  17    0x653c4  1      OPC=nop             
  nop                                          #  18    0x653c5  1      OPC=nop             
  nop                                          #  19    0x653c6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv

