  .text
  .globl _ZN2pp13IMEInputEventC2Ev
  .type _ZN2pp13IMEInputEventC2Ev, @function

#! file-offset 0x361c0
#! rip-offset  0x361c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC2Ev:        #        0x361c0  0      
  pushq %rbx                       #  1     0x361c0  2      
  movl %edi, %ebx                  #  2     0x361c2  2      
  movl %ebx, %edi                  #  3     0x361c4  2      
  nop                              #  4     0x361c6  1      
  nop                              #  5     0x361c7  1      
  callq ._ZN2pp10InputEventC2Ev    #  6     0x361c8  5      
  movl %ebx, %ebx                  #  7     0x361cd  2      
  movl $0x10020748, (%r15,%rbx,1)  #  8     0x361cf  8      
  popq %rbx                        #  9     0x361d7  2      
  popq %r11                        #  10    0x361d9  3      
  andl $0xffffffe0, %r11d          #  11    0x361dc  7      
  addq %r15, %r11                  #  12    0x361e3  3      
  jmpq %r11                        #  13    0x361e6  3      
  nop                              #  14    0x361e9  1      
  nop                              #  15    0x361ea  1      
                                                            
.size _ZN2pp13IMEInputEventC2Ev, .-_ZN2pp13IMEInputEventC2Ev

