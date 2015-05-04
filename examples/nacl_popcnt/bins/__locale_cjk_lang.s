  .text
  .globl __locale_cjk_lang
  .type __locale_cjk_lang, @function

#! file-offset 0x7bb00
#! rip-offset  0x7bb00
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.__locale_cjk_lang:           #        0x7bb00  0      
  popq %r11                   #  1     0x7bb00  3      
  movl 0xffbafc3(%rip), %eax  #  2     0x7bb03  6      
  andl $0xffffffe0, %r11d     #  3     0x7bb09  7      
  addq %r15, %r11             #  4     0x7bb10  3      
  jmpq %r11                   #  5     0x7bb13  3      
  nop                         #  6     0x7bb16  1      
                                                       
.size __locale_cjk_lang, .-__locale_cjk_lang

