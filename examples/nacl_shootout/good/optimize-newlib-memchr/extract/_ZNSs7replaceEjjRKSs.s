  .text
  .globl _ZNSs7replaceEjjRKSs
  .type _ZNSs7replaceEjjRKSs, @function

#! file-offset 0xefca0
#! rip-offset  0xafca0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode            
._ZNSs7replaceEjjRKSs:        #        0xafca0  0      OPC=<label>       
  movl %ecx, %ecx             #  1     0xafca0  2      OPC=movl_r32_r32  
  movl %edi, %edi             #  2     0xafca2  2      OPC=movl_r32_r32  
  movl %ecx, %ecx             #  3     0xafca4  2      OPC=movl_r32_r32  
  movl (%r15,%rcx,1), %ecx    #  4     0xafca6  4      OPC=movl_r32_m32  
  leal -0xc(%rcx), %eax       #  5     0xafcaa  3      OPC=leal_r32_m16  
  movl %eax, %eax             #  6     0xafcad  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %r8d    #  7     0xafcaf  4      OPC=movl_r32_m32  
  jmpq ._ZNSs7replaceEjjPKcj  #  8     0xafcb3  5      OPC=jmpq_label_1  
  nop                         #  9     0xafcb8  1      OPC=nop           
  nop                         #  10    0xafcb9  1      OPC=nop           
  nop                         #  11    0xafcba  1      OPC=nop           
  nop                         #  12    0xafcbb  1      OPC=nop           
  nop                         #  13    0xafcbc  1      OPC=nop           
  nop                         #  14    0xafcbd  1      OPC=nop           
  nop                         #  15    0xafcbe  1      OPC=nop           
  nop                         #  16    0xafcbf  1      OPC=nop           
                                                                         
.size _ZNSs7replaceEjjRKSs, .-_ZNSs7replaceEjjRKSs

