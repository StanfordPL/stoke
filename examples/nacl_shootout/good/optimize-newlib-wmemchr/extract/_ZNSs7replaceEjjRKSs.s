  .text
  .globl _ZNSs7replaceEjjRKSs
  .type _ZNSs7replaceEjjRKSs, @function

#! file-offset 0xef580
#! rip-offset  0xaf580
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode            
._ZNSs7replaceEjjRKSs:        #        0xaf580  0      OPC=<label>       
  movl %ecx, %ecx             #  1     0xaf580  2      OPC=movl_r32_r32  
  movl %edi, %edi             #  2     0xaf582  2      OPC=movl_r32_r32  
  movl %ecx, %ecx             #  3     0xaf584  2      OPC=movl_r32_r32  
  movl (%r15,%rcx,1), %ecx    #  4     0xaf586  4      OPC=movl_r32_m32  
  leal -0xc(%rcx), %eax       #  5     0xaf58a  3      OPC=leal_r32_m16  
  movl %eax, %eax             #  6     0xaf58d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %r8d    #  7     0xaf58f  4      OPC=movl_r32_m32  
  jmpq ._ZNSs7replaceEjjPKcj  #  8     0xaf593  5      OPC=jmpq_label_1  
  nop                         #  9     0xaf598  1      OPC=nop           
  nop                         #  10    0xaf599  1      OPC=nop           
  nop                         #  11    0xaf59a  1      OPC=nop           
  nop                         #  12    0xaf59b  1      OPC=nop           
  nop                         #  13    0xaf59c  1      OPC=nop           
  nop                         #  14    0xaf59d  1      OPC=nop           
  nop                         #  15    0xaf59e  1      OPC=nop           
  nop                         #  16    0xaf59f  1      OPC=nop           
                                                                         
.size _ZNSs7replaceEjjRKSs, .-_ZNSs7replaceEjjRKSs

