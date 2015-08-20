  .text
  .globl _ZNSoD1Ev
  .type _ZNSoD1Ev, @function

#! file-offset 0xdd7e0
#! rip-offset  0x9d7e0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSoD1Ev:                        #        0x9d7e0  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x9d7e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0x9d7e2  2      OPC=movl_r32_r32    
  movl $0x1003b8ec, (%r15,%rdi,1)  #  3     0x9d7e4  8      OPC=movl_m32_imm32  
  addl $0x4, %edi                  #  4     0x9d7ec  3      OPC=addl_r32_imm8   
  movl %edi, %edi                  #  5     0x9d7ef  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)  #  6     0x9d7f1  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev         #  7     0x9d7f9  5      OPC=jmpq_label_1    
  nop                              #  8     0x9d7fe  1      OPC=nop             
  nop                              #  9     0x9d7ff  1      OPC=nop             
                                                                                
.size _ZNSoD1Ev, .-_ZNSoD1Ev

