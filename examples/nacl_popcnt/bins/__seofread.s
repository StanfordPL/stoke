  .text
  .globl __seofread
  .type __seofread, @function

#! file-offset 0x7ffe0
#! rip-offset  0x7ffe0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__seofread:               #        0x7ffe0  0      
  popq %r11                #  1     0x7ffe0  3      
  xorl %eax, %eax          #  2     0x7ffe3  2      
  andl $0xffffffe0, %r11d  #  3     0x7ffe5  7      
  addq %r15, %r11          #  4     0x7ffec  3      
  jmpq %r11                #  5     0x7ffef  3      
  nop                      #  6     0x7fff2  1      
  nop                      #  7     0x7fff3  1      
                                                    
.size __seofread, .-__seofread

