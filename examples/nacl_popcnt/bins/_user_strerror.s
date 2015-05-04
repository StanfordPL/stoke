  .text
  .globl _user_strerror
  .type _user_strerror, @function

#! file-offset 0x71220
#! rip-offset  0x71220
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
._user_strerror:           #        0x71220  0      
  popq %r11                #  1     0x71220  3      
  xorl %eax, %eax          #  2     0x71223  2      
  andl $0xffffffe0, %r11d  #  3     0x71225  7      
  addq %r15, %r11          #  4     0x7122c  3      
  jmpq %r11                #  5     0x7122f  3      
  nop                      #  6     0x71232  1      
  nop                      #  7     0x71233  1      
  nop                      #  8     0x71234  1      
  nop                      #  9     0x71235  1      
  nop                      #  10    0x71236  1      
  nop                      #  11    0x71237  1      
  nop                      #  12    0x71238  1      
  nop                      #  13    0x71239  1      
  nop                      #  14    0x7123a  1      
  nop                      #  15    0x7123b  1      
  nop                      #  16    0x7123c  1      
  nop                      #  17    0x7123d  1      
  nop                      #  18    0x7123e  1      
  nop                      #  19    0x7123f  1      
  nop                      #  20    0x71240  1      
  nop                      #  21    0x71241  1      
  nop                      #  22    0x71242  1      
  nop                      #  23    0x71243  1      
                                                    
.size _user_strerror, .-_user_strerror

