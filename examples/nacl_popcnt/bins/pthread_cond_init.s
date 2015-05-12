  .text
  .globl pthread_cond_init
  .type pthread_cond_init, @function

#! file-offset 0x41c20
#! rip-offset  0x41c20
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.pthread_cond_init:         #        0x41c20  0      
  popq %r11                 #  1     0x41c20  3      
  movl %edi, %edi           #  2     0x41c23  2      
  xorl %eax, %eax           #  3     0x41c25  2      
  movl %edi, %edi           #  4     0x41c27  2      
  movl $0x0, (%r15,%rdi,1)  #  5     0x41c29  8      
  andl $0xffffffe0, %r11d   #  6     0x41c31  7      
  addq %r15, %r11           #  7     0x41c38  3      
  jmpq %r11                 #  8     0x41c3b  3      
  nop                       #  9     0x41c3e  1      
                                                     
.size pthread_cond_init, .-pthread_cond_init

