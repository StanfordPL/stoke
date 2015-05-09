  .text
  .globl _ZN2pp7FileRefC2ENS_7PassRefEi
  .type _ZN2pp7FileRefC2ENS_7PassRefEi, @function

#! file-offset 0x30920
#! rip-offset  0x30920
#! capacity    64 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp7FileRefC2ENS_7PassRefEi:          #        0x30920  0      
  pushq %rbx                              #  1     0x30920  2      
  movl %edi, %ebx                         #  2     0x30922  2      
  xorl %esi, %esi                         #  3     0x30924  2      
  movl %ebx, %edi                         #  4     0x30926  2      
  nop                                     #  5     0x30928  1      
  nop                                     #  6     0x30929  1      
  callq ._ZN2pp8ResourceC2ENS_7PassRefEi  #  7     0x3092a  5      
  movl %ebx, %ebx                         #  8     0x3092f  2      
  movl $0x100204e8, (%r15,%rbx,1)         #  9     0x30931  8      
  popq %rbx                               #  10    0x30939  2      
  popq %r11                               #  11    0x3093b  3      
  andl $0xffffffe0, %r11d                 #  12    0x3093e  7      
  addq %r15, %r11                         #  13    0x30945  3      
  jmpq %r11                               #  14    0x30948  3      
  nop                                     #  15    0x3094b  1      
  nop                                     #  16    0x3094c  1      
                                                                   
.size _ZN2pp7FileRefC2ENS_7PassRefEi, .-_ZN2pp7FileRefC2ENS_7PassRefEi

