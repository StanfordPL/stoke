  .text
  .globl _ZNSs12_Alloc_hiderC2EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC2EPcRKSaIcE, @function

#! file-offset 0xeab80
#! rip-offset  0xaab80
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSs12_Alloc_hiderC2EPcRKSaIcE:  #        0xaab80  0      OPC=<label>         
  popq %r11                        #  1     0xaab80  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaab82  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaab84  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)         #  4     0xaab86  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d          #  5     0xaab8a  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaab91  1      OPC=nop             
  nop                              #  7     0xaab92  1      OPC=nop             
  nop                              #  8     0xaab93  1      OPC=nop             
  nop                              #  9     0xaab94  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaab95  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaab98  3      OPC=jmpq_r64        
  nop                              #  12    0xaab9b  1      OPC=nop             
  nop                              #  13    0xaab9c  1      OPC=nop             
  nop                              #  14    0xaab9d  1      OPC=nop             
  nop                              #  15    0xaab9e  1      OPC=nop             
  nop                              #  16    0xaab9f  1      OPC=nop             
  nop                              #  17    0xaaba0  1      OPC=nop             
  nop                              #  18    0xaaba1  1      OPC=nop             
  nop                              #  19    0xaaba2  1      OPC=nop             
  nop                              #  20    0xaaba3  1      OPC=nop             
  nop                              #  21    0xaaba4  1      OPC=nop             
  nop                              #  22    0xaaba5  1      OPC=nop             
  nop                              #  23    0xaaba6  1      OPC=nop             
                                                                                
.size _ZNSs12_Alloc_hiderC2EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC2EPcRKSaIcE

