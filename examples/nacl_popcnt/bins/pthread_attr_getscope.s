  .text
  .globl pthread_attr_getscope
  .type pthread_attr_getscope, @function

#! file-offset 0x3fdc0
#! rip-offset  0x3fdc0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.pthread_attr_getscope:     #        0x3fdc0  0      
  popq %r11                 #  1     0x3fdc0  3      
  movl %esi, %esi           #  2     0x3fdc3  2      
  xorl %eax, %eax           #  3     0x3fdc5  2      
  movl %esi, %esi           #  4     0x3fdc7  2      
  movl $0x1, (%r15,%rsi,1)  #  5     0x3fdc9  8      
  andl $0xffffffe0, %r11d   #  6     0x3fdd1  7      
  addq %r15, %r11           #  7     0x3fdd8  3      
  jmpq %r11                 #  8     0x3fddb  3      
  nop                       #  9     0x3fdde  1      
                                                     
.size pthread_attr_getscope, .-pthread_attr_getscope

