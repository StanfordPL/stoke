  .text
  .globl _ZNSsC1Ev
  .type _ZNSsC1Ev, @function

#! file-offset 0xeade0
#! rip-offset  0xaade0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSsC1Ev:                        #        0xaade0  0      OPC=<label>         
  popq %r11                        #  1     0xaade0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaade2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaade4  2      OPC=movl_r32_r32    
  movl $0x1007358c, (%r15,%rdi,1)  #  4     0xaade6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xaadee  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaadf5  1      OPC=nop             
  nop                              #  7     0xaadf6  1      OPC=nop             
  nop                              #  8     0xaadf7  1      OPC=nop             
  nop                              #  9     0xaadf8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaadf9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaadfc  3      OPC=jmpq_r64        
  nop                              #  12    0xaadff  1      OPC=nop             
  nop                              #  13    0xaae00  1      OPC=nop             
  nop                              #  14    0xaae01  1      OPC=nop             
  nop                              #  15    0xaae02  1      OPC=nop             
  nop                              #  16    0xaae03  1      OPC=nop             
  nop                              #  17    0xaae04  1      OPC=nop             
  nop                              #  18    0xaae05  1      OPC=nop             
  nop                              #  19    0xaae06  1      OPC=nop             
                                                                                
.size _ZNSsC1Ev, .-_ZNSsC1Ev

