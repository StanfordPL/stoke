  .text
  .globl _ZN2pp7FileRefC2ENS_7PassRefEi
  .type _ZN2pp7FileRefC2ENS_7PassRefEi, @function

#! file-offset 0x309c0
#! rip-offset  0x309c0
#! capacity    64 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp7FileRefC2ENS_7PassRefEi:          #        0x309c0  0      
  pushq %rbx                              #  1     0x309c0  2      
  movl %edi, %ebx                         #  2     0x309c2  2      
  xorl %esi, %esi                         #  3     0x309c4  2      
  movl %ebx, %edi                         #  4     0x309c6  2      
  nop                                     #  5     0x309c8  1      
  nop                                     #  6     0x309c9  1      
  callq ._ZN2pp8ResourceC2ENS_7PassRefEi  #  7     0x309ca  5      
  movl %ebx, %ebx                         #  8     0x309cf  2      
  movl $0x100204e8, (%r15,%rbx,1)         #  9     0x309d1  8      
  popq %rbx                               #  10    0x309d9  2      
  popq %r11                               #  11    0x309db  3      
  andl $0xffffffe0, %r11d                 #  12    0x309de  7      
  addq %r15, %r11                         #  13    0x309e5  3      
  jmpq %r11                               #  14    0x309e8  3      
  nop                                     #  15    0x309eb  1      
  nop                                     #  16    0x309ec  1      
                                                                   
.size _ZN2pp7FileRefC2ENS_7PassRefEi, .-_ZN2pp7FileRefC2ENS_7PassRefEi

