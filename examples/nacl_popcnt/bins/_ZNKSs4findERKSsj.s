  .text
  .globl _ZNKSs4findERKSsj
  .type _ZNKSs4findERKSsj, @function

#! file-offset 0x44da0
#! rip-offset  0x44da0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4findERKSsj:         #        0x44da0  0      
  movl %esi, %esi           #  1     0x44da0  2      
  movl %edi, %edi           #  2     0x44da2  2      
  movl %esi, %esi           #  3     0x44da4  2      
  movl (%r15,%rsi,1), %esi  #  4     0x44da6  4      
  leal -0xc(%rsi), %eax     #  5     0x44daa  3      
  movl %eax, %eax           #  6     0x44dad  2      
  movl (%r15,%rax,1), %ecx  #  7     0x44daf  4      
  jmpq ._ZNKSs4findEPKcjj   #  8     0x44db3  5      
  nop                       #  9     0x44db8  1      
  nop                       #  10    0x44db9  1      
  nop                       #  11    0x44dba  1      
  nop                       #  12    0x44dbb  1      
  nop                       #  13    0x44dbc  1      
  nop                       #  14    0x44dbd  1      
  nop                       #  15    0x44dbe  1      
  nop                       #  16    0x44dbf  1      
                                                     
.size _ZNKSs4findERKSsj, .-_ZNKSs4findERKSsj

