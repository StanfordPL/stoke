  .text
  .globl pthread_mutexattr_destroy
  .type pthread_mutexattr_destroy, @function

#! file-offset 0x424a0
#! rip-offset  0x424a0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  
.pthread_mutexattr_destroy:  #        0x424a0  0      
  popq %r11                  #  1     0x424a0  3      
  xorl %eax, %eax            #  2     0x424a3  2      
  andl $0xffffffe0, %r11d    #  3     0x424a5  7      
  addq %r15, %r11            #  4     0x424ac  3      
  jmpq %r11                  #  5     0x424af  3      
  nop                        #  6     0x424b2  1      
  nop                        #  7     0x424b3  1      
                                                      
.size pthread_mutexattr_destroy, .-pthread_mutexattr_destroy

