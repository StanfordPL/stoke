  .text
  .globl pthread_attr_getscope
  .type pthread_attr_getscope, @function

#! file-offset 0x3fe60
#! rip-offset  0x3fe60
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.pthread_attr_getscope:     #        0x3fe60  0      
  popq %r11                 #  1     0x3fe60  3      
  movl %esi, %esi           #  2     0x3fe63  2      
  xorl %eax, %eax           #  3     0x3fe65  2      
  movl %esi, %esi           #  4     0x3fe67  2      
  movl $0x1, (%r15,%rsi,1)  #  5     0x3fe69  8      
  andl $0xffffffe0, %r11d   #  6     0x3fe71  7      
  addq %r15, %r11           #  7     0x3fe78  3      
  jmpq %r11                 #  8     0x3fe7b  3      
  nop                       #  9     0x3fe7e  1      
                                                     
.size pthread_attr_getscope, .-pthread_attr_getscope

