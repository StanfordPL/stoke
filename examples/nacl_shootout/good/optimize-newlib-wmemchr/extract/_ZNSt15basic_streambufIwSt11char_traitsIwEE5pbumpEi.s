  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi, @function

#! file-offset 0xe8ae0
#! rip-offset  0xa8ae0
#! capacity    32 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi:  #        0xa8ae0  0      OPC=<label>         
  popq %r11                                            #  1     0xa8ae0  2      OPC=popq_r64_1      
  movl %edi, %edi                                      #  2     0xa8ae2  2      OPC=movl_r32_r32    
  shll $0x2, %esi                                      #  3     0xa8ae4  3      OPC=shll_r32_imm8   
  movl %edi, %edi                                      #  4     0xa8ae7  2      OPC=movl_r32_r32    
  addl %esi, 0x14(%r15,%rdi,1)                         #  5     0xa8ae9  5      OPC=addl_m32_r32    
  andl $0xffffffe0, %r11d                              #  6     0xa8aee  7      OPC=andl_r32_imm32  
  nop                                                  #  7     0xa8af5  1      OPC=nop             
  nop                                                  #  8     0xa8af6  1      OPC=nop             
  nop                                                  #  9     0xa8af7  1      OPC=nop             
  nop                                                  #  10    0xa8af8  1      OPC=nop             
  addq %r15, %r11                                      #  11    0xa8af9  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  12    0xa8afc  3      OPC=jmpq_r64        
  nop                                                  #  13    0xa8aff  1      OPC=nop             
  nop                                                  #  14    0xa8b00  1      OPC=nop             
  nop                                                  #  15    0xa8b01  1      OPC=nop             
  nop                                                  #  16    0xa8b02  1      OPC=nop             
  nop                                                  #  17    0xa8b03  1      OPC=nop             
  nop                                                  #  18    0xa8b04  1      OPC=nop             
  nop                                                  #  19    0xa8b05  1      OPC=nop             
  nop                                                  #  20    0xa8b06  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi

