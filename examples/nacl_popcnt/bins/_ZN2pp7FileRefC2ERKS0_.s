  .text
  .globl _ZN2pp7FileRefC2ERKS0_
  .type _ZN2pp7FileRefC2ERKS0_, @function

#! file-offset 0x308c0
#! rip-offset  0x308c0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC2ERKS0_:           #        0x308c0  0      
  pushq %rbx                       #  1     0x308c0  2      
  movl %edi, %ebx                  #  2     0x308c2  2      
  movl %esi, %esi                  #  3     0x308c4  2      
  movl %ebx, %edi                  #  4     0x308c6  2      
  nop                              #  5     0x308c8  1      
  nop                              #  6     0x308c9  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x308ca  5      
  movl %ebx, %ebx                  #  8     0x308cf  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  9     0x308d1  8      
  popq %rbx                        #  10    0x308d9  2      
  popq %r11                        #  11    0x308db  3      
  andl $0xffffffe0, %r11d          #  12    0x308de  7      
  addq %r15, %r11                  #  13    0x308e5  3      
  jmpq %r11                        #  14    0x308e8  3      
  nop                              #  15    0x308eb  1      
  nop                              #  16    0x308ec  1      
                                                            
.size _ZN2pp7FileRefC2ERKS0_, .-_ZN2pp7FileRefC2ERKS0_

