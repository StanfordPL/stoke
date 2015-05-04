  .text
  .globl _ZN2pp4ViewC1Ev
  .type _ZN2pp4ViewC1Ev, @function

#! file-offset 0x2d8c0
#! rip-offset  0x2d8c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp4ViewC1Ev:                  #        0x2d8c0  0      
  pushq %rbx                       #  1     0x2d8c0  2      
  movl %edi, %ebx                  #  2     0x2d8c2  2      
  movl %ebx, %edi                  #  3     0x2d8c4  2      
  nop                              #  4     0x2d8c6  1      
  nop                              #  5     0x2d8c7  1      
  callq ._ZN2pp8ResourceC2Ev       #  6     0x2d8c8  5      
  movl %ebx, %ebx                  #  7     0x2d8cd  2      
  movl $0x10020428, (%r15,%rbx,1)  #  8     0x2d8cf  8      
  popq %rbx                        #  9     0x2d8d7  2      
  popq %r11                        #  10    0x2d8d9  3      
  andl $0xffffffe0, %r11d          #  11    0x2d8dc  7      
  addq %r15, %r11                  #  12    0x2d8e3  3      
  jmpq %r11                        #  13    0x2d8e6  3      
  nop                              #  14    0x2d8e9  1      
  nop                              #  15    0x2d8ea  1      
                                                            
.size _ZN2pp4ViewC1Ev, .-_ZN2pp4ViewC1Ev

