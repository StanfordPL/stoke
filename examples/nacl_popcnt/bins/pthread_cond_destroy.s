  .text
  .globl pthread_cond_destroy
  .type pthread_cond_destroy, @function

#! file-offset 0x41cc0
#! rip-offset  0x41cc0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_cond_destroy:     #        0x41cc0  0      
  popq %r11                #  1     0x41cc0  3      
  xorl %eax, %eax          #  2     0x41cc3  2      
  andl $0xffffffe0, %r11d  #  3     0x41cc5  7      
  addq %r15, %r11          #  4     0x41ccc  3      
  jmpq %r11                #  5     0x41ccf  3      
  nop                      #  6     0x41cd2  1      
  nop                      #  7     0x41cd3  1      
                                                    
.size pthread_cond_destroy, .-pthread_cond_destroy

