  .text
  .globl localeconv
  .type localeconv, @function

#! file-offset 0x7bac0
#! rip-offset  0x7bac0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.localeconv:               #        0x7bac0  0      
  popq %r11                #  1     0x7bac0  3      
  movl $0x10030a60, %eax   #  2     0x7bac3  5      
  andl $0xffffffe0, %r11d  #  3     0x7bac8  7      
  addq %r15, %r11          #  4     0x7bacf  3      
  jmpq %r11                #  5     0x7bad2  3      
  nop                      #  6     0x7bad5  1      
                                                    
.size localeconv, .-localeconv

