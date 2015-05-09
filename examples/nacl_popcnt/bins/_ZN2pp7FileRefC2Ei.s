  .text
  .globl _ZN2pp7FileRefC2Ei
  .type _ZN2pp7FileRefC2Ei, @function

#! file-offset 0x309a0
#! rip-offset  0x309a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC2Ei:               #        0x309a0  0      
  pushq %rbx                       #  1     0x309a0  2      
  movl %edi, %ebx                  #  2     0x309a2  2      
  movl %ebx, %edi                  #  3     0x309a4  2      
  nop                              #  4     0x309a6  1      
  nop                              #  5     0x309a7  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x309a8  5      
  movl %ebx, %ebx                  #  7     0x309ad  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  8     0x309af  8      
  popq %rbx                        #  9     0x309b7  2      
  popq %r11                        #  10    0x309b9  3      
  andl $0xffffffe0, %r11d          #  11    0x309bc  7      
  addq %r15, %r11                  #  12    0x309c3  3      
  jmpq %r11                        #  13    0x309c6  3      
  nop                              #  14    0x309c9  1      
  nop                              #  15    0x309ca  1      
                                                            
.size _ZN2pp7FileRefC2Ei, .-_ZN2pp7FileRefC2Ei

