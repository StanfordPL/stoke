  .text
  .globl _ZN2pp15MouseInputEventC1Ev
  .type _ZN2pp15MouseInputEventC1Ev, @function

#! file-offset 0x36400
#! rip-offset  0x36400
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15MouseInputEventC1Ev:      #        0x36400  0      
  pushq %rbx                       #  1     0x36400  2      
  movl %edi, %ebx                  #  2     0x36402  2      
  movl %ebx, %edi                  #  3     0x36404  2      
  nop                              #  4     0x36406  1      
  nop                              #  5     0x36407  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36408  5      
  movl %ebx, %ebx                  #  7     0x3640d  2      
  movl $0x10020848, (%r15,%rbx,1)  #  8     0x3640f  8      
  popq %rbx                        #  9     0x36417  2      
  popq %r11                        #  10    0x36419  3      
  andl $0xffffffe0, %r11d          #  11    0x3641c  7      
  addq %r15, %r11                  #  12    0x36423  3      
  jmpq %r11                        #  13    0x36426  3      
  nop                              #  14    0x36429  1      
  nop                              #  15    0x3642a  1      
                                                            
.size _ZN2pp15MouseInputEventC1Ev, .-_ZN2pp15MouseInputEventC1Ev

