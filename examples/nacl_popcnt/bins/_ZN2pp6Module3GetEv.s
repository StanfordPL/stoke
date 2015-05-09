  .text
  .globl _ZN2pp6Module3GetEv
  .type _ZN2pp6Module3GetEv, @function

#! file-offset 0x269c0
#! rip-offset  0x269c0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZN2pp6Module3GetEv:          #        0x269c0  0      
  popq %r11                    #  1     0x269c0  3      
  movl 0x1000a28b(%rip), %eax  #  2     0x269c3  6      
  andl $0xffffffe0, %r11d      #  3     0x269c9  7      
  addq %r15, %r11              #  4     0x269d0  3      
  jmpq %r11                    #  5     0x269d3  3      
  nop                          #  6     0x269d6  1      
                                                        
.size _ZN2pp6Module3GetEv, .-_ZN2pp6Module3GetEv

