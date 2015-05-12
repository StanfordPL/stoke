  .text
  .globl _ZN2pp15TouchInputEventC1Ev
  .type _ZN2pp15TouchInputEventC1Ev, @function

#! file-offset 0x36200
#! rip-offset  0x36200
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1Ev:      #        0x36200  0      
  pushq %rbx                       #  1     0x36200  2      
  movl %edi, %ebx                  #  2     0x36202  2      
  movl %ebx, %edi                  #  3     0x36204  2      
  nop                              #  4     0x36206  1      
  nop                              #  5     0x36207  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36208  5      
  movl %ebx, %ebx                  #  7     0x3620d  2      
  movl $0x10020788, (%r15,%rbx,1)  #  8     0x3620f  8      
  popq %rbx                        #  9     0x36217  2      
  popq %r11                        #  10    0x36219  3      
  andl $0xffffffe0, %r11d          #  11    0x3621c  7      
  addq %r15, %r11                  #  12    0x36223  3      
  jmpq %r11                        #  13    0x36226  3      
  nop                              #  14    0x36229  1      
  nop                              #  15    0x3622a  1      
                                                            
.size _ZN2pp15TouchInputEventC1Ev, .-_ZN2pp15TouchInputEventC1Ev

