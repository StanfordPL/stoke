  .text
  .globl __errno
  .type __errno, @function

#! file-offset 0x683c0
#! rip-offset  0x683c0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.__errno:                   #        0x683c0  0      
  nop                       #  1     0x683c0  1      
  nop                       #  2     0x683c1  1      
  callq .__nacl_read_tp     #  3     0x683c2  5      
  popq %r11                 #  4     0x683c7  3      
  leaq -0x480(%rax), %rax   #  5     0x683ca  7      
  movl %eax, %eax           #  6     0x683d1  2      
  movl (%r15,%rax,1), %eax  #  7     0x683d3  4      
  andl $0xffffffe0, %r11d   #  8     0x683d7  7      
  addq %r15, %r11           #  9     0x683de  3      
  jmpq %r11                 #  10    0x683e1  3      
  nop                       #  11    0x683e4  1      
  nop                       #  12    0x683e5  1      
  nop                       #  13    0x683e6  1      
  nop                       #  14    0x683e7  1      
  nop                       #  15    0x683e8  1      
  nop                       #  16    0x683e9  1      
  nop                       #  17    0x683ea  1      
                                                     
.size __errno, .-__errno

