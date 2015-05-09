  .text
  .globl _ZN2pp7FileRefC1ERKS0_
  .type _ZN2pp7FileRefC1ERKS0_, @function

#! file-offset 0x30860
#! rip-offset  0x30860
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC1ERKS0_:           #        0x30860  0      
  pushq %rbx                       #  1     0x30860  2      
  movl %edi, %ebx                  #  2     0x30862  2      
  movl %esi, %esi                  #  3     0x30864  2      
  movl %ebx, %edi                  #  4     0x30866  2      
  nop                              #  5     0x30868  1      
  nop                              #  6     0x30869  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x3086a  5      
  movl %ebx, %ebx                  #  8     0x3086f  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  9     0x30871  8      
  popq %rbx                        #  10    0x30879  2      
  popq %r11                        #  11    0x3087b  3      
  andl $0xffffffe0, %r11d          #  12    0x3087e  7      
  addq %r15, %r11                  #  13    0x30885  3      
  jmpq %r11                        #  14    0x30888  3      
  nop                              #  15    0x3088b  1      
  nop                              #  16    0x3088c  1      
                                                            
.size _ZN2pp7FileRefC1ERKS0_, .-_ZN2pp7FileRefC1ERKS0_

