  .text
  .globl _ZNSiD1Ev
  .type _ZNSiD1Ev, @function

#! file-offset 0xa7e20
#! rip-offset  0x67e20
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSiD1Ev:                        #        0x67e20  0      OPC=<label>         
  movl %edi, %eax                  #  1     0x67e20  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edi             #  2     0x67e22  3      OPC=leal_r32_m16    
  movl %eax, %eax                  #  3     0x67e25  2      OPC=movl_r32_r32    
  movl $0x1003a82c, (%r15,%rax,1)  #  4     0x67e27  8      OPC=movl_m32_imm32  
  movl %eax, %eax                  #  5     0x67e2f  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)      #  6     0x67e31  9      OPC=movl_m32_imm32  
  nop                              #  7     0x67e3a  1      OPC=nop             
  nop                              #  8     0x67e3b  1      OPC=nop             
  nop                              #  9     0x67e3c  1      OPC=nop             
  nop                              #  10    0x67e3d  1      OPC=nop             
  nop                              #  11    0x67e3e  1      OPC=nop             
  nop                              #  12    0x67e3f  1      OPC=nop             
  movl %edi, %edi                  #  13    0x67e40  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)  #  14    0x67e42  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev         #  15    0x67e4a  5      OPC=jmpq_label_1    
  nop                              #  16    0x67e4f  1      OPC=nop             
  nop                              #  17    0x67e50  1      OPC=nop             
  nop                              #  18    0x67e51  1      OPC=nop             
  nop                              #  19    0x67e52  1      OPC=nop             
  nop                              #  20    0x67e53  1      OPC=nop             
  nop                              #  21    0x67e54  1      OPC=nop             
  nop                              #  22    0x67e55  1      OPC=nop             
  nop                              #  23    0x67e56  1      OPC=nop             
  nop                              #  24    0x67e57  1      OPC=nop             
  nop                              #  25    0x67e58  1      OPC=nop             
  nop                              #  26    0x67e59  1      OPC=nop             
  nop                              #  27    0x67e5a  1      OPC=nop             
  nop                              #  28    0x67e5b  1      OPC=nop             
  nop                              #  29    0x67e5c  1      OPC=nop             
  nop                              #  30    0x67e5d  1      OPC=nop             
  nop                              #  31    0x67e5e  1      OPC=nop             
  nop                              #  32    0x67e5f  1      OPC=nop             
                                                                                
.size _ZNSiD1Ev, .-_ZNSiD1Ev

