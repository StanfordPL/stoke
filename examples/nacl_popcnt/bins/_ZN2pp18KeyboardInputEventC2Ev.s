  .text
  .globl _ZN2pp18KeyboardInputEventC2Ev
  .type _ZN2pp18KeyboardInputEventC2Ev, @function

#! file-offset 0x362a0
#! rip-offset  0x362a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp18KeyboardInputEventC2Ev:   #        0x362a0  0      
  pushq %rbx                       #  1     0x362a0  2      
  movl %edi, %ebx                  #  2     0x362a2  2      
  movl %ebx, %edi                  #  3     0x362a4  2      
  nop                              #  4     0x362a6  1      
  nop                              #  5     0x362a7  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x362a8  5      
  movl %ebx, %ebx                  #  7     0x362ad  2      
  movl $0x100207c8, (%r15,%rbx,1)  #  8     0x362af  8      
  popq %rbx                        #  9     0x362b7  2      
  popq %r11                        #  10    0x362b9  3      
  andl $0xffffffe0, %r11d          #  11    0x362bc  7      
  addq %r15, %r11                  #  12    0x362c3  3      
  jmpq %r11                        #  13    0x362c6  3      
  nop                              #  14    0x362c9  1      
  nop                              #  15    0x362ca  1      
                                                            
.size _ZN2pp18KeyboardInputEventC2Ev, .-_ZN2pp18KeyboardInputEventC2Ev

