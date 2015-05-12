  .text
  .globl _ZNKSs4findERKSsj
  .type _ZNKSs4findERKSsj, @function

#! file-offset 0x44dc0
#! rip-offset  0x44dc0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4findERKSsj:         #        0x44dc0  0      
  movl %esi, %esi           #  1     0x44dc0  2      
  movl %edi, %edi           #  2     0x44dc2  2      
  movl %esi, %esi           #  3     0x44dc4  2      
  movl (%r15,%rsi,1), %esi  #  4     0x44dc6  4      
  leal -0xc(%rsi), %eax     #  5     0x44dca  3      
  movl %eax, %eax           #  6     0x44dcd  2      
  movl (%r15,%rax,1), %ecx  #  7     0x44dcf  4      
  jmpq ._ZNKSs4findEPKcjj   #  8     0x44dd3  5      
  nop                       #  9     0x44dd8  1      
  nop                       #  10    0x44dd9  1      
  nop                       #  11    0x44dda  1      
  nop                       #  12    0x44ddb  1      
  nop                       #  13    0x44ddc  1      
  nop                       #  14    0x44ddd  1      
  nop                       #  15    0x44dde  1      
  nop                       #  16    0x44ddf  1      
                                                     
.size _ZNKSs4findERKSsj, .-_ZNKSs4findERKSsj

