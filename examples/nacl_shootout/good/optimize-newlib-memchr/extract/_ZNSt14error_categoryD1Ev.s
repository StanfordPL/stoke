  .text
  .globl _ZNSt14error_categoryD1Ev
  .type _ZNSt14error_categoryD1Ev, @function

#! file-offset 0x12a2a0
#! rip-offset  0xea2a0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14error_categoryD1Ev:        #        0xea2a0  0      OPC=<label>         
  popq %r11                        #  1     0xea2a0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xea2a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xea2a4  2      OPC=movl_r32_r32    
  movl $0x1003dba8, (%r15,%rdi,1)  #  4     0xea2a6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xea2ae  7      OPC=andl_r32_imm32  
  nop                              #  6     0xea2b5  1      OPC=nop             
  nop                              #  7     0xea2b6  1      OPC=nop             
  nop                              #  8     0xea2b7  1      OPC=nop             
  nop                              #  9     0xea2b8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xea2b9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xea2bc  3      OPC=jmpq_r64        
  nop                              #  12    0xea2bf  1      OPC=nop             
  nop                              #  13    0xea2c0  1      OPC=nop             
  nop                              #  14    0xea2c1  1      OPC=nop             
  nop                              #  15    0xea2c2  1      OPC=nop             
  nop                              #  16    0xea2c3  1      OPC=nop             
  nop                              #  17    0xea2c4  1      OPC=nop             
  nop                              #  18    0xea2c5  1      OPC=nop             
  nop                              #  19    0xea2c6  1      OPC=nop             
                                                                                
.size _ZNSt14error_categoryD1Ev, .-_ZNSt14error_categoryD1Ev

