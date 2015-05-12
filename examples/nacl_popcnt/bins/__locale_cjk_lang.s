  .text
  .globl __locale_cjk_lang
  .type __locale_cjk_lang, @function

#! file-offset 0x7ba80
#! rip-offset  0x7ba80
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.__locale_cjk_lang:           #        0x7ba80  0      
  popq %r11                   #  1     0x7ba80  3      
  movl 0xffbb043(%rip), %eax  #  2     0x7ba83  6      
  andl $0xffffffe0, %r11d     #  3     0x7ba89  7      
  addq %r15, %r11             #  4     0x7ba90  3      
  jmpq %r11                   #  5     0x7ba93  3      
  nop                         #  6     0x7ba96  1      
                                                       
.size __locale_cjk_lang, .-__locale_cjk_lang

