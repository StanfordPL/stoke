  .text
  .globl _ZN2pp15TouchInputEventC2Ev
  .type _ZN2pp15TouchInputEventC2Ev, @function

#! file-offset 0x362c0
#! rip-offset  0x362c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2Ev:      #        0x362c0  0      
  pushq %rbx                       #  1     0x362c0  2      
  movl %edi, %ebx                  #  2     0x362c2  2      
  movl %ebx, %edi                  #  3     0x362c4  2      
  nop                              #  4     0x362c6  1      
  nop                              #  5     0x362c7  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x362c8  5      
  movl %ebx, %ebx                  #  7     0x362cd  2      
  movl $0x10020788, (%r15,%rbx,1)  #  8     0x362cf  8      
  popq %rbx                        #  9     0x362d7  2      
  popq %r11                        #  10    0x362d9  3      
  andl $0xffffffe0, %r11d          #  11    0x362dc  7      
  addq %r15, %r11                  #  12    0x362e3  3      
  jmpq %r11                        #  13    0x362e6  3      
  nop                              #  14    0x362e9  1      
  nop                              #  15    0x362ea  1      
                                                            
.size _ZN2pp15TouchInputEventC2Ev, .-_ZN2pp15TouchInputEventC2Ev

