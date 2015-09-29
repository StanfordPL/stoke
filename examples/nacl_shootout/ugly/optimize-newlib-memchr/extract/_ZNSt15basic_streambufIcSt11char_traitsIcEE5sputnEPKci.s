  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKci
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKci, @function

#! file-offset 0xe8bc0
#! rip-offset  0xa8bc0
#! capacity    32 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKci:  #        0xa8bc0  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa8bc0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                         #  2     0xa8bc2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  3     0xa8bc4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  4     0xa8bc6  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  5     0xa8bca  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                            #  6     0xa8bcc  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  7     0xa8bd1  6      OPC=andl_r32_imm32  
  nop                                                     #  8     0xa8bd7  1      OPC=nop             
  nop                                                     #  9     0xa8bd8  1      OPC=nop             
  nop                                                     #  10    0xa8bd9  1      OPC=nop             
  addq %r15, %rax                                         #  11    0xa8bda  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  12    0xa8bdd  2      OPC=jmpq_r64        
  nop                                                     #  13    0xa8bdf  1      OPC=nop             
  nop                                                     #  14    0xa8be0  1      OPC=nop             
  nop                                                     #  15    0xa8be1  1      OPC=nop             
  nop                                                     #  16    0xa8be2  1      OPC=nop             
  nop                                                     #  17    0xa8be3  1      OPC=nop             
  nop                                                     #  18    0xa8be4  1      OPC=nop             
  nop                                                     #  19    0xa8be5  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKci, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKci

