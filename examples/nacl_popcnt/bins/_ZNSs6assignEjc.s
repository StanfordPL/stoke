  .text
  .globl _ZNSs6assignEjc
  .type _ZNSs6assignEjc, @function

#! file-offset 0x487c0
#! rip-offset  0x487c0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
._ZNSs6assignEjc:                   #        0x487c0  0      
  movl %edi, %edi                   #  1     0x487c0  2      
  movsbl %dl, %r8d                  #  2     0x487c2  4      
  movl %esi, %ecx                   #  3     0x487c6  2      
  movl %edi, %edi                   #  4     0x487c8  2      
  movl (%r15,%rdi,1), %eax          #  5     0x487ca  4      
  xorl %esi, %esi                   #  6     0x487ce  2      
  subl $0xc, %eax                   #  7     0x487d0  3      
  movl %eax, %eax                   #  8     0x487d3  2      
  movl (%r15,%rax,1), %edx          #  9     0x487d5  4      
  jmpq ._ZNSs14_M_replace_auxEjjjc  #  10    0x487d9  5      
  nop                               #  11    0x487de  1      
  nop                               #  12    0x487df  1      
                                                             
.size _ZNSs6assignEjc, .-_ZNSs6assignEjc

