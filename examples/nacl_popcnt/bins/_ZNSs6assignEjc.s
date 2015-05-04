  .text
  .globl _ZNSs6assignEjc
  .type _ZNSs6assignEjc, @function

#! file-offset 0x48840
#! rip-offset  0x48840
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSs6assignEjc:                   #        0x48840  0      
  movl %edi, %edi                   #  1     0x48840  2      
  movsbl %dl, %r8d                  #  2     0x48842  4      
  movl %esi, %ecx                   #  3     0x48846  2      
  movl %edi, %edi                   #  4     0x48848  2      
  movl (%r15,%rdi,1), %eax          #  5     0x4884a  4      
  xorl %esi, %esi                   #  6     0x4884e  2      
  subl $0xc, %eax                   #  7     0x48850  3      
  movl %eax, %eax                   #  8     0x48853  2      
  movl (%r15,%rax,1), %edx          #  9     0x48855  4      
  jmpq ._ZNSs14_M_replace_auxEjjjc  #  10    0x48859  5      
  nop                               #  11    0x4885e  1      
  nop                               #  12    0x4885f  1      
                                                             
.size _ZNSs6assignEjc, .-_ZNSs6assignEjc

