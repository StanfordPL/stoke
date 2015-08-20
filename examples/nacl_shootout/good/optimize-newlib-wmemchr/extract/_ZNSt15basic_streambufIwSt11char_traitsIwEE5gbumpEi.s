  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi, @function

#! file-offset 0xe8a20
#! rip-offset  0xa8a20
#! capacity    32 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi:  #        0xa8a20  0      OPC=<label>         
  popq %r11                                            #  1     0xa8a20  2      OPC=popq_r64_1      
  movl %edi, %edi                                      #  2     0xa8a22  2      OPC=movl_r32_r32    
  shll $0x2, %esi                                      #  3     0xa8a24  3      OPC=shll_r32_imm8   
  movl %edi, %edi                                      #  4     0xa8a27  2      OPC=movl_r32_r32    
  addl %esi, 0x8(%r15,%rdi,1)                          #  5     0xa8a29  5      OPC=addl_m32_r32    
  andl $0xffffffe0, %r11d                              #  6     0xa8a2e  7      OPC=andl_r32_imm32  
  nop                                                  #  7     0xa8a35  1      OPC=nop             
  nop                                                  #  8     0xa8a36  1      OPC=nop             
  nop                                                  #  9     0xa8a37  1      OPC=nop             
  nop                                                  #  10    0xa8a38  1      OPC=nop             
  addq %r15, %r11                                      #  11    0xa8a39  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  12    0xa8a3c  3      OPC=jmpq_r64        
  nop                                                  #  13    0xa8a3f  1      OPC=nop             
  nop                                                  #  14    0xa8a40  1      OPC=nop             
  nop                                                  #  15    0xa8a41  1      OPC=nop             
  nop                                                  #  16    0xa8a42  1      OPC=nop             
  nop                                                  #  17    0xa8a43  1      OPC=nop             
  nop                                                  #  18    0xa8a44  1      OPC=nop             
  nop                                                  #  19    0xa8a45  1      OPC=nop             
  nop                                                  #  20    0xa8a46  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5gbumpEi

