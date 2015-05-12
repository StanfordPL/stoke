  .text
  .globl _ZN2pp6Module4InitEv
  .type _ZN2pp6Module4InitEv, @function

#! file-offset 0x242a0
#! rip-offset  0x242a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
._ZN2pp6Module4InitEv:     #        0x242a0  0      
  popq %r11                #  1     0x242a0  3      
  movl $0x1, %eax          #  2     0x242a3  5      
  andl $0xffffffe0, %r11d  #  3     0x242a8  7      
  addq %r15, %r11          #  4     0x242af  3      
  jmpq %r11                #  5     0x242b2  3      
  nop                      #  6     0x242b5  1      
  nop                      #  7     0x242b6  1      
                                                    
.size _ZN2pp6Module4InitEv, .-_ZN2pp6Module4InitEv

