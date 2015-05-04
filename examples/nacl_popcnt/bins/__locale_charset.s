  .text
  .globl __locale_charset
  .type __locale_charset, @function

#! file-offset 0x7baa0
#! rip-offset  0x7baa0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__locale_charset:         #        0x7baa0  0      
  popq %r11                #  1     0x7baa0  3      
  movl $0x10030ac0, %eax   #  2     0x7baa3  5      
  andl $0xffffffe0, %r11d  #  3     0x7baa8  7      
  addq %r15, %r11          #  4     0x7baaf  3      
  jmpq %r11                #  5     0x7bab2  3      
  nop                      #  6     0x7bab5  1      
                                                    
.size __locale_charset, .-__locale_charset

