  .text
  .globl _ZN2pp9URLLoaderC2ERKS0_
  .type _ZN2pp9URLLoaderC2ERKS0_, @function

#! file-offset 0x27340
#! rip-offset  0x27340
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2ERKS0_:         #        0x27340  0      
  pushq %rbx                       #  1     0x27340  2      
  movl %edi, %ebx                  #  2     0x27342  2      
  movl %esi, %esi                  #  3     0x27344  2      
  movl %ebx, %edi                  #  4     0x27346  2      
  nop                              #  5     0x27348  1      
  nop                              #  6     0x27349  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x2734a  5      
  movl %ebx, %ebx                  #  8     0x2734f  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  9     0x27351  8      
  popq %rbx                        #  10    0x27359  2      
  popq %r11                        #  11    0x2735b  3      
  andl $0xffffffe0, %r11d          #  12    0x2735e  7      
  addq %r15, %r11                  #  13    0x27365  3      
  jmpq %r11                        #  14    0x27368  3      
  nop                              #  15    0x2736b  1      
  nop                              #  16    0x2736c  1      
                                                            
.size _ZN2pp9URLLoaderC2ERKS0_, .-_ZN2pp9URLLoaderC2ERKS0_

