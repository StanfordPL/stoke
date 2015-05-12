  .text
  .globl pthread_mutexattr_init
  .type pthread_mutexattr_init, @function

#! file-offset 0x42480
#! rip-offset  0x42480
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.pthread_mutexattr_init:    #        0x42480  0      
  popq %r11                 #  1     0x42480  3      
  movl %edi, %edi           #  2     0x42483  2      
  xorl %eax, %eax           #  3     0x42485  2      
  movl %edi, %edi           #  4     0x42487  2      
  movl $0x0, (%r15,%rdi,1)  #  5     0x42489  8      
  andl $0xffffffe0, %r11d   #  6     0x42491  7      
  addq %r15, %r11           #  7     0x42498  3      
  jmpq %r11                 #  8     0x4249b  3      
  nop                       #  9     0x4249e  1      
                                                     
.size pthread_mutexattr_init, .-pthread_mutexattr_init

