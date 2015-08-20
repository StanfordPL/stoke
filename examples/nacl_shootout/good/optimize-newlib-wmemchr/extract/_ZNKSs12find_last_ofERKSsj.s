  .text
  .globl _ZNKSs12find_last_ofERKSsj
  .type _ZNKSs12find_last_ofERKSsj, @function

#! file-offset 0xeb5e0
#! rip-offset  0xab5e0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode            
._ZNKSs12find_last_ofERKSsj:        #        0xab5e0  0      OPC=<label>       
  movl %esi, %esi                   #  1     0xab5e0  2      OPC=movl_r32_r32  
  movl %edi, %edi                   #  2     0xab5e2  2      OPC=movl_r32_r32  
  movl %esi, %esi                   #  3     0xab5e4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi          #  4     0xab5e6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax             #  5     0xab5ea  3      OPC=leal_r32_m16  
  movl %eax, %eax                   #  6     0xab5ed  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx          #  7     0xab5ef  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  8     0xab5f3  5      OPC=jmpq_label_1  
  nop                               #  9     0xab5f8  1      OPC=nop           
  nop                               #  10    0xab5f9  1      OPC=nop           
  nop                               #  11    0xab5fa  1      OPC=nop           
  nop                               #  12    0xab5fb  1      OPC=nop           
  nop                               #  13    0xab5fc  1      OPC=nop           
  nop                               #  14    0xab5fd  1      OPC=nop           
  nop                               #  15    0xab5fe  1      OPC=nop           
  nop                               #  16    0xab5ff  1      OPC=nop           
                                                                               
.size _ZNKSs12find_last_ofERKSsj, .-_ZNKSs12find_last_ofERKSsj

