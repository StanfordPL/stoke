  .text
  .globl malloc_set_footprint_limit
  .type malloc_set_footprint_limit, @function

#! file-offset 0x606a0
#! rip-offset  0x606a0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.malloc_set_footprint_limit:    #        0x606a0  0      
  xorl %eax, %eax               #  1     0x606a0  2      
  cmpl $0xffffffff, %edi        #  2     0x606a2  6      
  je .L_606c0                   #  3     0x606a8  6      
  movl 0xffd61e4(%rip), %edx    #  4     0x606ae  6      
  leal -0x1(%rdx,%rdi,1), %eax  #  5     0x606b4  4      
  negl %edx                     #  6     0x606b8  2      
  andl %edx, %eax               #  7     0x606ba  2      
  nop                           #  8     0x606bc  1      
.L_606c0:                       #        0x606bd  0      
  popq %r11                     #  9     0x606bd  3      
  movl %eax, 0xffd63b2(%rip)    #  10    0x606c0  6      
  andl $0xffffffe0, %r11d       #  11    0x606c6  7      
  addq %r15, %r11               #  12    0x606cd  3      
  jmpq %r11                     #  13    0x606d0  3      
  nop                           #  14    0x606d3  1      
                                                         
.size malloc_set_footprint_limit, .-malloc_set_footprint_limit

