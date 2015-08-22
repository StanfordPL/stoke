  .text
  .globl _ZNKSt8messagesIwE20_M_convert_from_charEPc
  .type _ZNKSt8messagesIwE20_M_convert_from_charEPc, @function

#! file-offset 0xf2800
#! rip-offset  0xb2800
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE20_M_convert_from_charEPc:  #        0xb2800  0      OPC=<label>         
  movl %edi, %eax                              #  1     0xb2800  2      OPC=movl_r32_r32    
  movl %eax, %eax                              #  2     0xb2802  2      OPC=movl_r32_r32    
  movl $0x1007362c, (%r15,%rax,1)              #  3     0xb2804  8      OPC=movl_m32_imm32  
  popq %r11                                    #  4     0xb280c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                      #  5     0xb280e  7      OPC=andl_r32_imm32  
  nop                                          #  6     0xb2815  1      OPC=nop             
  nop                                          #  7     0xb2816  1      OPC=nop             
  nop                                          #  8     0xb2817  1      OPC=nop             
  nop                                          #  9     0xb2818  1      OPC=nop             
  addq %r15, %r11                              #  10    0xb2819  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  11    0xb281c  3      OPC=jmpq_r64        
  nop                                          #  12    0xb281f  1      OPC=nop             
  nop                                          #  13    0xb2820  1      OPC=nop             
  nop                                          #  14    0xb2821  1      OPC=nop             
  nop                                          #  15    0xb2822  1      OPC=nop             
  nop                                          #  16    0xb2823  1      OPC=nop             
  nop                                          #  17    0xb2824  1      OPC=nop             
  nop                                          #  18    0xb2825  1      OPC=nop             
  nop                                          #  19    0xb2826  1      OPC=nop             
                                                                                            
.size _ZNKSt8messagesIwE20_M_convert_from_charEPc, .-_ZNKSt8messagesIwE20_M_convert_from_charEPc

