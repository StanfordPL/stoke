  .text
  .globl _ZNKSs4findERKSsj
  .type _ZNKSs4findERKSsj, @function

#! file-offset 0xeb7c0
#! rip-offset  0xab7c0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode            
._ZNKSs4findERKSsj:         #        0xab7c0  0      OPC=<label>       
  movl %esi, %esi           #  1     0xab7c0  2      OPC=movl_r32_r32  
  movl %edi, %edi           #  2     0xab7c2  2      OPC=movl_r32_r32  
  movl %esi, %esi           #  3     0xab7c4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi  #  4     0xab7c6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax     #  5     0xab7ca  3      OPC=leal_r32_m16  
  movl %eax, %eax           #  6     0xab7cd  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx  #  7     0xab7cf  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs4findEPKcjj   #  8     0xab7d3  5      OPC=jmpq_label_1  
  nop                       #  9     0xab7d8  1      OPC=nop           
  nop                       #  10    0xab7d9  1      OPC=nop           
  nop                       #  11    0xab7da  1      OPC=nop           
  nop                       #  12    0xab7db  1      OPC=nop           
  nop                       #  13    0xab7dc  1      OPC=nop           
  nop                       #  14    0xab7dd  1      OPC=nop           
  nop                       #  15    0xab7de  1      OPC=nop           
  nop                       #  16    0xab7df  1      OPC=nop           
                                                                       
.size _ZNKSs4findERKSsj, .-_ZNKSs4findERKSsj

