  .text
  .globl _ZN2pp7FileRefC1ERKS0_
  .type _ZN2pp7FileRefC1ERKS0_, @function

#! file-offset 0x30900
#! rip-offset  0x30900
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ERKS0_:           #        0x30900  0      
  pushq %rbx                       #  1     0x30900  2      
  movl %edi, %ebx                  #  2     0x30902  2      
  movl %esi, %esi                  #  3     0x30904  2      
  movl %ebx, %edi                  #  4     0x30906  2      
  nop                              #  5     0x30908  1      
  nop                              #  6     0x30909  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x3090a  5      
  movl %ebx, %ebx                  #  8     0x3090f  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  9     0x30911  8      
  popq %rbx                        #  10    0x30919  2      
  popq %r11                        #  11    0x3091b  3      
  andl $0xffffffe0, %r11d          #  12    0x3091e  7      
  addq %r15, %r11                  #  13    0x30925  3      
  jmpq %r11                        #  14    0x30928  3      
  nop                              #  15    0x3092b  1      
  nop                              #  16    0x3092c  1      
                                                            
.size _ZN2pp7FileRefC1ERKS0_, .-_ZN2pp7FileRefC1ERKS0_

