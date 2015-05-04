  .text
  .globl quadword_aligned
  .type quadword_aligned, @function

#! file-offset 0x6a24f
#! rip-offset  0x6a24f
#! capacity    49 bytes

# Text                          #  Line  RIP      Bytes  
.quadword_aligned:              #        0x6a24f  0      
  movq $0x101010101010101, %r8  #  1     0x6a24f  10     
  movzbl %sil, %eax             #  2     0x6a259  4      
  nop                           #  3     0x6a25d  1      
  imulq %r8, %rax               #  4     0x6a25e  4      
  cmpl $0x100, %edx             #  5     0x6a262  6      
  jb .quadword_set              #  6     0x6a268  6      
  shrl $0x7, %ecx               #  7     0x6a26e  3      
  nop                           #  8     0x6a271  1      
                                                         
.size quadword_aligned, .-quadword_aligned

