  .text
  .globl __i2b
  .type __i2b, @function

#! file-offset 0x7f880
#! rip-offset  0x7f880
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
.__i2b:                         #        0x7f880  0      
  pushq %rbx                    #  1     0x7f880  2      
  movl %edi, %edi               #  2     0x7f882  2      
  movl %esi, %ebx               #  3     0x7f884  2      
  movl $0x1, %esi               #  4     0x7f886  5      
  xchgw %ax, %ax                #  5     0x7f88b  3      
  nop                           #  6     0x7f88e  1      
  callq ._Balloc                #  7     0x7f88f  5      
  movl %eax, %eax               #  8     0x7f894  2      
  movl %eax, %eax               #  9     0x7f896  2      
  movl %ebx, 0x14(%r15,%rax,1)  #  10    0x7f898  5      
  movl %eax, %eax               #  11    0x7f89d  2      
  movl $0x1, 0x10(%r15,%rax,1)  #  12    0x7f89f  9      
  popq %rbx                     #  13    0x7f8a8  2      
  popq %r11                     #  14    0x7f8aa  3      
  nop                           #  15    0x7f8ad  1      
  andl $0xffffffe0, %r11d       #  16    0x7f8ae  7      
  addq %r15, %r11               #  17    0x7f8b5  3      
  jmpq %r11                     #  18    0x7f8b8  3      
  nop                           #  19    0x7f8bb  1      
  nop                           #  20    0x7f8bc  1      
                                                         
.size __i2b, .-__i2b

