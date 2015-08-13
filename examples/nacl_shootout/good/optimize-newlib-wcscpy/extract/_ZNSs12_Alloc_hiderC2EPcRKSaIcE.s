  .text
  .globl _ZNSs12_Alloc_hiderC2EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC2EPcRKSaIcE, @function

#! file-offset 0xea880
#! rip-offset  0xaa880
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSs12_Alloc_hiderC2EPcRKSaIcE:  #        0xaa880  0      OPC=<label>         
  popq %r11                        #  1     0xaa880  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaa882  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaa884  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)         #  4     0xaa886  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d          #  5     0xaa88a  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaa891  1      OPC=nop             
  nop                              #  7     0xaa892  1      OPC=nop             
  nop                              #  8     0xaa893  1      OPC=nop             
  nop                              #  9     0xaa894  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaa895  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaa898  3      OPC=jmpq_r64        
  nop                              #  12    0xaa89b  1      OPC=nop             
  nop                              #  13    0xaa89c  1      OPC=nop             
  nop                              #  14    0xaa89d  1      OPC=nop             
  nop                              #  15    0xaa89e  1      OPC=nop             
  nop                              #  16    0xaa89f  1      OPC=nop             
  nop                              #  17    0xaa8a0  1      OPC=nop             
  nop                              #  18    0xaa8a1  1      OPC=nop             
  nop                              #  19    0xaa8a2  1      OPC=nop             
  nop                              #  20    0xaa8a3  1      OPC=nop             
  nop                              #  21    0xaa8a4  1      OPC=nop             
  nop                              #  22    0xaa8a5  1      OPC=nop             
  nop                              #  23    0xaa8a6  1      OPC=nop             
                                                                                
.size _ZNSs12_Alloc_hiderC2EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC2EPcRKSaIcE

