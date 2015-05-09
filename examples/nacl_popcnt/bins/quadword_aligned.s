  .text
  .globl quadword_aligned
  .type quadword_aligned, @function

#! file-offset 0x6a1af
#! rip-offset  0x6a1af
#! capacity    49 bytes

# Text                          #  Line  RIP      Bytes  
.quadword_aligned:              #        0x6a1af  0      
  movq $0x101010101010101, %r8  #  1     0x6a1af  10     
  movzbl %sil, %eax             #  2     0x6a1b9  4      
  nop                           #  3     0x6a1bd  1      
  imulq %r8, %rax               #  4     0x6a1be  4      
  cmpl $0x100, %edx             #  5     0x6a1c2  6      
  jb .quadword_set              #  6     0x6a1c8  6      
  shrl $0x7, %ecx               #  7     0x6a1ce  3      
  nop                           #  8     0x6a1d1  1      
                                                         
.size quadword_aligned, .-quadword_aligned

