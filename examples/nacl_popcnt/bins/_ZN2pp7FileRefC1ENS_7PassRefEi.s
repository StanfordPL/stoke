  .text
  .globl _ZN2pp7FileRefC1ENS_7PassRefEi
  .type _ZN2pp7FileRefC1ENS_7PassRefEi, @function

#! file-offset 0x30980
#! rip-offset  0x30980
#! capacity    64 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ENS_7PassRefEi:          #        0x30980  0      
  pushq %rbx                              #  1     0x30980  2      
  movl %edi, %ebx                         #  2     0x30982  2      
  xorl %esi, %esi                         #  3     0x30984  2      
  movl %ebx, %edi                         #  4     0x30986  2      
  nop                                     #  5     0x30988  1      
  nop                                     #  6     0x30989  1      
  callq ._ZN2pp8ResourceC2ENS_7PassRefEi  #  7     0x3098a  5      
  movl %ebx, %ebx                         #  8     0x3098f  2      
  movl $0x100204e8, (%r15,%rbx,1)         #  9     0x30991  8      
  popq %rbx                               #  10    0x30999  2      
  popq %r11                               #  11    0x3099b  3      
  andl $0xffffffe0, %r11d                 #  12    0x3099e  7      
  addq %r15, %r11                         #  13    0x309a5  3      
  jmpq %r11                               #  14    0x309a8  3      
  nop                                     #  15    0x309ab  1      
  nop                                     #  16    0x309ac  1      
                                                                   
.size _ZN2pp7FileRefC1ENS_7PassRefEi, .-_ZN2pp7FileRefC1ENS_7PassRefEi

