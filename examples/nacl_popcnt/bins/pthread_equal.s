  .text
  .globl pthread_equal
  .type pthread_equal, @function

#! file-offset 0x3fc80
#! rip-offset  0x3fc80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_equal:            #        0x3fc80  0      
  popq %r11                #  1     0x3fc80  3      
  xorl %eax, %eax          #  2     0x3fc83  2      
  cmpl %edi, %esi          #  3     0x3fc85  2      
  sete %al                 #  4     0x3fc87  3      
  andl $0xffffffe0, %r11d  #  5     0x3fc8a  7      
  addq %r15, %r11          #  6     0x3fc91  3      
  jmpq %r11                #  7     0x3fc94  3      
  nop                      #  8     0x3fc97  1      
                                                    
.size pthread_equal, .-pthread_equal

