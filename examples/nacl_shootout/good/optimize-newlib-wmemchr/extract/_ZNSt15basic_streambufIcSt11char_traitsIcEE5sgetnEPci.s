  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci, @function

#! file-offset 0xe8480
#! rip-offset  0xa8480
#! capacity    32 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci:  #        0xa8480  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa8480  2      OPC=movl_r32_r32    
  movl %esi, %esi                                        #  2     0xa8482  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  3     0xa8484  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  4     0xa8486  4      OPC=movl_r32_m32    
  movl %eax, %eax                                        #  5     0xa848a  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                           #  6     0xa848c  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  7     0xa8491  6      OPC=andl_r32_imm32  
  nop                                                    #  8     0xa8497  1      OPC=nop             
  nop                                                    #  9     0xa8498  1      OPC=nop             
  nop                                                    #  10    0xa8499  1      OPC=nop             
  addq %r15, %rax                                        #  11    0xa849a  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  12    0xa849d  2      OPC=jmpq_r64        
  nop                                                    #  13    0xa849f  1      OPC=nop             
  nop                                                    #  14    0xa84a0  1      OPC=nop             
  nop                                                    #  15    0xa84a1  1      OPC=nop             
  nop                                                    #  16    0xa84a2  1      OPC=nop             
  nop                                                    #  17    0xa84a3  1      OPC=nop             
  nop                                                    #  18    0xa84a4  1      OPC=nop             
  nop                                                    #  19    0xa84a5  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPci

