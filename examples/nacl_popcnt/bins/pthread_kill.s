  .text
  .globl pthread_kill
  .type pthread_kill, @function

#! file-offset 0x3fc40
#! rip-offset  0x3fc40
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_kill:             #        0x3fc40  0      
  popq %r11                #  1     0x3fc40  3      
  movl $0x26, %eax         #  2     0x3fc43  5      
  andl $0xffffffe0, %r11d  #  3     0x3fc48  7      
  addq %r15, %r11          #  4     0x3fc4f  3      
  jmpq %r11                #  5     0x3fc52  3      
  nop                      #  6     0x3fc55  1      
                                                    
.size pthread_kill, .-pthread_kill

