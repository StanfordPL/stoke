  .text
  .globl _ZN2pp10InputEventC1Ev
  .type _ZN2pp10InputEventC1Ev, @function

#! file-offset 0x36100
#! rip-offset  0x36100
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp10InputEventC1Ev:           #        0x36100  0      
  pushq %rbx                       #  1     0x36100  2      
  movl %edi, %ebx                  #  2     0x36102  2      
  movl %ebx, %edi                  #  3     0x36104  2      
  nop                              #  4     0x36106  1      
  nop                              #  5     0x36107  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x36108  5      
  movl %ebx, %ebx                  #  7     0x3610d  2      
  movl $0x10020718, (%r15,%rbx,1)  #  8     0x3610f  8      
  popq %rbx                        #  9     0x36117  2      
  popq %r11                        #  10    0x36119  3      
  andl $0xffffffe0, %r11d          #  11    0x3611c  7      
  addq %r15, %r11                  #  12    0x36123  3      
  jmpq %r11                        #  13    0x36126  3      
  nop                              #  14    0x36129  1      
  nop                              #  15    0x3612a  1      
                                                            
.size _ZN2pp10InputEventC1Ev, .-_ZN2pp10InputEventC1Ev

