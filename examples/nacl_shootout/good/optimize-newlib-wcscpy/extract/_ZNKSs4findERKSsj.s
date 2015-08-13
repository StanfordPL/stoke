  .text
  .globl _ZNKSs4findERKSsj
  .type _ZNKSs4findERKSsj, @function

#! file-offset 0xeada0
#! rip-offset  0xaada0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode            
._ZNKSs4findERKSsj:         #        0xaada0  0      OPC=<label>       
  movl %esi, %esi           #  1     0xaada0  2      OPC=movl_r32_r32  
  movl %edi, %edi           #  2     0xaada2  2      OPC=movl_r32_r32  
  movl %esi, %esi           #  3     0xaada4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi  #  4     0xaada6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax     #  5     0xaadaa  3      OPC=leal_r32_m16  
  movl %eax, %eax           #  6     0xaadad  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx  #  7     0xaadaf  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs4findEPKcjj   #  8     0xaadb3  5      OPC=jmpq_label_1  
  nop                       #  9     0xaadb8  1      OPC=nop           
  nop                       #  10    0xaadb9  1      OPC=nop           
  nop                       #  11    0xaadba  1      OPC=nop           
  nop                       #  12    0xaadbb  1      OPC=nop           
  nop                       #  13    0xaadbc  1      OPC=nop           
  nop                       #  14    0xaadbd  1      OPC=nop           
  nop                       #  15    0xaadbe  1      OPC=nop           
  nop                       #  16    0xaadbf  1      OPC=nop           
                                                                       
.size _ZNKSs4findERKSsj, .-_ZNKSs4findERKSsj

