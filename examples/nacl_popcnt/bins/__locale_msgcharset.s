  .text
  .globl __locale_msgcharset
  .type __locale_msgcharset, @function

#! file-offset 0x7bae0
#! rip-offset  0x7bae0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__locale_msgcharset:      #        0x7bae0  0      
  popq %r11                #  1     0x7bae0  3      
  movl $0x10030aa0, %eax   #  2     0x7bae3  5      
  andl $0xffffffe0, %r11d  #  3     0x7bae8  7      
  addq %r15, %r11          #  4     0x7baef  3      
  jmpq %r11                #  5     0x7baf2  3      
  nop                      #  6     0x7baf5  1      
                                                    
.size __locale_msgcharset, .-__locale_msgcharset

