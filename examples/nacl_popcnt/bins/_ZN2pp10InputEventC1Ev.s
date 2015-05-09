  .text
  .globl _ZN2pp10InputEventC1Ev
  .type _ZN2pp10InputEventC1Ev, @function

#! file-offset 0x360e0
#! rip-offset  0x360e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp10InputEventC1Ev:           #        0x360e0  0      
  pushq %rbx                       #  1     0x360e0  2      
  movl %edi, %ebx                  #  2     0x360e2  2      
  movl %ebx, %edi                  #  3     0x360e4  2      
  nop                              #  4     0x360e6  1      
  nop                              #  5     0x360e7  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x360e8  5      
  movl %ebx, %ebx                  #  7     0x360ed  2      
  movl $0x10020718, (%r15,%rbx,1)  #  8     0x360ef  8      
  popq %rbx                        #  9     0x360f7  2      
  popq %r11                        #  10    0x360f9  3      
  andl $0xffffffe0, %r11d          #  11    0x360fc  7      
  addq %r15, %r11                  #  12    0x36103  3      
  jmpq %r11                        #  13    0x36106  3      
  nop                              #  14    0x36109  1      
  nop                              #  15    0x3610a  1      
                                                            
.size _ZN2pp10InputEventC1Ev, .-_ZN2pp10InputEventC1Ev

