  .text
  .globl _ZNSs5clearEv
  .type _ZNSs5clearEv, @function

#! file-offset 0x489e0
#! rip-offset  0x489e0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
._ZNSs5clearEv:              #        0x489e0  0      
  movl %edi, %edi            #  1     0x489e0  2      
  xorl %ecx, %ecx            #  2     0x489e2  2      
  xorl %esi, %esi            #  3     0x489e4  2      
  movl %edi, %edi            #  4     0x489e6  2      
  movl (%r15,%rdi,1), %eax   #  5     0x489e8  4      
  subl $0xc, %eax            #  6     0x489ec  3      
  movl %eax, %eax            #  7     0x489ef  2      
  movl (%r15,%rax,1), %edx   #  8     0x489f1  4      
  jmpq ._ZNSs9_M_mutateEjjj  #  9     0x489f5  5      
  nop                        #  10    0x489fa  1      
  nop                        #  11    0x489fb  1      
  nop                        #  12    0x489fc  1      
  nop                        #  13    0x489fd  1      
  nop                        #  14    0x489fe  1      
  nop                        #  15    0x489ff  1      
                                                      
.size _ZNSs5clearEv, .-_ZNSs5clearEv

