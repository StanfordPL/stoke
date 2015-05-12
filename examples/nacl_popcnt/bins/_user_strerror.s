  .text
  .globl _user_strerror
  .type _user_strerror, @function

#! file-offset 0x711a0
#! rip-offset  0x711a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
._user_strerror:           #        0x711a0  0      
  popq %r11                #  1     0x711a0  3      
  xorl %eax, %eax          #  2     0x711a3  2      
  andl $0xffffffe0, %r11d  #  3     0x711a5  7      
  addq %r15, %r11          #  4     0x711ac  3      
  jmpq %r11                #  5     0x711af  3      
  nop                      #  6     0x711b2  1      
  nop                      #  7     0x711b3  1      
  nop                      #  8     0x711b4  1      
  nop                      #  9     0x711b5  1      
  nop                      #  10    0x711b6  1      
  nop                      #  11    0x711b7  1      
  nop                      #  12    0x711b8  1      
  nop                      #  13    0x711b9  1      
  nop                      #  14    0x711ba  1      
  nop                      #  15    0x711bb  1      
  nop                      #  16    0x711bc  1      
  nop                      #  17    0x711bd  1      
  nop                      #  18    0x711be  1      
  nop                      #  19    0x711bf  1      
  nop                      #  20    0x711c0  1      
  nop                      #  21    0x711c1  1      
  nop                      #  22    0x711c2  1      
  nop                      #  23    0x711c3  1      
                                                    
.size _user_strerror, .-_user_strerror

