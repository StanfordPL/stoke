  .text
  .globl _ZN2pp10InputEventD0Ev
  .type _ZN2pp10InputEventD0Ev, @function

#! file-offset 0x36100
#! rip-offset  0x36100
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp10InputEventD0Ev:           #        0x36100  0      
  pushq %rbx                       #  1     0x36100  2      
  movl %edi, %ebx                  #  2     0x36102  2      
  movl %ebx, %edi                  #  3     0x36104  2      
  movl %ebx, %ebx                  #  4     0x36106  2      
  movl $0x10020718, (%r15,%rbx,1)  #  5     0x36108  8      
  nop                              #  6     0x36110  1      
  callq ._ZN2pp8ResourceD2Ev       #  7     0x36111  5      
  movl %ebx, %edi                  #  8     0x36116  2      
  popq %rbx                        #  9     0x36118  2      
  jmpq ._ZdlPv                     #  10    0x3611a  5      
  nop                              #  11    0x3611f  1      
  nop                              #  12    0x36120  1      
                                                            
.size _ZN2pp10InputEventD0Ev, .-_ZN2pp10InputEventD0Ev

