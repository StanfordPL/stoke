  .text
  .globl _ZN2pp6Module4InitEv
  .type _ZN2pp6Module4InitEv, @function

#! file-offset 0x24320
#! rip-offset  0x24320
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
._ZN2pp6Module4InitEv:     #        0x24320  0      
  popq %r11                #  1     0x24320  3      
  movl $0x1, %eax          #  2     0x24323  5      
  andl $0xffffffe0, %r11d  #  3     0x24328  7      
  addq %r15, %r11          #  4     0x2432f  3      
  jmpq %r11                #  5     0x24332  3      
  nop                      #  6     0x24335  1      
  nop                      #  7     0x24336  1      
                                                    
.size _ZN2pp6Module4InitEv, .-_ZN2pp6Module4InitEv

