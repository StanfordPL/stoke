  .text
  .globl _ZN2pp15TouchInputEventC2Ev
  .type _ZN2pp15TouchInputEventC2Ev, @function

#! file-offset 0x36220
#! rip-offset  0x36220
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2Ev:      #        0x36220  0      
  pushq %rbx                       #  1     0x36220  2      
  movl %edi, %ebx                  #  2     0x36222  2      
  movl %ebx, %edi                  #  3     0x36224  2      
  nop                              #  4     0x36226  1      
  nop                              #  5     0x36227  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x36228  5      
  movl %ebx, %ebx                  #  7     0x3622d  2      
  movl $0x10020788, (%r15,%rbx,1)  #  8     0x3622f  8      
  popq %rbx                        #  9     0x36237  2      
  popq %r11                        #  10    0x36239  3      
  andl $0xffffffe0, %r11d          #  11    0x3623c  7      
  addq %r15, %r11                  #  12    0x36243  3      
  jmpq %r11                        #  13    0x36246  3      
  nop                              #  14    0x36249  1      
  nop                              #  15    0x3624a  1      
                                                            
.size _ZN2pp15TouchInputEventC2Ev, .-_ZN2pp15TouchInputEventC2Ev

