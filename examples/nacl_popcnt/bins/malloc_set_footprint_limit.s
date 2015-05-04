  .text
  .globl malloc_set_footprint_limit
  .type malloc_set_footprint_limit, @function

#! file-offset 0x60720
#! rip-offset  0x60720
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.malloc_set_footprint_limit:    #        0x60720  0      
  xorl %eax, %eax               #  1     0x60720  2      
  cmpl $0xffffffff, %edi        #  2     0x60722  6      
  je .L_60740                   #  3     0x60728  6      
  movl 0xffd6164(%rip), %edx    #  4     0x6072e  6      
  leal -0x1(%rdx,%rdi,1), %eax  #  5     0x60734  4      
  negl %edx                     #  6     0x60738  2      
  andl %edx, %eax               #  7     0x6073a  2      
  nop                           #  8     0x6073c  1      
.L_60740:                       #        0x6073d  0      
  popq %r11                     #  9     0x6073d  3      
  movl %eax, 0xffd6332(%rip)    #  10    0x60740  6      
  andl $0xffffffe0, %r11d       #  11    0x60746  7      
  addq %r15, %r11               #  12    0x6074d  3      
  jmpq %r11                     #  13    0x60750  3      
  nop                           #  14    0x60753  1      
                                                         
.size malloc_set_footprint_limit, .-malloc_set_footprint_limit

