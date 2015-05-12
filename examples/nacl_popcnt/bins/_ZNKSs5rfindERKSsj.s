  .text
  .globl _ZNKSs5rfindERKSsj
  .type _ZNKSs5rfindERKSsj, @function

#! file-offset 0x454e0
#! rip-offset  0x454e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindERKSsj:        #        0x454e0  0      
  movl %esi, %esi           #  1     0x454e0  2      
  movl %edi, %edi           #  2     0x454e2  2      
  movl %esi, %esi           #  3     0x454e4  2      
  movl (%r15,%rsi,1), %esi  #  4     0x454e6  4      
  leal -0xc(%rsi), %eax     #  5     0x454ea  3      
  movl %eax, %eax           #  6     0x454ed  2      
  movl (%r15,%rax,1), %ecx  #  7     0x454ef  4      
  jmpq ._ZNKSs5rfindEPKcjj  #  8     0x454f3  5      
  nop                       #  9     0x454f8  1      
  nop                       #  10    0x454f9  1      
  nop                       #  11    0x454fa  1      
  nop                       #  12    0x454fb  1      
  nop                       #  13    0x454fc  1      
  nop                       #  14    0x454fd  1      
  nop                       #  15    0x454fe  1      
  nop                       #  16    0x454ff  1      
                                                     
.size _ZNKSs5rfindERKSsj, .-_ZNKSs5rfindERKSsj

