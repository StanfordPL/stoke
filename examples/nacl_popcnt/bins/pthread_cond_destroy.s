  .text
  .globl pthread_cond_destroy
  .type pthread_cond_destroy, @function

#! file-offset 0x41c20
#! rip-offset  0x41c20
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_cond_destroy:     #        0x41c20  0      
  popq %r11                #  1     0x41c20  3      
  xorl %eax, %eax          #  2     0x41c23  2      
  andl $0xffffffe0, %r11d  #  3     0x41c25  7      
  addq %r15, %r11          #  4     0x41c2c  3      
  jmpq %r11                #  5     0x41c2f  3      
  nop                      #  6     0x41c32  1      
  nop                      #  7     0x41c33  1      
                                                    
.size pthread_cond_destroy, .-pthread_cond_destroy

