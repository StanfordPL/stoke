  .text
  .globl _ZN2pp9URLLoaderC1Ei
  .type _ZN2pp9URLLoaderC1Ei, @function

#! file-offset 0x272e0
#! rip-offset  0x272e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC1Ei:             #        0x272e0  0      
  pushq %rbx                       #  1     0x272e0  2      
  movl %edi, %ebx                  #  2     0x272e2  2      
  movl %ebx, %edi                  #  3     0x272e4  2      
  nop                              #  4     0x272e6  1      
  nop                              #  5     0x272e7  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x272e8  5      
  movl %ebx, %ebx                  #  7     0x272ed  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  8     0x272ef  8      
  popq %rbx                        #  9     0x272f7  2      
  popq %r11                        #  10    0x272f9  3      
  andl $0xffffffe0, %r11d          #  11    0x272fc  7      
  addq %r15, %r11                  #  12    0x27303  3      
  jmpq %r11                        #  13    0x27306  3      
  nop                              #  14    0x27309  1      
  nop                              #  15    0x2730a  1      
                                                            
.size _ZN2pp9URLLoaderC1Ei, .-_ZN2pp9URLLoaderC1Ei

