  .text
  .globl _ZN2pp15URLResponseInfoC1ERKS0_
  .type _ZN2pp15URLResponseInfoC1ERKS0_, @function

#! file-offset 0x29240
#! rip-offset  0x29240
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15URLResponseInfoC1ERKS0_:  #        0x29240  0      
  pushq %rbx                       #  1     0x29240  2      
  movl %edi, %ebx                  #  2     0x29242  2      
  movl %esi, %esi                  #  3     0x29244  2      
  movl %ebx, %edi                  #  4     0x29246  2      
  nop                              #  5     0x29248  1      
  nop                              #  6     0x29249  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x2924a  5      
  movl %ebx, %ebx                  #  8     0x2924f  2      
  movl $0x10020498, (%r15,%rbx,1)  #  9     0x29251  8      
  popq %rbx                        #  10    0x29259  2      
  popq %r11                        #  11    0x2925b  3      
  andl $0xffffffe0, %r11d          #  12    0x2925e  7      
  addq %r15, %r11                  #  13    0x29265  3      
  jmpq %r11                        #  14    0x29268  3      
  nop                              #  15    0x2926b  1      
  nop                              #  16    0x2926c  1      
                                                            
.size _ZN2pp15URLResponseInfoC1ERKS0_, .-_ZN2pp15URLResponseInfoC1ERKS0_

