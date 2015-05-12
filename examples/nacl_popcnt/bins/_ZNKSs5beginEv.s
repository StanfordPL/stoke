  .text
  .globl _ZNKSs5beginEv
  .type _ZNKSs5beginEv, @function

#! file-offset 0x44400
#! rip-offset  0x44400
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5beginEv:            #        0x44400  0      
  popq %r11                 #  1     0x44400  3      
  movl %edi, %edi           #  2     0x44403  2      
  movl %edi, %edi           #  3     0x44405  2      
  movl (%r15,%rdi,1), %eax  #  4     0x44407  4      
  andl $0xffffffe0, %r11d   #  5     0x4440b  7      
  addq %r15, %r11           #  6     0x44412  3      
  jmpq %r11                 #  7     0x44415  3      
  nop                       #  8     0x44418  1      
  nop                       #  9     0x44419  1      
  nop                       #  10    0x4441a  1      
  nop                       #  11    0x4441b  1      
  nop                       #  12    0x4441c  1      
  nop                       #  13    0x4441d  1      
  nop                       #  14    0x4441e  1      
  nop                       #  15    0x4441f  1      
  nop                       #  16    0x44420  1      
  nop                       #  17    0x44421  1      
  nop                       #  18    0x44422  1      
  nop                       #  19    0x44423  1      
                                                     
.size _ZNKSs5beginEv, .-_ZNKSs5beginEv

