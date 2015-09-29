  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputnEPKwi
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputnEPKwi, @function

#! file-offset 0xe90c0
#! rip-offset  0xa90c0
#! capacity    32 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sputnEPKwi:  #        0xa90c0  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa90c0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                         #  2     0xa90c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  3     0xa90c4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  4     0xa90c6  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  5     0xa90ca  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                            #  6     0xa90cc  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  7     0xa90d1  6      OPC=andl_r32_imm32  
  nop                                                     #  8     0xa90d7  1      OPC=nop             
  nop                                                     #  9     0xa90d8  1      OPC=nop             
  nop                                                     #  10    0xa90d9  1      OPC=nop             
  addq %r15, %rax                                         #  11    0xa90da  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  12    0xa90dd  2      OPC=jmpq_r64        
  nop                                                     #  13    0xa90df  1      OPC=nop             
  nop                                                     #  14    0xa90e0  1      OPC=nop             
  nop                                                     #  15    0xa90e1  1      OPC=nop             
  nop                                                     #  16    0xa90e2  1      OPC=nop             
  nop                                                     #  17    0xa90e3  1      OPC=nop             
  nop                                                     #  18    0xa90e4  1      OPC=nop             
  nop                                                     #  19    0xa90e5  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputnEPKwi, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sputnEPKwi

