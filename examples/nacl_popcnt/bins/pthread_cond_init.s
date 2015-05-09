  .text
  .globl pthread_cond_init
  .type pthread_cond_init, @function

#! file-offset 0x41c00
#! rip-offset  0x41c00
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
.pthread_cond_init:         #        0x41c00  0      
  popq %r11                 #  1     0x41c00  3      
  movl %edi, %edi           #  2     0x41c03  2      
  xorl %eax, %eax           #  3     0x41c05  2      
  movl %edi, %edi           #  4     0x41c07  2      
  movl $0x0, (%r15,%rdi,1)  #  5     0x41c09  8      
  andl $0xffffffe0, %r11d   #  6     0x41c11  7      
  addq %r15, %r11           #  7     0x41c18  3      
  jmpq %r11                 #  8     0x41c1b  3      
  nop                       #  9     0x41c1e  1      
                                                     
.size pthread_cond_init, .-pthread_cond_init

