  .text
  .globl malloc_set_footprint_limit
  .type malloc_set_footprint_limit, @function

#! file-offset 0x60680
#! rip-offset  0x60680
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.malloc_set_footprint_limit:    #        0x60680  0      
  xorl %eax, %eax               #  1     0x60680  2      
  cmpl $0xffffffff, %edi        #  2     0x60682  6      
  je .L_606a0                   #  3     0x60688  6      
  movl 0xffd6204(%rip), %edx    #  4     0x6068e  6      
  leal -0x1(%rdx,%rdi,1), %eax  #  5     0x60694  4      
  negl %edx                     #  6     0x60698  2      
  andl %edx, %eax               #  7     0x6069a  2      
  nop                           #  8     0x6069c  1      
.L_606a0:                       #        0x6069d  0      
  popq %r11                     #  9     0x6069d  3      
  movl %eax, 0xffd63d2(%rip)    #  10    0x606a0  6      
  andl $0xffffffe0, %r11d       #  11    0x606a6  7      
  addq %r15, %r11               #  12    0x606ad  3      
  jmpq %r11                     #  13    0x606b0  3      
  nop                           #  14    0x606b3  1      
                                                         
.size malloc_set_footprint_limit, .-malloc_set_footprint_limit

