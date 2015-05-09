  .text
  .globl pthread_equal
  .type pthread_equal, @function

#! file-offset 0x3fc60
#! rip-offset  0x3fc60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_equal:            #        0x3fc60  0      
  popq %r11                #  1     0x3fc60  3      
  xorl %eax, %eax          #  2     0x3fc63  2      
  cmpl %edi, %esi          #  3     0x3fc65  2      
  sete %al                 #  4     0x3fc67  3      
  andl $0xffffffe0, %r11d  #  5     0x3fc6a  7      
  addq %r15, %r11          #  6     0x3fc71  3      
  jmpq %r11                #  7     0x3fc74  3      
  nop                      #  8     0x3fc77  1      
                                                    
.size pthread_equal, .-pthread_equal

