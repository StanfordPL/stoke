  .text
  .globl pthread_mutexattr_destroy
  .type pthread_mutexattr_destroy, @function

#! file-offset 0x42480
#! rip-offset  0x42480
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_destroy:  #        0x42480  0      
  popq %r11                  #  1     0x42480  3      
  xorl %eax, %eax            #  2     0x42483  2      
  andl $0xffffffe0, %r11d    #  3     0x42485  7      
  addq %r15, %r11            #  4     0x4248c  3      
  jmpq %r11                  #  5     0x4248f  3      
  nop                        #  6     0x42492  1      
  nop                        #  7     0x42493  1      
                                                      
.size pthread_mutexattr_destroy, .-pthread_mutexattr_destroy

