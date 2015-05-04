  .text
  .globl _ZN2pp15TouchInputEventC1Ev
  .type _ZN2pp15TouchInputEventC1Ev, @function

#! file-offset 0x36280
#! rip-offset  0x36280
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1Ev:      #        0x36280  0      
  pushq %rbx                       #  1     0x36280  2      
  movl %edi, %ebx                  #  2     0x36282  2      
  movl %ebx, %edi                  #  3     0x36284  2      
  nop                              #  4     0x36286  1      
  nop                              #  5     0x36287  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36288  5      
  movl %ebx, %ebx                  #  7     0x3628d  2      
  movl $0x10020788, (%r15,%rbx,1)  #  8     0x3628f  8      
  popq %rbx                        #  9     0x36297  2      
  popq %r11                        #  10    0x36299  3      
  andl $0xffffffe0, %r11d          #  11    0x3629c  7      
  addq %r15, %r11                  #  12    0x362a3  3      
  jmpq %r11                        #  13    0x362a6  3      
  nop                              #  14    0x362a9  1      
  nop                              #  15    0x362aa  1      
                                                            
.size _ZN2pp15TouchInputEventC1Ev, .-_ZN2pp15TouchInputEventC1Ev

