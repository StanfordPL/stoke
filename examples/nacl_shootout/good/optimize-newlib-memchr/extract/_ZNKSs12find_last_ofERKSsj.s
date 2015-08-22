  .text
  .globl _ZNKSs12find_last_ofERKSsj
  .type _ZNKSs12find_last_ofERKSsj, @function

#! file-offset 0xebd00
#! rip-offset  0xabd00
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode            
._ZNKSs12find_last_ofERKSsj:        #        0xabd00  0      OPC=<label>       
  movl %esi, %esi                   #  1     0xabd00  2      OPC=movl_r32_r32  
  movl %edi, %edi                   #  2     0xabd02  2      OPC=movl_r32_r32  
  movl %esi, %esi                   #  3     0xabd04  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi          #  4     0xabd06  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax             #  5     0xabd0a  3      OPC=leal_r32_m16  
  movl %eax, %eax                   #  6     0xabd0d  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx          #  7     0xabd0f  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  8     0xabd13  5      OPC=jmpq_label_1  
  nop                               #  9     0xabd18  1      OPC=nop           
  nop                               #  10    0xabd19  1      OPC=nop           
  nop                               #  11    0xabd1a  1      OPC=nop           
  nop                               #  12    0xabd1b  1      OPC=nop           
  nop                               #  13    0xabd1c  1      OPC=nop           
  nop                               #  14    0xabd1d  1      OPC=nop           
  nop                               #  15    0xabd1e  1      OPC=nop           
  nop                               #  16    0xabd1f  1      OPC=nop           
                                                                               
.size _ZNKSs12find_last_ofERKSsj, .-_ZNKSs12find_last_ofERKSsj

