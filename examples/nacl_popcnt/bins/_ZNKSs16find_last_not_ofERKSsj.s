  .text
  .globl _ZNKSs16find_last_not_ofERKSsj
  .type _ZNKSs16find_last_not_ofERKSsj, @function

#! file-offset 0x450c0
#! rip-offset  0x450c0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofERKSsj:        #        0x450c0  0      
  movl %esi, %esi                       #  1     0x450c0  2      
  movl %edi, %edi                       #  2     0x450c2  2      
  movl %esi, %esi                       #  3     0x450c4  2      
  movl (%r15,%rsi,1), %esi              #  4     0x450c6  4      
  leal -0xc(%rsi), %eax                 #  5     0x450ca  3      
  movl %eax, %eax                       #  6     0x450cd  2      
  movl (%r15,%rax,1), %ecx              #  7     0x450cf  4      
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  8     0x450d3  5      
  nop                                   #  9     0x450d8  1      
  nop                                   #  10    0x450d9  1      
  nop                                   #  11    0x450da  1      
  nop                                   #  12    0x450db  1      
  nop                                   #  13    0x450dc  1      
  nop                                   #  14    0x450dd  1      
  nop                                   #  15    0x450de  1      
  nop                                   #  16    0x450df  1      
                                                                 
.size _ZNKSs16find_last_not_ofERKSsj, .-_ZNKSs16find_last_not_ofERKSsj

