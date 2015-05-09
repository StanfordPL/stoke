  .text
  .globl __errno
  .type __errno, @function

#! file-offset 0x683a0
#! rip-offset  0x683a0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.__errno:                   #        0x683a0  0      
  nop                       #  1     0x683a0  1      
  nop                       #  2     0x683a1  1      
  callq .__nacl_read_tp     #  3     0x683a2  5      
  popq %r11                 #  4     0x683a7  3      
  leaq -0x480(%rax), %rax   #  5     0x683aa  7      
  movl %eax, %eax           #  6     0x683b1  2      
  movl (%r15,%rax,1), %eax  #  7     0x683b3  4      
  andl $0xffffffe0, %r11d   #  8     0x683b7  7      
  addq %r15, %r11           #  9     0x683be  3      
  jmpq %r11                 #  10    0x683c1  3      
  nop                       #  11    0x683c4  1      
  nop                       #  12    0x683c5  1      
  nop                       #  13    0x683c6  1      
  nop                       #  14    0x683c7  1      
  nop                       #  15    0x683c8  1      
  nop                       #  16    0x683c9  1      
  nop                       #  17    0x683ca  1      
                                                     
.size __errno, .-__errno

