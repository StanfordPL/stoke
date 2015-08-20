  .text
  .globl _ZNSt14error_categoryD1Ev
  .type _ZNSt14error_categoryD1Ev, @function

#! file-offset 0x129b80
#! rip-offset  0xe9b80
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14error_categoryD1Ev:        #        0xe9b80  0      OPC=<label>         
  popq %r11                        #  1     0xe9b80  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xe9b82  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xe9b84  2      OPC=movl_r32_r32    
  movl $0x1003dba8, (%r15,%rdi,1)  #  4     0xe9b86  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xe9b8e  7      OPC=andl_r32_imm32  
  nop                              #  6     0xe9b95  1      OPC=nop             
  nop                              #  7     0xe9b96  1      OPC=nop             
  nop                              #  8     0xe9b97  1      OPC=nop             
  nop                              #  9     0xe9b98  1      OPC=nop             
  addq %r15, %r11                  #  10    0xe9b99  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xe9b9c  3      OPC=jmpq_r64        
  nop                              #  12    0xe9b9f  1      OPC=nop             
  nop                              #  13    0xe9ba0  1      OPC=nop             
  nop                              #  14    0xe9ba1  1      OPC=nop             
  nop                              #  15    0xe9ba2  1      OPC=nop             
  nop                              #  16    0xe9ba3  1      OPC=nop             
  nop                              #  17    0xe9ba4  1      OPC=nop             
  nop                              #  18    0xe9ba5  1      OPC=nop             
  nop                              #  19    0xe9ba6  1      OPC=nop             
                                                                                
.size _ZNSt14error_categoryD1Ev, .-_ZNSt14error_categoryD1Ev

