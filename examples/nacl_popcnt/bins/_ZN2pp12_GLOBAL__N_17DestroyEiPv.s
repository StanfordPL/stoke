  .text
  .globl _ZN2pp12_GLOBAL__N_17DestroyEiPv
  .type _ZN2pp12_GLOBAL__N_17DestroyEiPv, @function

#! file-offset 0x20680
#! rip-offset  0x20680
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_17DestroyEiPv:  #        0x20680  0      
  movl %edi, %edx                   #  1     0x20680  2      
  movl %esi, %edi                   #  2     0x20682  2      
  movl %edi, %edi                   #  3     0x20684  2      
  movl (%r15,%rdi,1), %eax          #  4     0x20686  4      
  movl %edx, %esi                   #  5     0x2068a  2      
  movl %eax, %eax                   #  6     0x2068c  2      
  movl 0x10(%r15,%rax,1), %eax      #  7     0x2068e  5      
  andl $0xffffffe0, %eax            #  8     0x20693  5      
  addq %r15, %rax                   #  9     0x20698  3      
  jmpq %rax                         #  10    0x2069b  2      
  nop                               #  11    0x2069d  1      
  nop                               #  12    0x2069e  1      
                                                             
.size _ZN2pp12_GLOBAL__N_17DestroyEiPv, .-_ZN2pp12_GLOBAL__N_17DestroyEiPv

