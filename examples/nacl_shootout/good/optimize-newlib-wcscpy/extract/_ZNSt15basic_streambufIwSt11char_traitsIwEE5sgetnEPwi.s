  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi, @function

#! file-offset 0xe8680
#! rip-offset  0xa8680
#! capacity    32 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi:  #        0xa8680  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa8680  2      OPC=movl_r32_r32    
  movl %esi, %esi                                        #  2     0xa8682  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  3     0xa8684  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  4     0xa8686  4      OPC=movl_r32_m32    
  movl %eax, %eax                                        #  5     0xa868a  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                           #  6     0xa868c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  7     0xa8691  6      OPC=andl_r32_imm32  
  nop                                                    #  8     0xa8697  1      OPC=nop             
  nop                                                    #  9     0xa8698  1      OPC=nop             
  nop                                                    #  10    0xa8699  1      OPC=nop             
  addq %r15, %rax                                        #  11    0xa869a  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  12    0xa869d  2      OPC=jmpq_r64        
  nop                                                    #  13    0xa869f  1      OPC=nop             
  nop                                                    #  14    0xa86a0  1      OPC=nop             
  nop                                                    #  15    0xa86a1  1      OPC=nop             
  nop                                                    #  16    0xa86a2  1      OPC=nop             
  nop                                                    #  17    0xa86a3  1      OPC=nop             
  nop                                                    #  18    0xa86a4  1      OPC=nop             
  nop                                                    #  19    0xa86a5  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi

