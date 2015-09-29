  .text
  .globl _ZNSs12_Alloc_hiderC1EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC1EPcRKSaIcE, @function

#! file-offset 0xeb2c0
#! rip-offset  0xab2c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSs12_Alloc_hiderC1EPcRKSaIcE:  #        0xab2c0  0      OPC=<label>         
  popq %r11                        #  1     0xab2c0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xab2c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xab2c4  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)         #  4     0xab2c6  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d          #  5     0xab2ca  7      OPC=andl_r32_imm32  
  nop                              #  6     0xab2d1  1      OPC=nop             
  nop                              #  7     0xab2d2  1      OPC=nop             
  nop                              #  8     0xab2d3  1      OPC=nop             
  nop                              #  9     0xab2d4  1      OPC=nop             
  addq %r15, %r11                  #  10    0xab2d5  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xab2d8  3      OPC=jmpq_r64        
  nop                              #  12    0xab2db  1      OPC=nop             
  nop                              #  13    0xab2dc  1      OPC=nop             
  nop                              #  14    0xab2dd  1      OPC=nop             
  nop                              #  15    0xab2de  1      OPC=nop             
  nop                              #  16    0xab2df  1      OPC=nop             
  nop                              #  17    0xab2e0  1      OPC=nop             
  nop                              #  18    0xab2e1  1      OPC=nop             
  nop                              #  19    0xab2e2  1      OPC=nop             
  nop                              #  20    0xab2e3  1      OPC=nop             
  nop                              #  21    0xab2e4  1      OPC=nop             
  nop                              #  22    0xab2e5  1      OPC=nop             
  nop                              #  23    0xab2e6  1      OPC=nop             
                                                                                
.size _ZNSs12_Alloc_hiderC1EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC1EPcRKSaIcE

