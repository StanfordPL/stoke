  .text
  .globl _ZN2pp7FileRefC1Ei
  .type _ZN2pp7FileRefC1Ei, @function

#! file-offset 0x30980
#! rip-offset  0x30980
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC1Ei:               #        0x30980  0      
  pushq %rbx                       #  1     0x30980  2      
  movl %edi, %ebx                  #  2     0x30982  2      
  movl %ebx, %edi                  #  3     0x30984  2      
  nop                              #  4     0x30986  1      
  nop                              #  5     0x30987  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x30988  5      
  movl %ebx, %ebx                  #  7     0x3098d  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  8     0x3098f  8      
  popq %rbx                        #  9     0x30997  2      
  popq %r11                        #  10    0x30999  3      
  andl $0xffffffe0, %r11d          #  11    0x3099c  7      
  addq %r15, %r11                  #  12    0x309a3  3      
  jmpq %r11                        #  13    0x309a6  3      
  nop                              #  14    0x309a9  1      
  nop                              #  15    0x309aa  1      
                                                            
.size _ZN2pp7FileRefC1Ei, .-_ZN2pp7FileRefC1Ei

