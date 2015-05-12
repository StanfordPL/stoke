  .text
  .globl _ZN2pp9URLLoaderC2Ei
  .type _ZN2pp9URLLoaderC2Ei, @function

#! file-offset 0x27340
#! rip-offset  0x27340
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2Ei:             #        0x27340  0      
  pushq %rbx                       #  1     0x27340  2      
  movl %edi, %ebx                  #  2     0x27342  2      
  movl %ebx, %edi                  #  3     0x27344  2      
  nop                              #  4     0x27346  1      
  nop                              #  5     0x27347  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x27348  5      
  movl %ebx, %ebx                  #  7     0x2734d  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  8     0x2734f  8      
  popq %rbx                        #  9     0x27357  2      
  popq %r11                        #  10    0x27359  3      
  andl $0xffffffe0, %r11d          #  11    0x2735c  7      
  addq %r15, %r11                  #  12    0x27363  3      
  jmpq %r11                        #  13    0x27366  3      
  nop                              #  14    0x27369  1      
  nop                              #  15    0x2736a  1      
                                                            
.size _ZN2pp9URLLoaderC2Ei, .-_ZN2pp9URLLoaderC2Ei

