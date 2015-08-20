  .text
  .globl _ZNKSs4findERKSsj
  .type _ZNKSs4findERKSsj, @function

#! file-offset 0xeb0a0
#! rip-offset  0xab0a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode            
._ZNKSs4findERKSsj:         #        0xab0a0  0      OPC=<label>       
  movl %esi, %esi           #  1     0xab0a0  2      OPC=movl_r32_r32  
  movl %edi, %edi           #  2     0xab0a2  2      OPC=movl_r32_r32  
  movl %esi, %esi           #  3     0xab0a4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi  #  4     0xab0a6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax     #  5     0xab0aa  3      OPC=leal_r32_m16  
  movl %eax, %eax           #  6     0xab0ad  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx  #  7     0xab0af  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs4findEPKcjj   #  8     0xab0b3  5      OPC=jmpq_label_1  
  nop                       #  9     0xab0b8  1      OPC=nop           
  nop                       #  10    0xab0b9  1      OPC=nop           
  nop                       #  11    0xab0ba  1      OPC=nop           
  nop                       #  12    0xab0bb  1      OPC=nop           
  nop                       #  13    0xab0bc  1      OPC=nop           
  nop                       #  14    0xab0bd  1      OPC=nop           
  nop                       #  15    0xab0be  1      OPC=nop           
  nop                       #  16    0xab0bf  1      OPC=nop           
                                                                       
.size _ZNKSs4findERKSsj, .-_ZNKSs4findERKSsj

