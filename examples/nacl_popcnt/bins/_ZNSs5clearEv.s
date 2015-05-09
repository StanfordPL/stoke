  .text
  .globl _ZNSs5clearEv
  .type _ZNSs5clearEv, @function

#! file-offset 0x489c0
#! rip-offset  0x489c0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
._ZNSs5clearEv:              #        0x489c0  0      
  movl %edi, %edi            #  1     0x489c0  2      
  xorl %ecx, %ecx            #  2     0x489c2  2      
  xorl %esi, %esi            #  3     0x489c4  2      
  movl %edi, %edi            #  4     0x489c6  2      
  movl (%r15,%rdi,1), %eax   #  5     0x489c8  4      
  subl $0xc, %eax            #  6     0x489cc  3      
  movl %eax, %eax            #  7     0x489cf  2      
  movl (%r15,%rax,1), %edx   #  8     0x489d1  4      
  jmpq ._ZNSs9_M_mutateEjjj  #  9     0x489d5  5      
  nop                        #  10    0x489da  1      
  nop                        #  11    0x489db  1      
  nop                        #  12    0x489dc  1      
  nop                        #  13    0x489dd  1      
  nop                        #  14    0x489de  1      
  nop                        #  15    0x489df  1      
                                                      
.size _ZNSs5clearEv, .-_ZNSs5clearEv

