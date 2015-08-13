  .text
  .globl _ZNKSs12find_last_ofERKSsj
  .type _ZNKSs12find_last_ofERKSsj, @function

#! file-offset 0xeb2e0
#! rip-offset  0xab2e0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode            
._ZNKSs12find_last_ofERKSsj:        #        0xab2e0  0      OPC=<label>       
  movl %esi, %esi                   #  1     0xab2e0  2      OPC=movl_r32_r32  
  movl %edi, %edi                   #  2     0xab2e2  2      OPC=movl_r32_r32  
  movl %esi, %esi                   #  3     0xab2e4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi          #  4     0xab2e6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax             #  5     0xab2ea  3      OPC=leal_r32_m16  
  movl %eax, %eax                   #  6     0xab2ed  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx          #  7     0xab2ef  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  8     0xab2f3  5      OPC=jmpq_label_1  
  nop                               #  9     0xab2f8  1      OPC=nop           
  nop                               #  10    0xab2f9  1      OPC=nop           
  nop                               #  11    0xab2fa  1      OPC=nop           
  nop                               #  12    0xab2fb  1      OPC=nop           
  nop                               #  13    0xab2fc  1      OPC=nop           
  nop                               #  14    0xab2fd  1      OPC=nop           
  nop                               #  15    0xab2fe  1      OPC=nop           
  nop                               #  16    0xab2ff  1      OPC=nop           
                                                                               
.size _ZNKSs12find_last_ofERKSsj, .-_ZNKSs12find_last_ofERKSsj

