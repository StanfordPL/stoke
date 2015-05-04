  .text
  .globl _ZN2pp9URLLoaderC1Ei
  .type _ZN2pp9URLLoaderC1Ei, @function

#! file-offset 0x27380
#! rip-offset  0x27380
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC1Ei:             #        0x27380  0      
  pushq %rbx                       #  1     0x27380  2      
  movl %edi, %ebx                  #  2     0x27382  2      
  movl %ebx, %edi                  #  3     0x27384  2      
  nop                              #  4     0x27386  1      
  nop                              #  5     0x27387  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x27388  5      
  movl %ebx, %ebx                  #  7     0x2738d  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  8     0x2738f  8      
  popq %rbx                        #  9     0x27397  2      
  popq %r11                        #  10    0x27399  3      
  andl $0xffffffe0, %r11d          #  11    0x2739c  7      
  addq %r15, %r11                  #  12    0x273a3  3      
  jmpq %r11                        #  13    0x273a6  3      
  nop                              #  14    0x273a9  1      
  nop                              #  15    0x273aa  1      
                                                            
.size _ZN2pp9URLLoaderC1Ei, .-_ZN2pp9URLLoaderC1Ei

