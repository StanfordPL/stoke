  .text
  .globl _ZNSiD1Ev
  .type _ZNSiD1Ev, @function

#! file-offset 0xa8540
#! rip-offset  0x68540
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSiD1Ev:                        #        0x68540  0      OPC=<label>         
  movl %edi, %eax                  #  1     0x68540  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edi             #  2     0x68542  3      OPC=leal_r32_m16    
  movl %eax, %eax                  #  3     0x68545  2      OPC=movl_r32_r32    
  movl $0x1003a82c, (%r15,%rax,1)  #  4     0x68547  8      OPC=movl_m32_imm32  
  movl %eax, %eax                  #  5     0x6854f  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)      #  6     0x68551  9      OPC=movl_m32_imm32  
  nop                              #  7     0x6855a  1      OPC=nop             
  nop                              #  8     0x6855b  1      OPC=nop             
  nop                              #  9     0x6855c  1      OPC=nop             
  nop                              #  10    0x6855d  1      OPC=nop             
  nop                              #  11    0x6855e  1      OPC=nop             
  nop                              #  12    0x6855f  1      OPC=nop             
  movl %edi, %edi                  #  13    0x68560  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)  #  14    0x68562  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev         #  15    0x6856a  5      OPC=jmpq_label_1    
  nop                              #  16    0x6856f  1      OPC=nop             
  nop                              #  17    0x68570  1      OPC=nop             
  nop                              #  18    0x68571  1      OPC=nop             
  nop                              #  19    0x68572  1      OPC=nop             
  nop                              #  20    0x68573  1      OPC=nop             
  nop                              #  21    0x68574  1      OPC=nop             
  nop                              #  22    0x68575  1      OPC=nop             
  nop                              #  23    0x68576  1      OPC=nop             
  nop                              #  24    0x68577  1      OPC=nop             
  nop                              #  25    0x68578  1      OPC=nop             
  nop                              #  26    0x68579  1      OPC=nop             
  nop                              #  27    0x6857a  1      OPC=nop             
  nop                              #  28    0x6857b  1      OPC=nop             
  nop                              #  29    0x6857c  1      OPC=nop             
  nop                              #  30    0x6857d  1      OPC=nop             
  nop                              #  31    0x6857e  1      OPC=nop             
  nop                              #  32    0x6857f  1      OPC=nop             
                                                                                
.size _ZNSiD1Ev, .-_ZNSiD1Ev

