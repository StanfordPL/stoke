  .text
  .globl _ZNSt13bad_exceptionD1Ev
  .type _ZNSt13bad_exceptionD1Ev, @function

#! file-offset 0x123c00
#! rip-offset  0xe3c00
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13bad_exceptionD1Ev:         #        0xe3c00  0      OPC=<label>         
  popq %r11                        #  1     0xe3c00  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xe3c02  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xe3c04  2      OPC=movl_r32_r32    
  movl $0x1003d368, (%r15,%rdi,1)  #  4     0xe3c06  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xe3c0e  7      OPC=andl_r32_imm32  
  nop                              #  6     0xe3c15  1      OPC=nop             
  nop                              #  7     0xe3c16  1      OPC=nop             
  nop                              #  8     0xe3c17  1      OPC=nop             
  nop                              #  9     0xe3c18  1      OPC=nop             
  addq %r15, %r11                  #  10    0xe3c19  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xe3c1c  3      OPC=jmpq_r64        
  nop                              #  12    0xe3c1f  1      OPC=nop             
  nop                              #  13    0xe3c20  1      OPC=nop             
  nop                              #  14    0xe3c21  1      OPC=nop             
  nop                              #  15    0xe3c22  1      OPC=nop             
  nop                              #  16    0xe3c23  1      OPC=nop             
  nop                              #  17    0xe3c24  1      OPC=nop             
  nop                              #  18    0xe3c25  1      OPC=nop             
  nop                              #  19    0xe3c26  1      OPC=nop             
                                                                                
.size _ZNSt13bad_exceptionD1Ev, .-_ZNSt13bad_exceptionD1Ev

