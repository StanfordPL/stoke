  .text
  .globl _ZNSs7replaceEjjRKSs
  .type _ZNSs7replaceEjjRKSs, @function

#! file-offset 0xef280
#! rip-offset  0xaf280
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode            
._ZNSs7replaceEjjRKSs:        #        0xaf280  0      OPC=<label>       
  movl %ecx, %ecx             #  1     0xaf280  2      OPC=movl_r32_r32  
  movl %edi, %edi             #  2     0xaf282  2      OPC=movl_r32_r32  
  movl %ecx, %ecx             #  3     0xaf284  2      OPC=movl_r32_r32  
  movl (%r15,%rcx,1), %ecx    #  4     0xaf286  4      OPC=movl_r32_m32  
  leal -0xc(%rcx), %eax       #  5     0xaf28a  3      OPC=leal_r32_m16  
  movl %eax, %eax             #  6     0xaf28d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %r8d    #  7     0xaf28f  4      OPC=movl_r32_m32  
  jmpq ._ZNSs7replaceEjjPKcj  #  8     0xaf293  5      OPC=jmpq_label_1  
  nop                         #  9     0xaf298  1      OPC=nop           
  nop                         #  10    0xaf299  1      OPC=nop           
  nop                         #  11    0xaf29a  1      OPC=nop           
  nop                         #  12    0xaf29b  1      OPC=nop           
  nop                         #  13    0xaf29c  1      OPC=nop           
  nop                         #  14    0xaf29d  1      OPC=nop           
  nop                         #  15    0xaf29e  1      OPC=nop           
  nop                         #  16    0xaf29f  1      OPC=nop           
                                                                         
.size _ZNSs7replaceEjjRKSs, .-_ZNSs7replaceEjjRKSs

