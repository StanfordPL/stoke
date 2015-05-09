  .text
  .globl _user_strerror
  .type _user_strerror, @function

#! file-offset 0x71180
#! rip-offset  0x71180
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
._user_strerror:           #        0x71180  0      
  popq %r11                #  1     0x71180  3      
  xorl %eax, %eax          #  2     0x71183  2      
  andl $0xffffffe0, %r11d  #  3     0x71185  7      
  addq %r15, %r11          #  4     0x7118c  3      
  jmpq %r11                #  5     0x7118f  3      
  nop                      #  6     0x71192  1      
  nop                      #  7     0x71193  1      
  nop                      #  8     0x71194  1      
  nop                      #  9     0x71195  1      
  nop                      #  10    0x71196  1      
  nop                      #  11    0x71197  1      
  nop                      #  12    0x71198  1      
  nop                      #  13    0x71199  1      
  nop                      #  14    0x7119a  1      
  nop                      #  15    0x7119b  1      
  nop                      #  16    0x7119c  1      
  nop                      #  17    0x7119d  1      
  nop                      #  18    0x7119e  1      
  nop                      #  19    0x7119f  1      
  nop                      #  20    0x711a0  1      
  nop                      #  21    0x711a1  1      
  nop                      #  22    0x711a2  1      
  nop                      #  23    0x711a3  1      
                                                    
.size _user_strerror, .-_user_strerror

