  .text
  .globl _ZNSs6assignEjc
  .type _ZNSs6assignEjc, @function

#! file-offset 0xee260
#! rip-offset  0xae260
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
._ZNSs6assignEjc:                   #        0xae260  0      OPC=0     
  movl %edi, %edi                   #  1     0xae260  2      OPC=1157  
  movsbl %dl, %r8d                  #  2     0xae262  4      OPC=1282  
  movl %esi, %ecx                   #  3     0xae266  2      OPC=1157  
  movl %edi, %edi                   #  4     0xae268  2      OPC=1157  
  movl (%r15,%rdi,1), %eax          #  5     0xae26a  4      OPC=1156  
  xorl %esi, %esi                   #  6     0xae26e  2      OPC=3758  
  subl $0xc, %eax                   #  7     0xae270  3      OPC=2384  
  movl %eax, %eax                   #  8     0xae273  2      OPC=1157  
  movl (%r15,%rax,1), %edx          #  9     0xae275  4      OPC=1156  
  jmpq ._ZNSs14_M_replace_auxEjjjc  #  10    0xae279  5      OPC=930   
  nop                               #  11    0xae27e  1      OPC=1343  
  nop                               #  12    0xae27f  1      OPC=1343  
                                                                       
.size _ZNSs6assignEjc, .-_ZNSs6assignEjc

