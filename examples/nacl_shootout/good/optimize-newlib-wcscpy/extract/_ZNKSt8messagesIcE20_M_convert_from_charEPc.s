  .text
  .globl _ZNKSt8messagesIcE20_M_convert_from_charEPc
  .type _ZNKSt8messagesIcE20_M_convert_from_charEPc, @function

#! file-offset 0xb8e40
#! rip-offset  0x78e40
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE20_M_convert_from_charEPc:  #        0x78e40  0      OPC=<label>         
  movl %edi, %eax                              #  1     0x78e40  2      OPC=movl_r32_r32    
  movl %eax, %eax                              #  2     0x78e42  2      OPC=movl_r32_r32    
  movl $0x1007358c, (%r15,%rax,1)              #  3     0x78e44  8      OPC=movl_m32_imm32  
  popq %r11                                    #  4     0x78e4c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                      #  5     0x78e4e  7      OPC=andl_r32_imm32  
  nop                                          #  6     0x78e55  1      OPC=nop             
  nop                                          #  7     0x78e56  1      OPC=nop             
  nop                                          #  8     0x78e57  1      OPC=nop             
  nop                                          #  9     0x78e58  1      OPC=nop             
  addq %r15, %r11                              #  10    0x78e59  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  11    0x78e5c  3      OPC=jmpq_r64        
  nop                                          #  12    0x78e5f  1      OPC=nop             
  nop                                          #  13    0x78e60  1      OPC=nop             
  nop                                          #  14    0x78e61  1      OPC=nop             
  nop                                          #  15    0x78e62  1      OPC=nop             
  nop                                          #  16    0x78e63  1      OPC=nop             
  nop                                          #  17    0x78e64  1      OPC=nop             
  nop                                          #  18    0x78e65  1      OPC=nop             
  nop                                          #  19    0x78e66  1      OPC=nop             
                                                                                            
.size _ZNKSt8messagesIcE20_M_convert_from_charEPc, .-_ZNKSt8messagesIcE20_M_convert_from_charEPc

