  .text
  .globl _ZN2pp15URLResponseInfoC2ERKS0_
  .type _ZN2pp15URLResponseInfoC2ERKS0_, @function

#! file-offset 0x29320
#! rip-offset  0x29320
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15URLResponseInfoC2ERKS0_:  #        0x29320  0      
  pushq %rbx                       #  1     0x29320  2      
  movl %edi, %ebx                  #  2     0x29322  2      
  movl %esi, %esi                  #  3     0x29324  2      
  movl %ebx, %edi                  #  4     0x29326  2      
  nop                              #  5     0x29328  1      
  nop                              #  6     0x29329  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x2932a  5      
  movl %ebx, %ebx                  #  8     0x2932f  2      
  movl $0x10020498, (%r15,%rbx,1)  #  9     0x29331  8      
  popq %rbx                        #  10    0x29339  2      
  popq %r11                        #  11    0x2933b  3      
  andl $0xffffffe0, %r11d          #  12    0x2933e  7      
  addq %r15, %r11                  #  13    0x29345  3      
  jmpq %r11                        #  14    0x29348  3      
  nop                              #  15    0x2934b  1      
  nop                              #  16    0x2934c  1      
                                                            
.size _ZN2pp15URLResponseInfoC2ERKS0_, .-_ZN2pp15URLResponseInfoC2ERKS0_

