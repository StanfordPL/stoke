  .text
  .globl __seofread
  .type __seofread, @function

#! file-offset 0x80080
#! rip-offset  0x80080
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__seofread:               #        0x80080  0      
  popq %r11                #  1     0x80080  3      
  xorl %eax, %eax          #  2     0x80083  2      
  andl $0xffffffe0, %r11d  #  3     0x80085  7      
  addq %r15, %r11          #  4     0x8008c  3      
  jmpq %r11                #  5     0x8008f  3      
  nop                      #  6     0x80092  1      
  nop                      #  7     0x80093  1      
                                                    
.size __seofread, .-__seofread

