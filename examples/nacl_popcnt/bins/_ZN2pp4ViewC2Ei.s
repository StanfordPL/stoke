  .text
  .globl _ZN2pp4ViewC2Ei
  .type _ZN2pp4ViewC2Ei, @function

#! file-offset 0x2d800
#! rip-offset  0x2d800
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC2Ei:                  #        0x2d800  0      
  pushq %rbx                       #  1     0x2d800  2      
  movl %edi, %ebx                  #  2     0x2d802  2      
  movl %ebx, %edi                  #  3     0x2d804  2      
  nop                              #  4     0x2d806  1      
  nop                              #  5     0x2d807  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x2d808  5      
  movl %ebx, %ebx                  #  7     0x2d80d  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d80f  8      
  popq %rbx                        #  9     0x2d817  2      
  popq %r11                        #  10    0x2d819  3      
  andl $0xffffffe0, %r11d          #  11    0x2d81c  7      
  addq %r15, %r11                  #  12    0x2d823  3      
  jmpq %r11                        #  13    0x2d826  3      
  nop                              #  14    0x2d829  1      
  nop                              #  15    0x2d82a  1      
                                                            
.size _ZN2pp4ViewC2Ei, .-_ZN2pp4ViewC2Ei

