  .text
  .globl _ZNSs12_Alloc_hiderC1EPcRKSaIcE
  .type _ZNSs12_Alloc_hiderC1EPcRKSaIcE, @function

#! file-offset 0xeaba0
#! rip-offset  0xaaba0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSs12_Alloc_hiderC1EPcRKSaIcE:  #        0xaaba0  0      OPC=<label>         
  popq %r11                        #  1     0xaaba0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaaba2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaaba4  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)         #  4     0xaaba6  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d          #  5     0xaabaa  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaabb1  1      OPC=nop             
  nop                              #  7     0xaabb2  1      OPC=nop             
  nop                              #  8     0xaabb3  1      OPC=nop             
  nop                              #  9     0xaabb4  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaabb5  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaabb8  3      OPC=jmpq_r64        
  nop                              #  12    0xaabbb  1      OPC=nop             
  nop                              #  13    0xaabbc  1      OPC=nop             
  nop                              #  14    0xaabbd  1      OPC=nop             
  nop                              #  15    0xaabbe  1      OPC=nop             
  nop                              #  16    0xaabbf  1      OPC=nop             
  nop                              #  17    0xaabc0  1      OPC=nop             
  nop                              #  18    0xaabc1  1      OPC=nop             
  nop                              #  19    0xaabc2  1      OPC=nop             
  nop                              #  20    0xaabc3  1      OPC=nop             
  nop                              #  21    0xaabc4  1      OPC=nop             
  nop                              #  22    0xaabc5  1      OPC=nop             
  nop                              #  23    0xaabc6  1      OPC=nop             
                                                                                
.size _ZNSs12_Alloc_hiderC1EPcRKSaIcE, .-_ZNSs12_Alloc_hiderC1EPcRKSaIcE

