  .text
  .globl _ZN2pp4ViewC2Ev
  .type _ZN2pp4ViewC2Ev, @function

#! file-offset 0x2d900
#! rip-offset  0x2d900
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC2Ev:                  #        0x2d900  0      
  pushq %rbx                       #  1     0x2d900  2      
  movl %edi, %ebx                  #  2     0x2d902  2      
  movl %ebx, %edi                  #  3     0x2d904  2      
  nop                              #  4     0x2d906  1      
  nop                              #  5     0x2d907  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x2d908  5      
  movl %ebx, %ebx                  #  7     0x2d90d  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d90f  8      
  popq %rbx                        #  9     0x2d917  2      
  popq %r11                        #  10    0x2d919  3      
  andl $0xffffffe0, %r11d          #  11    0x2d91c  7      
  addq %r15, %r11                  #  12    0x2d923  3      
  jmpq %r11                        #  13    0x2d926  3      
  nop                              #  14    0x2d929  1      
  nop                              #  15    0x2d92a  1      
                                                            
.size _ZN2pp4ViewC2Ev, .-_ZN2pp4ViewC2Ev

