  .text
  .globl _ZN2pp6Module3GetEv
  .type _ZN2pp6Module3GetEv, @function

#! file-offset 0x26a60
#! rip-offset  0x26a60
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZN2pp6Module3GetEv:          #        0x26a60  0      
  popq %r11                    #  1     0x26a60  3      
  movl 0x1000a1eb(%rip), %eax  #  2     0x26a63  6      
  andl $0xffffffe0, %r11d      #  3     0x26a69  7      
  addq %r15, %r11              #  4     0x26a70  3      
  jmpq %r11                    #  5     0x26a73  3      
  nop                          #  6     0x26a76  1      
                                                        
.size _ZN2pp6Module3GetEv, .-_ZN2pp6Module3GetEv

