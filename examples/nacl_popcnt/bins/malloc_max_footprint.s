  .text
  .globl malloc_max_footprint
  .type malloc_max_footprint, @function

#! file-offset 0x60660
#! rip-offset  0x60660
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.malloc_max_footprint:        #        0x60660  0      
  popq %r11                   #  1     0x60660  3      
  movl 0xffd640b(%rip), %eax  #  2     0x60663  6      
  andl $0xffffffe0, %r11d     #  3     0x60669  7      
  addq %r15, %r11             #  4     0x60670  3      
  jmpq %r11                   #  5     0x60673  3      
  nop                         #  6     0x60676  1      
                                                       
.size malloc_max_footprint, .-malloc_max_footprint

