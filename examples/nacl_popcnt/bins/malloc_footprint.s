  .text
  .globl malloc_footprint
  .type malloc_footprint, @function

#! file-offset 0x606c0
#! rip-offset  0x606c0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.malloc_footprint:            #        0x606c0  0      
  popq %r11                   #  1     0x606c0  3      
  movl 0xffd63a7(%rip), %eax  #  2     0x606c3  6      
  andl $0xffffffe0, %r11d     #  3     0x606c9  7      
  addq %r15, %r11             #  4     0x606d0  3      
  jmpq %r11                   #  5     0x606d3  3      
  nop                         #  6     0x606d6  1      
                                                       
.size malloc_footprint, .-malloc_footprint

