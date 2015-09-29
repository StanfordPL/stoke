  .text
  .globl _ZNSoD1Ev
  .type _ZNSoD1Ev, @function

#! file-offset 0xddf00
#! rip-offset  0x9df00
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSoD1Ev:                        #        0x9df00  0      OPC=<label>         
  movl %edi, %edi                  #  1     0x9df00  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0x9df02  2      OPC=movl_r32_r32    
  movl $0x1003b8ec, (%r15,%rdi,1)  #  3     0x9df04  8      OPC=movl_m32_imm32  
  addl $0x4, %edi                  #  4     0x9df0c  3      OPC=addl_r32_imm8   
  movl %edi, %edi                  #  5     0x9df0f  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)  #  6     0x9df11  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev         #  7     0x9df19  5      OPC=jmpq_label_1    
  nop                              #  8     0x9df1e  1      OPC=nop             
  nop                              #  9     0x9df1f  1      OPC=nop             
                                                                                
.size _ZNSoD1Ev, .-_ZNSoD1Ev

