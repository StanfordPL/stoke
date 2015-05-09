  .text
  .globl _ZN2pp12_GLOBAL__N_17DestroyEiPv
  .type _ZN2pp12_GLOBAL__N_17DestroyEiPv, @function

#! file-offset 0x205e0
#! rip-offset  0x205e0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_17DestroyEiPv:  #        0x205e0  0      
  movl %edi, %edx                   #  1     0x205e0  2      
  movl %esi, %edi                   #  2     0x205e2  2      
  movl %edi, %edi                   #  3     0x205e4  2      
  movl (%r15,%rdi,1), %eax          #  4     0x205e6  4      
  movl %edx, %esi                   #  5     0x205ea  2      
  movl %eax, %eax                   #  6     0x205ec  2      
  movl 0x10(%r15,%rax,1), %eax      #  7     0x205ee  5      
  andl $0xffffffe0, %eax            #  8     0x205f3  5      
  addq %r15, %rax                   #  9     0x205f8  3      
  jmpq %rax                         #  10    0x205fb  2      
  nop                               #  11    0x205fd  1      
  nop                               #  12    0x205fe  1      
                                                             
.size _ZN2pp12_GLOBAL__N_17DestroyEiPv, .-_ZN2pp12_GLOBAL__N_17DestroyEiPv

