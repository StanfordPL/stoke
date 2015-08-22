  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi, @function

#! file-offset 0xe8f60
#! rip-offset  0xa8f60
#! capacity    32 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi:  #        0xa8f60  0      OPC=<label>         
  movl %edi, %edi                                            #  1     0xa8f60  2      OPC=movl_r32_r32    
  movl %esi, %esi                                            #  2     0xa8f62  2      OPC=movl_r32_r32    
  movl %edi, %edi                                            #  3     0xa8f64  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  4     0xa8f66  4      OPC=movl_r32_m32    
  movl %eax, %eax                                            #  5     0xa8f6a  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                #  6     0xa8f6c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                     #  7     0xa8f71  6      OPC=andl_r32_imm32  
  nop                                                        #  8     0xa8f77  1      OPC=nop             
  nop                                                        #  9     0xa8f78  1      OPC=nop             
  nop                                                        #  10    0xa8f79  1      OPC=nop             
  addq %r15, %rax                                            #  11    0xa8f7a  3      OPC=addq_r64_r64    
  jmpq %rax                                                  #  12    0xa8f7d  2      OPC=jmpq_r64        
  nop                                                        #  13    0xa8f7f  1      OPC=nop             
  nop                                                        #  14    0xa8f80  1      OPC=nop             
  nop                                                        #  15    0xa8f81  1      OPC=nop             
  nop                                                        #  16    0xa8f82  1      OPC=nop             
  nop                                                        #  17    0xa8f83  1      OPC=nop             
  nop                                                        #  18    0xa8f84  1      OPC=nop             
  nop                                                        #  19    0xa8f85  1      OPC=nop             
                                                                                                          
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwi

