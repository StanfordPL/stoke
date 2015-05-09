  .text
  .globl malloc_footprint
  .type malloc_footprint, @function

#! file-offset 0x60620
#! rip-offset  0x60620
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.malloc_footprint:            #        0x60620  0      
  popq %r11                   #  1     0x60620  3      
  movl 0xffd6447(%rip), %eax  #  2     0x60623  6      
  andl $0xffffffe0, %r11d     #  3     0x60629  7      
  addq %r15, %r11             #  4     0x60630  3      
  jmpq %r11                   #  5     0x60633  3      
  nop                         #  6     0x60636  1      
                                                       
.size malloc_footprint, .-malloc_footprint

