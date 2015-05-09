  .text
  .globl _ZNKSs5rfindERKSsj
  .type _ZNKSs5rfindERKSsj, @function

#! file-offset 0x454c0
#! rip-offset  0x454c0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindERKSsj:        #        0x454c0  0      
  movl %esi, %esi           #  1     0x454c0  2      
  movl %edi, %edi           #  2     0x454c2  2      
  movl %esi, %esi           #  3     0x454c4  2      
  movl (%r15,%rsi,1), %esi  #  4     0x454c6  4      
  leal -0xc(%rsi), %eax     #  5     0x454ca  3      
  movl %eax, %eax           #  6     0x454cd  2      
  movl (%r15,%rax,1), %ecx  #  7     0x454cf  4      
  jmpq ._ZNKSs5rfindEPKcjj  #  8     0x454d3  5      
  nop                       #  9     0x454d8  1      
  nop                       #  10    0x454d9  1      
  nop                       #  11    0x454da  1      
  nop                       #  12    0x454db  1      
  nop                       #  13    0x454dc  1      
  nop                       #  14    0x454dd  1      
  nop                       #  15    0x454de  1      
  nop                       #  16    0x454df  1      
                                                     
.size _ZNKSs5rfindERKSsj, .-_ZNKSs5rfindERKSsj

