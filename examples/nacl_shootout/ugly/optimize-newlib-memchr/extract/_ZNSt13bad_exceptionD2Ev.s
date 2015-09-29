  .text
  .globl _ZNSt13bad_exceptionD2Ev
  .type _ZNSt13bad_exceptionD2Ev, @function

#! file-offset 0x123be0
#! rip-offset  0xe3be0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13bad_exceptionD2Ev:         #        0xe3be0  0      OPC=<label>         
  popq %r11                        #  1     0xe3be0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xe3be2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xe3be4  2      OPC=movl_r32_r32    
  movl $0x1003d368, (%r15,%rdi,1)  #  4     0xe3be6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xe3bee  7      OPC=andl_r32_imm32  
  nop                              #  6     0xe3bf5  1      OPC=nop             
  nop                              #  7     0xe3bf6  1      OPC=nop             
  nop                              #  8     0xe3bf7  1      OPC=nop             
  nop                              #  9     0xe3bf8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xe3bf9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xe3bfc  3      OPC=jmpq_r64        
  nop                              #  12    0xe3bff  1      OPC=nop             
  nop                              #  13    0xe3c00  1      OPC=nop             
  nop                              #  14    0xe3c01  1      OPC=nop             
  nop                              #  15    0xe3c02  1      OPC=nop             
  nop                              #  16    0xe3c03  1      OPC=nop             
  nop                              #  17    0xe3c04  1      OPC=nop             
  nop                              #  18    0xe3c05  1      OPC=nop             
  nop                              #  19    0xe3c06  1      OPC=nop             
                                                                                
.size _ZNSt13bad_exceptionD2Ev, .-_ZNSt13bad_exceptionD2Ev

