  .text
  .globl __i2b
  .type __i2b, @function

#! file-offset 0x7f7e0
#! rip-offset  0x7f7e0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
.__i2b:                         #        0x7f7e0  0      
  pushq %rbx                    #  1     0x7f7e0  2      
  movl %edi, %edi               #  2     0x7f7e2  2      
  movl %esi, %ebx               #  3     0x7f7e4  2      
  movl $0x1, %esi               #  4     0x7f7e6  5      
  xchgw %ax, %ax                #  5     0x7f7eb  3      
  nop                           #  6     0x7f7ee  1      
  callq ._Balloc                #  7     0x7f7ef  5      
  movl %eax, %eax               #  8     0x7f7f4  2      
  movl %eax, %eax               #  9     0x7f7f6  2      
  movl %ebx, 0x14(%r15,%rax,1)  #  10    0x7f7f8  5      
  movl %eax, %eax               #  11    0x7f7fd  2      
  movl $0x1, 0x10(%r15,%rax,1)  #  12    0x7f7ff  9      
  popq %rbx                     #  13    0x7f808  2      
  popq %r11                     #  14    0x7f80a  3      
  nop                           #  15    0x7f80d  1      
  andl $0xffffffe0, %r11d       #  16    0x7f80e  7      
  addq %r15, %r11               #  17    0x7f815  3      
  jmpq %r11                     #  18    0x7f818  3      
  nop                           #  19    0x7f81b  1      
  nop                           #  20    0x7f81c  1      
                                                         
.size __i2b, .-__i2b

