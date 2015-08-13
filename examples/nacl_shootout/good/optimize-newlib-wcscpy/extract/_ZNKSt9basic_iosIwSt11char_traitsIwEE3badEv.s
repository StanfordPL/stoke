  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv, @function

#! file-offset 0xa49c0
#! rip-offset  0x649c0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv:  #        0x649c0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x649c0  2      OPC=movl_r32_r32    
  popq %r11                                    #  2     0x649c2  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  3     0x649c4  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  4     0x649c6  5      OPC=movl_r32_m32    
  andl $0x1, %eax                              #  5     0x649cb  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  6     0x649ce  7      OPC=andl_r32_imm32  
  nop                                          #  7     0x649d5  1      OPC=nop             
  nop                                          #  8     0x649d6  1      OPC=nop             
  nop                                          #  9     0x649d7  1      OPC=nop             
  nop                                          #  10    0x649d8  1      OPC=nop             
  addq %r15, %r11                              #  11    0x649d9  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  12    0x649dc  3      OPC=jmpq_r64        
  nop                                          #  13    0x649df  1      OPC=nop             
  nop                                          #  14    0x649e0  1      OPC=nop             
  nop                                          #  15    0x649e1  1      OPC=nop             
  nop                                          #  16    0x649e2  1      OPC=nop             
  nop                                          #  17    0x649e3  1      OPC=nop             
  nop                                          #  18    0x649e4  1      OPC=nop             
  nop                                          #  19    0x649e5  1      OPC=nop             
  nop                                          #  20    0x649e6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE3badEv

