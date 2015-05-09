  .text
  .globl _ZN2pp15MouseInputEventC2Ev
  .type _ZN2pp15MouseInputEventC2Ev, @function

#! file-offset 0x363a0
#! rip-offset  0x363a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC2Ev:      #        0x363a0  0      
  pushq %rbx                       #  1     0x363a0  2      
  movl %edi, %ebx                  #  2     0x363a2  2      
  movl %ebx, %edi                  #  3     0x363a4  2      
  nop                              #  4     0x363a6  1      
  nop                              #  5     0x363a7  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x363a8  5      
  movl %ebx, %ebx                  #  7     0x363ad  2      
  movl $0x10020848, (%r15,%rbx,1)  #  8     0x363af  8      
  popq %rbx                        #  9     0x363b7  2      
  popq %r11                        #  10    0x363b9  3      
  andl $0xffffffe0, %r11d          #  11    0x363bc  7      
  addq %r15, %r11                  #  12    0x363c3  3      
  jmpq %r11                        #  13    0x363c6  3      
  nop                              #  14    0x363c9  1      
  nop                              #  15    0x363ca  1      
                                                            
.size _ZN2pp15MouseInputEventC2Ev, .-_ZN2pp15MouseInputEventC2Ev

