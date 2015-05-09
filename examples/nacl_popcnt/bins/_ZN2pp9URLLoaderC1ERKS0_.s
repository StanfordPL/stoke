  .text
  .globl _ZN2pp9URLLoaderC1ERKS0_
  .type _ZN2pp9URLLoaderC1ERKS0_, @function

#! file-offset 0x27260
#! rip-offset  0x27260
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC1ERKS0_:         #        0x27260  0      
  pushq %rbx                       #  1     0x27260  2      
  movl %edi, %ebx                  #  2     0x27262  2      
  movl %esi, %esi                  #  3     0x27264  2      
  movl %ebx, %edi                  #  4     0x27266  2      
  nop                              #  5     0x27268  1      
  nop                              #  6     0x27269  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x2726a  5      
  movl %ebx, %ebx                  #  8     0x2726f  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  9     0x27271  8      
  popq %rbx                        #  10    0x27279  2      
  popq %r11                        #  11    0x2727b  3      
  andl $0xffffffe0, %r11d          #  12    0x2727e  7      
  addq %r15, %r11                  #  13    0x27285  3      
  jmpq %r11                        #  14    0x27288  3      
  nop                              #  15    0x2728b  1      
  nop                              #  16    0x2728c  1      
                                                            
.size _ZN2pp9URLLoaderC1ERKS0_, .-_ZN2pp9URLLoaderC1ERKS0_

