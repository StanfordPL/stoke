  .text
  .globl _ZNKSs4findERKSsj
  .type _ZNKSs4findERKSsj, @function

#! file-offset 0xea860
#! rip-offset  0xaa860
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs4findERKSsj:         #        0xaa860  0      OPC=0     
  movl %esi, %esi           #  1     0xaa860  2      OPC=1157  
  movl %edi, %edi           #  2     0xaa862  2      OPC=1157  
  movl %esi, %esi           #  3     0xaa864  2      OPC=1157  
  movl (%r15,%rsi,1), %esi  #  4     0xaa866  4      OPC=1156  
  leal -0xc(%rsi), %eax     #  5     0xaa86a  3      OPC=1066  
  movl %eax, %eax           #  6     0xaa86d  2      OPC=1157  
  movl (%r15,%rax,1), %ecx  #  7     0xaa86f  4      OPC=1156  
  jmpq ._ZNKSs4findEPKcjj   #  8     0xaa873  5      OPC=930   
  nop                       #  9     0xaa878  1      OPC=1343  
  nop                       #  10    0xaa879  1      OPC=1343  
  nop                       #  11    0xaa87a  1      OPC=1343  
  nop                       #  12    0xaa87b  1      OPC=1343  
  nop                       #  13    0xaa87c  1      OPC=1343  
  nop                       #  14    0xaa87d  1      OPC=1343  
  nop                       #  15    0xaa87e  1      OPC=1343  
  nop                       #  16    0xaa87f  1      OPC=1343  
                                                               
.size _ZNKSs4findERKSsj, .-_ZNKSs4findERKSsj

