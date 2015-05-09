  .text
  .globl _ZN2pp7FileRefC1ENS_7PassRefEi
  .type _ZN2pp7FileRefC1ENS_7PassRefEi, @function

#! file-offset 0x308e0
#! rip-offset  0x308e0
#! capacity    64 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ENS_7PassRefEi:          #        0x308e0  0      
  pushq %rbx                              #  1     0x308e0  2      
  movl %edi, %ebx                         #  2     0x308e2  2      
  xorl %esi, %esi                         #  3     0x308e4  2      
  movl %ebx, %edi                         #  4     0x308e6  2      
  nop                                     #  5     0x308e8  1      
  nop                                     #  6     0x308e9  1      
  callq ._ZN2pp8ResourceC2ENS_7PassRefEi  #  7     0x308ea  5      
  movl %ebx, %ebx                         #  8     0x308ef  2      
  movl $0x100204e8, (%r15,%rbx,1)         #  9     0x308f1  8      
  popq %rbx                               #  10    0x308f9  2      
  popq %r11                               #  11    0x308fb  3      
  andl $0xffffffe0, %r11d                 #  12    0x308fe  7      
  addq %r15, %r11                         #  13    0x30905  3      
  jmpq %r11                               #  14    0x30908  3      
  nop                                     #  15    0x3090b  1      
  nop                                     #  16    0x3090c  1      
                                                                   
.size _ZN2pp7FileRefC1ENS_7PassRefEi, .-_ZN2pp7FileRefC1ENS_7PassRefEi

