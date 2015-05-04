  .text
  .globl _ZNSs5clearEv
  .type _ZNSs5clearEv, @function

#! file-offset 0x48a60
#! rip-offset  0x48a60
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
._ZNSs5clearEv:              #        0x48a60  0      
  movl %edi, %edi            #  1     0x48a60  2      
  xorl %ecx, %ecx            #  2     0x48a62  2      
  xorl %esi, %esi            #  3     0x48a64  2      
  movl %edi, %edi            #  4     0x48a66  2      
  movl (%r15,%rdi,1), %eax   #  5     0x48a68  4      
  subl $0xc, %eax            #  6     0x48a6c  3      
  movl %eax, %eax            #  7     0x48a6f  2      
  movl (%r15,%rax,1), %edx   #  8     0x48a71  4      
  jmpq ._ZNSs9_M_mutateEjjj  #  9     0x48a75  5      
  nop                        #  10    0x48a7a  1      
  nop                        #  11    0x48a7b  1      
  nop                        #  12    0x48a7c  1      
  nop                        #  13    0x48a7d  1      
  nop                        #  14    0x48a7e  1      
  nop                        #  15    0x48a7f  1      
                                                      
.size _ZNSs5clearEv, .-_ZNSs5clearEv

