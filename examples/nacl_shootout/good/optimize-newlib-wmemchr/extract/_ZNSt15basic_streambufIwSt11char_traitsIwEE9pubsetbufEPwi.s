  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi, @function

#! file-offset 0xe8840
#! rip-offset  0xa8840
#! capacity    32 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi:  #        0xa8840  0      OPC=<label>         
  movl %edi, %edi                                            #  1     0xa8840  2      OPC=movl_r32_r32    
  movl %esi, %esi                                            #  2     0xa8842  2      OPC=movl_r32_r32    
  movl %edi, %edi                                            #  3     0xa8844  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  4     0xa8846  4      OPC=movl_r32_m32    
  movl %eax, %eax                                            #  5     0xa884a  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                #  6     0xa884c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                     #  7     0xa8851  6      OPC=andl_r32_imm32  
  nop                                                        #  8     0xa8857  1      OPC=nop             
  nop                                                        #  9     0xa8858  1      OPC=nop             
  nop                                                        #  10    0xa8859  1      OPC=nop             
  addq %r15, %rax                                            #  11    0xa885a  3      OPC=addq_r64_r64    
  jmpq %rax                                                  #  12    0xa885d  2      OPC=jmpq_r64        
  nop                                                        #  13    0xa885f  1      OPC=nop             
  nop                                                        #  14    0xa8860  1      OPC=nop             
  nop                                                        #  15    0xa8861  1      OPC=nop             
  nop                                                        #  16    0xa8862  1      OPC=nop             
  nop                                                        #  17    0xa8863  1      OPC=nop             
  nop                                                        #  18    0xa8864  1      OPC=nop             
  nop                                                        #  19    0xa8865  1      OPC=nop             
                                                                                                          
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi

