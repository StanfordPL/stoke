  .text
  .globl pthread_mutexattr_destroy
  .type pthread_mutexattr_destroy, @function

#! file-offset 0x42520
#! rip-offset  0x42520
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_destroy:  #        0x42520  0      
  popq %r11                  #  1     0x42520  3      
  xorl %eax, %eax            #  2     0x42523  2      
  andl $0xffffffe0, %r11d    #  3     0x42525  7      
  addq %r15, %r11            #  4     0x4252c  3      
  jmpq %r11                  #  5     0x4252f  3      
  nop                        #  6     0x42532  1      
  nop                        #  7     0x42533  1      
                                                      
.size pthread_mutexattr_destroy, .-pthread_mutexattr_destroy

