  .text
  .globl _ZNKSs12find_last_ofERKSsj
  .type _ZNKSs12find_last_ofERKSsj, @function

#! file-offset 0xeada0
#! rip-offset  0xaada0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
._ZNKSs12find_last_ofERKSsj:        #        0xaada0  0      OPC=0     
  movl %esi, %esi                   #  1     0xaada0  2      OPC=1157  
  movl %edi, %edi                   #  2     0xaada2  2      OPC=1157  
  movl %esi, %esi                   #  3     0xaada4  2      OPC=1157  
  movl (%r15,%rsi,1), %esi          #  4     0xaada6  4      OPC=1156  
  leal -0xc(%rsi), %eax             #  5     0xaadaa  3      OPC=1066  
  movl %eax, %eax                   #  6     0xaadad  2      OPC=1157  
  movl (%r15,%rax,1), %ecx          #  7     0xaadaf  4      OPC=1156  
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  8     0xaadb3  5      OPC=930   
  nop                               #  9     0xaadb8  1      OPC=1343  
  nop                               #  10    0xaadb9  1      OPC=1343  
  nop                               #  11    0xaadba  1      OPC=1343  
  nop                               #  12    0xaadbb  1      OPC=1343  
  nop                               #  13    0xaadbc  1      OPC=1343  
  nop                               #  14    0xaadbd  1      OPC=1343  
  nop                               #  15    0xaadbe  1      OPC=1343  
  nop                               #  16    0xaadbf  1      OPC=1343  
                                                                       
.size _ZNKSs12find_last_ofERKSsj, .-_ZNKSs12find_last_ofERKSsj

