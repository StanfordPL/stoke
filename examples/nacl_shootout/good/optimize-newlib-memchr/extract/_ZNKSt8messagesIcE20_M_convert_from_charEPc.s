  .text
  .globl _ZNKSt8messagesIcE20_M_convert_from_charEPc
  .type _ZNKSt8messagesIcE20_M_convert_from_charEPc, @function

#! file-offset 0xb9860
#! rip-offset  0x79860
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE20_M_convert_from_charEPc:  #        0x79860  0      OPC=<label>         
  movl %edi, %eax                              #  1     0x79860  2      OPC=movl_r32_r32    
  movl %eax, %eax                              #  2     0x79862  2      OPC=movl_r32_r32    
  movl $0x1007358c, (%r15,%rax,1)              #  3     0x79864  8      OPC=movl_m32_imm32  
  popq %r11                                    #  4     0x7986c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                      #  5     0x7986e  7      OPC=andl_r32_imm32  
  nop                                          #  6     0x79875  1      OPC=nop             
  nop                                          #  7     0x79876  1      OPC=nop             
  nop                                          #  8     0x79877  1      OPC=nop             
  nop                                          #  9     0x79878  1      OPC=nop             
  addq %r15, %r11                              #  10    0x79879  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  11    0x7987c  3      OPC=jmpq_r64        
  nop                                          #  12    0x7987f  1      OPC=nop             
  nop                                          #  13    0x79880  1      OPC=nop             
  nop                                          #  14    0x79881  1      OPC=nop             
  nop                                          #  15    0x79882  1      OPC=nop             
  nop                                          #  16    0x79883  1      OPC=nop             
  nop                                          #  17    0x79884  1      OPC=nop             
  nop                                          #  18    0x79885  1      OPC=nop             
  nop                                          #  19    0x79886  1      OPC=nop             
                                                                                            
.size _ZNKSt8messagesIcE20_M_convert_from_charEPc, .-_ZNKSt8messagesIcE20_M_convert_from_charEPc

