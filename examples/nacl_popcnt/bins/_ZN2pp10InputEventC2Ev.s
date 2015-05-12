  .text
  .globl _ZN2pp10InputEventC2Ev
  .type _ZN2pp10InputEventC2Ev, @function

#! file-offset 0x36140
#! rip-offset  0x36140
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp10InputEventC2Ev:           #        0x36140  0      
  pushq %rbx                       #  1     0x36140  2      
  movl %edi, %ebx                  #  2     0x36142  2      
  movl %ebx, %edi                  #  3     0x36144  2      
  nop                              #  4     0x36146  1      
  nop                              #  5     0x36147  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x36148  5      
  movl %ebx, %ebx                  #  7     0x3614d  2      
  movl $0x10020718, (%r15,%rbx,1)  #  8     0x3614f  8      
  popq %rbx                        #  9     0x36157  2      
  popq %r11                        #  10    0x36159  3      
  andl $0xffffffe0, %r11d          #  11    0x3615c  7      
  addq %r15, %r11                  #  12    0x36163  3      
  jmpq %r11                        #  13    0x36166  3      
  nop                              #  14    0x36169  1      
  nop                              #  15    0x3616a  1      
                                                            
.size _ZN2pp10InputEventC2Ev, .-_ZN2pp10InputEventC2Ev

