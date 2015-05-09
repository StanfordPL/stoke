  .text
  .globl _ZN2pp4ViewC2Ev
  .type _ZN2pp4ViewC2Ev, @function

#! file-offset 0x2d860
#! rip-offset  0x2d860
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC2Ev:                  #        0x2d860  0      
  pushq %rbx                       #  1     0x2d860  2      
  movl %edi, %ebx                  #  2     0x2d862  2      
  movl %ebx, %edi                  #  3     0x2d864  2      
  nop                              #  4     0x2d866  1      
  nop                              #  5     0x2d867  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x2d868  5      
  movl %ebx, %ebx                  #  7     0x2d86d  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d86f  8      
  popq %rbx                        #  9     0x2d877  2      
  popq %r11                        #  10    0x2d879  3      
  andl $0xffffffe0, %r11d          #  11    0x2d87c  7      
  addq %r15, %r11                  #  12    0x2d883  3      
  jmpq %r11                        #  13    0x2d886  3      
  nop                              #  14    0x2d889  1      
  nop                              #  15    0x2d88a  1      
                                                            
.size _ZN2pp4ViewC2Ev, .-_ZN2pp4ViewC2Ev

