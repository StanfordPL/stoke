  .text
  .globl malloc_max_footprint
  .type malloc_max_footprint, @function

#! file-offset 0x606e0
#! rip-offset  0x606e0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.malloc_max_footprint:        #        0x606e0  0      
  popq %r11                   #  1     0x606e0  3      
  movl 0xffd638b(%rip), %eax  #  2     0x606e3  6      
  andl $0xffffffe0, %r11d     #  3     0x606e9  7      
  addq %r15, %r11             #  4     0x606f0  3      
  jmpq %r11                   #  5     0x606f3  3      
  nop                         #  6     0x606f6  1      
                                                       
.size malloc_max_footprint, .-malloc_max_footprint

