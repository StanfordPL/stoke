  .text
  .globl malloc_max_footprint
  .type malloc_max_footprint, @function

#! file-offset 0x60640
#! rip-offset  0x60640
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.malloc_max_footprint:        #        0x60640  0      
  popq %r11                   #  1     0x60640  3      
  movl 0xffd642b(%rip), %eax  #  2     0x60643  6      
  andl $0xffffffe0, %r11d     #  3     0x60649  7      
  addq %r15, %r11             #  4     0x60650  3      
  jmpq %r11                   #  5     0x60653  3      
  nop                         #  6     0x60656  1      
                                                       
.size malloc_max_footprint, .-malloc_max_footprint

