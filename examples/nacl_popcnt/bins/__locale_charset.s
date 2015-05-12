  .text
  .globl __locale_charset
  .type __locale_charset, @function

#! file-offset 0x7ba20
#! rip-offset  0x7ba20
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__locale_charset:         #        0x7ba20  0      
  popq %r11                #  1     0x7ba20  3      
  movl $0x10030ac0, %eax   #  2     0x7ba23  5      
  andl $0xffffffe0, %r11d  #  3     0x7ba28  7      
  addq %r15, %r11          #  4     0x7ba2f  3      
  jmpq %r11                #  5     0x7ba32  3      
  nop                      #  6     0x7ba35  1      
                                                    
.size __locale_charset, .-__locale_charset

