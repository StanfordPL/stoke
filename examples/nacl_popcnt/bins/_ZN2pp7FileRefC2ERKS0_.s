  .text
  .globl _ZN2pp7FileRefC2ERKS0_
  .type _ZN2pp7FileRefC2ERKS0_, @function

#! file-offset 0x308a0
#! rip-offset  0x308a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC2ERKS0_:           #        0x308a0  0      
  pushq %rbx                       #  1     0x308a0  2      
  movl %edi, %ebx                  #  2     0x308a2  2      
  movl %esi, %esi                  #  3     0x308a4  2      
  movl %ebx, %edi                  #  4     0x308a6  2      
  nop                              #  5     0x308a8  1      
  nop                              #  6     0x308a9  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x308aa  5      
  movl %ebx, %ebx                  #  8     0x308af  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  9     0x308b1  8      
  popq %rbx                        #  10    0x308b9  2      
  popq %r11                        #  11    0x308bb  3      
  andl $0xffffffe0, %r11d          #  12    0x308be  7      
  addq %r15, %r11                  #  13    0x308c5  3      
  jmpq %r11                        #  14    0x308c8  3      
  nop                              #  15    0x308cb  1      
  nop                              #  16    0x308cc  1      
                                                            
.size _ZN2pp7FileRefC2ERKS0_, .-_ZN2pp7FileRefC2ERKS0_

