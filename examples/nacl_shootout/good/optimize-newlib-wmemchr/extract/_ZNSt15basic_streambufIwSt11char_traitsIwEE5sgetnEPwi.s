  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi, @function

#! file-offset 0xe8980
#! rip-offset  0xa8980
#! capacity    32 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi:  #        0xa8980  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa8980  2      OPC=movl_r32_r32    
  movl %esi, %esi                                        #  2     0xa8982  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  3     0xa8984  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  4     0xa8986  4      OPC=movl_r32_m32    
  movl %eax, %eax                                        #  5     0xa898a  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                           #  6     0xa898c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  7     0xa8991  6      OPC=andl_r32_imm32  
  nop                                                    #  8     0xa8997  1      OPC=nop             
  nop                                                    #  9     0xa8998  1      OPC=nop             
  nop                                                    #  10    0xa8999  1      OPC=nop             
  addq %r15, %rax                                        #  11    0xa899a  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  12    0xa899d  2      OPC=jmpq_r64        
  nop                                                    #  13    0xa899f  1      OPC=nop             
  nop                                                    #  14    0xa89a0  1      OPC=nop             
  nop                                                    #  15    0xa89a1  1      OPC=nop             
  nop                                                    #  16    0xa89a2  1      OPC=nop             
  nop                                                    #  17    0xa89a3  1      OPC=nop             
  nop                                                    #  18    0xa89a4  1      OPC=nop             
  nop                                                    #  19    0xa89a5  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetnEPwi

