  .text
  .globl _ZNKSs4dataEv
  .type _ZNKSs4dataEv, @function

#! file-offset 0x446a0
#! rip-offset  0x446a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4dataEv:             #        0x446a0  0      
  popq %r11                 #  1     0x446a0  3      
  movl %edi, %edi           #  2     0x446a3  2      
  movl %edi, %edi           #  3     0x446a5  2      
  movl (%r15,%rdi,1), %eax  #  4     0x446a7  4      
  andl $0xffffffe0, %r11d   #  5     0x446ab  7      
  addq %r15, %r11           #  6     0x446b2  3      
  jmpq %r11                 #  7     0x446b5  3      
  nop                       #  8     0x446b8  1      
  nop                       #  9     0x446b9  1      
  nop                       #  10    0x446ba  1      
  nop                       #  11    0x446bb  1      
  nop                       #  12    0x446bc  1      
  nop                       #  13    0x446bd  1      
  nop                       #  14    0x446be  1      
  nop                       #  15    0x446bf  1      
  nop                       #  16    0x446c0  1      
  nop                       #  17    0x446c1  1      
  nop                       #  18    0x446c2  1      
  nop                       #  19    0x446c3  1      
                                                     
.size _ZNKSs4dataEv, .-_ZNKSs4dataEv

