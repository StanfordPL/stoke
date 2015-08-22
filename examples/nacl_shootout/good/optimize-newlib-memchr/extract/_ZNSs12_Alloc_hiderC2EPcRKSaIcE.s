  .text
  .globl _ZNSs12_Alloc_hiderC2EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC2EPcRKSaIcE, @function

#! file-offset 0xeb2a0
#! rip-offset  0xab2a0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSs12_Alloc_hiderC2EPcRKSaIcE:  #        0xab2a0  0      OPC=<label>         
  popq %r11                        #  1     0xab2a0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xab2a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xab2a4  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)         #  4     0xab2a6  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d          #  5     0xab2aa  7      OPC=andl_r32_imm32  
  nop                              #  6     0xab2b1  1      OPC=nop             
  nop                              #  7     0xab2b2  1      OPC=nop             
  nop                              #  8     0xab2b3  1      OPC=nop             
  nop                              #  9     0xab2b4  1      OPC=nop             
  addq %r15, %r11                  #  10    0xab2b5  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xab2b8  3      OPC=jmpq_r64        
  nop                              #  12    0xab2bb  1      OPC=nop             
  nop                              #  13    0xab2bc  1      OPC=nop             
  nop                              #  14    0xab2bd  1      OPC=nop             
  nop                              #  15    0xab2be  1      OPC=nop             
  nop                              #  16    0xab2bf  1      OPC=nop             
  nop                              #  17    0xab2c0  1      OPC=nop             
  nop                              #  18    0xab2c1  1      OPC=nop             
  nop                              #  19    0xab2c2  1      OPC=nop             
  nop                              #  20    0xab2c3  1      OPC=nop             
  nop                              #  21    0xab2c4  1      OPC=nop             
  nop                              #  22    0xab2c5  1      OPC=nop             
  nop                              #  23    0xab2c6  1      OPC=nop             
                                                                                
.size _ZNSs12_Alloc_hiderC2EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC2EPcRKSaIcE

