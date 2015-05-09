  .text
  .globl __locale_cjk_lang
  .type __locale_cjk_lang, @function

#! file-offset 0x7ba60
#! rip-offset  0x7ba60
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.__locale_cjk_lang:           #        0x7ba60  0      
  popq %r11                   #  1     0x7ba60  3      
  movl 0xffbb063(%rip), %eax  #  2     0x7ba63  6      
  andl $0xffffffe0, %r11d     #  3     0x7ba69  7      
  addq %r15, %r11             #  4     0x7ba70  3      
  jmpq %r11                   #  5     0x7ba73  3      
  nop                         #  6     0x7ba76  1      
                                                       
.size __locale_cjk_lang, .-__locale_cjk_lang

