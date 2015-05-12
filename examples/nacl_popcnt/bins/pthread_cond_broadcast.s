  .text
  .globl pthread_cond_broadcast
  .type pthread_cond_broadcast, @function

#! file-offset 0x41de0
#! rip-offset  0x41de0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  
.pthread_cond_broadcast:  #        0x41de0  0      
  movl %edi, %edi         #  1     0x41de0  2      
  movl $0x7fffffff, %esi  #  2     0x41de2  5      
  jmpq .pulse             #  3     0x41de7  5      
  nop                     #  4     0x41dec  1      
  nop                     #  5     0x41ded  1      
                                                   
.size pthread_cond_broadcast, .-pthread_cond_broadcast

