  .text
  .globl _ZN2pp7FileRefC1Ei
  .type _ZN2pp7FileRefC1Ei, @function

#! file-offset 0x30a00
#! rip-offset  0x30a00
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp7FileRefC1Ei:               #        0x30a00  0      
  pushq %rbx                       #  1     0x30a00  2      
  movl %edi, %ebx                  #  2     0x30a02  2      
  movl %ebx, %edi                  #  3     0x30a04  2      
  nop                              #  4     0x30a06  1      
  nop                              #  5     0x30a07  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x30a08  5      
  movl %ebx, %ebx                  #  7     0x30a0d  2      
  movl $0x100204e8, (%r15,%rbx,1)  #  8     0x30a0f  8      
  popq %rbx                        #  9     0x30a17  2      
  popq %r11                        #  10    0x30a19  3      
  andl $0xffffffe0, %r11d          #  11    0x30a1c  7      
  addq %r15, %r11                  #  12    0x30a23  3      
  jmpq %r11                        #  13    0x30a26  3      
  nop                              #  14    0x30a29  1      
  nop                              #  15    0x30a2a  1      
                                                            
.size _ZN2pp7FileRefC1Ei, .-_ZN2pp7FileRefC1Ei

