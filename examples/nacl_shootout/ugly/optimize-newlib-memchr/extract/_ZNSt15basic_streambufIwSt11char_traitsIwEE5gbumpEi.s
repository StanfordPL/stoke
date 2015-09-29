  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi, @function

#! file-offset 0xe9140
#! rip-offset  0xa9140
#! capacity    32 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi:  #        0xa9140  0      OPC=<label>         
  popq %r11                                            #  1     0xa9140  2      OPC=popq_r64_1      
  movl %edi, %edi                                      #  2     0xa9142  2      OPC=movl_r32_r32    
  shll $0x2, %esi                                      #  3     0xa9144  3      OPC=shll_r32_imm8   
  movl %edi, %edi                                      #  4     0xa9147  2      OPC=movl_r32_r32    
  addl %esi, 0x8(%r15,%rdi,1)                          #  5     0xa9149  5      OPC=addl_m32_r32    
  andl $0xffffffe0, %r11d                              #  6     0xa914e  7      OPC=andl_r32_imm32  
  nop                                                  #  7     0xa9155  1      OPC=nop             
  nop                                                  #  8     0xa9156  1      OPC=nop             
  nop                                                  #  9     0xa9157  1      OPC=nop             
  nop                                                  #  10    0xa9158  1      OPC=nop             
  addq %r15, %r11                                      #  11    0xa9159  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  12    0xa915c  3      OPC=jmpq_r64        
  nop                                                  #  13    0xa915f  1      OPC=nop             
  nop                                                  #  14    0xa9160  1      OPC=nop             
  nop                                                  #  15    0xa9161  1      OPC=nop             
  nop                                                  #  16    0xa9162  1      OPC=nop             
  nop                                                  #  17    0xa9163  1      OPC=nop             
  nop                                                  #  18    0xa9164  1      OPC=nop             
  nop                                                  #  19    0xa9165  1      OPC=nop             
  nop                                                  #  20    0xa9166  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi

