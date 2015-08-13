  .text
  .globl _ZNKSt8messagesIwE20_M_convert_from_charEPc
  .type _ZNKSt8messagesIwE20_M_convert_from_charEPc, @function

#! file-offset 0xf1de0
#! rip-offset  0xb1de0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE20_M_convert_from_charEPc:  #        0xb1de0  0      OPC=<label>         
  movl %edi, %eax                              #  1     0xb1de0  2      OPC=movl_r32_r32    
  movl %eax, %eax                              #  2     0xb1de2  2      OPC=movl_r32_r32    
  movl $0x1007362c, (%r15,%rax,1)              #  3     0xb1de4  8      OPC=movl_m32_imm32  
  popq %r11                                    #  4     0xb1dec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                      #  5     0xb1dee  7      OPC=andl_r32_imm32  
  nop                                          #  6     0xb1df5  1      OPC=nop             
  nop                                          #  7     0xb1df6  1      OPC=nop             
  nop                                          #  8     0xb1df7  1      OPC=nop             
  nop                                          #  9     0xb1df8  1      OPC=nop             
  addq %r15, %r11                              #  10    0xb1df9  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  11    0xb1dfc  3      OPC=jmpq_r64        
  nop                                          #  12    0xb1dff  1      OPC=nop             
  nop                                          #  13    0xb1e00  1      OPC=nop             
  nop                                          #  14    0xb1e01  1      OPC=nop             
  nop                                          #  15    0xb1e02  1      OPC=nop             
  nop                                          #  16    0xb1e03  1      OPC=nop             
  nop                                          #  17    0xb1e04  1      OPC=nop             
  nop                                          #  18    0xb1e05  1      OPC=nop             
  nop                                          #  19    0xb1e06  1      OPC=nop             
                                                                                            
.size _ZNKSt8messagesIwE20_M_convert_from_charEPc, .-_ZNKSt8messagesIwE20_M_convert_from_charEPc

