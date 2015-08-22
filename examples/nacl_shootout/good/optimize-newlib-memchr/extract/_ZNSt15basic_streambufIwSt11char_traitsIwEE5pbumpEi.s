  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi, @function

#! file-offset 0xe9200
#! rip-offset  0xa9200
#! capacity    32 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi:  #        0xa9200  0      OPC=<label>         
  popq %r11                                            #  1     0xa9200  2      OPC=popq_r64_1      
  movl %edi, %edi                                      #  2     0xa9202  2      OPC=movl_r32_r32    
  shll $0x2, %esi                                      #  3     0xa9204  3      OPC=shll_r32_imm8   
  movl %edi, %edi                                      #  4     0xa9207  2      OPC=movl_r32_r32    
  addl %esi, 0x14(%r15,%rdi,1)                         #  5     0xa9209  5      OPC=addl_m32_r32    
  andl $0xffffffe0, %r11d                              #  6     0xa920e  7      OPC=andl_r32_imm32  
  nop                                                  #  7     0xa9215  1      OPC=nop             
  nop                                                  #  8     0xa9216  1      OPC=nop             
  nop                                                  #  9     0xa9217  1      OPC=nop             
  nop                                                  #  10    0xa9218  1      OPC=nop             
  addq %r15, %r11                                      #  11    0xa9219  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  12    0xa921c  3      OPC=jmpq_r64        
  nop                                                  #  13    0xa921f  1      OPC=nop             
  nop                                                  #  14    0xa9220  1      OPC=nop             
  nop                                                  #  15    0xa9221  1      OPC=nop             
  nop                                                  #  16    0xa9222  1      OPC=nop             
  nop                                                  #  17    0xa9223  1      OPC=nop             
  nop                                                  #  18    0xa9224  1      OPC=nop             
  nop                                                  #  19    0xa9225  1      OPC=nop             
  nop                                                  #  20    0xa9226  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5pbumpEi

