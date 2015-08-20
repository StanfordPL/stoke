  .text
  .globl _ZNKSt8messagesIwE20_M_convert_from_charEPc
  .type _ZNKSt8messagesIwE20_M_convert_from_charEPc, @function

#! file-offset 0xf20e0
#! rip-offset  0xb20e0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE20_M_convert_from_charEPc:  #        0xb20e0  0      OPC=<label>         
  movl %edi, %eax                              #  1     0xb20e0  2      OPC=movl_r32_r32    
  movl %eax, %eax                              #  2     0xb20e2  2      OPC=movl_r32_r32    
  movl $0x1007362c, (%r15,%rax,1)              #  3     0xb20e4  8      OPC=movl_m32_imm32  
  popq %r11                                    #  4     0xb20ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                      #  5     0xb20ee  7      OPC=andl_r32_imm32  
  nop                                          #  6     0xb20f5  1      OPC=nop             
  nop                                          #  7     0xb20f6  1      OPC=nop             
  nop                                          #  8     0xb20f7  1      OPC=nop             
  nop                                          #  9     0xb20f8  1      OPC=nop             
  addq %r15, %r11                              #  10    0xb20f9  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  11    0xb20fc  3      OPC=jmpq_r64        
  nop                                          #  12    0xb20ff  1      OPC=nop             
  nop                                          #  13    0xb2100  1      OPC=nop             
  nop                                          #  14    0xb2101  1      OPC=nop             
  nop                                          #  15    0xb2102  1      OPC=nop             
  nop                                          #  16    0xb2103  1      OPC=nop             
  nop                                          #  17    0xb2104  1      OPC=nop             
  nop                                          #  18    0xb2105  1      OPC=nop             
  nop                                          #  19    0xb2106  1      OPC=nop             
                                                                                            
.size _ZNKSt8messagesIwE20_M_convert_from_charEPc, .-_ZNKSt8messagesIwE20_M_convert_from_charEPc

