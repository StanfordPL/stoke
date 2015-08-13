  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, @function

#! file-offset 0xa4980
#! rip-offset  0x64980
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv:  #        0x64980  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x64980  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0x64982  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  3     0x64984  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0x64989  2      OPC=popq_r64_1      
  shrl $0x1, %eax                              #  5     0x6498b  2      OPC=shrl_r32_one    
  andl $0x1, %eax                              #  6     0x6498d  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  7     0x64990  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x64997  1      OPC=nop             
  nop                                          #  9     0x64998  1      OPC=nop             
  nop                                          #  10    0x64999  1      OPC=nop             
  nop                                          #  11    0x6499a  1      OPC=nop             
  addq %r15, %r11                              #  12    0x6499b  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x6499e  3      OPC=jmpq_r64        
  nop                                          #  14    0x649a1  1      OPC=nop             
  nop                                          #  15    0x649a2  1      OPC=nop             
  nop                                          #  16    0x649a3  1      OPC=nop             
  nop                                          #  17    0x649a4  1      OPC=nop             
  nop                                          #  18    0x649a5  1      OPC=nop             
  nop                                          #  19    0x649a6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv

