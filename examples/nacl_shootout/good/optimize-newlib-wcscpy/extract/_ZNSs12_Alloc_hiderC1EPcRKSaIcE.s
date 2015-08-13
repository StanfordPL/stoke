  .text
  .globl _ZNSs12_Alloc_hiderC1EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC1EPcRKSaIcE, @function

#! file-offset 0xea8a0
#! rip-offset  0xaa8a0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSs12_Alloc_hiderC1EPcRKSaIcE:  #        0xaa8a0  0      OPC=<label>         
  popq %r11                        #  1     0xaa8a0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaa8a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaa8a4  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)         #  4     0xaa8a6  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d          #  5     0xaa8aa  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaa8b1  1      OPC=nop             
  nop                              #  7     0xaa8b2  1      OPC=nop             
  nop                              #  8     0xaa8b3  1      OPC=nop             
  nop                              #  9     0xaa8b4  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaa8b5  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaa8b8  3      OPC=jmpq_r64        
  nop                              #  12    0xaa8bb  1      OPC=nop             
  nop                              #  13    0xaa8bc  1      OPC=nop             
  nop                              #  14    0xaa8bd  1      OPC=nop             
  nop                              #  15    0xaa8be  1      OPC=nop             
  nop                              #  16    0xaa8bf  1      OPC=nop             
  nop                              #  17    0xaa8c0  1      OPC=nop             
  nop                              #  18    0xaa8c1  1      OPC=nop             
  nop                              #  19    0xaa8c2  1      OPC=nop             
  nop                              #  20    0xaa8c3  1      OPC=nop             
  nop                              #  21    0xaa8c4  1      OPC=nop             
  nop                              #  22    0xaa8c5  1      OPC=nop             
  nop                              #  23    0xaa8c6  1      OPC=nop             
                                                                                
.size _ZNSs12_Alloc_hiderC1EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC1EPcRKSaIcE

