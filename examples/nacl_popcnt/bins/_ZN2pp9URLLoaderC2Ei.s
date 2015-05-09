  .text
  .globl _ZN2pp9URLLoaderC2Ei
  .type _ZN2pp9URLLoaderC2Ei, @function

#! file-offset 0x27320
#! rip-offset  0x27320
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2Ei:             #        0x27320  0      
  pushq %rbx                       #  1     0x27320  2      
  movl %edi, %ebx                  #  2     0x27322  2      
  movl %ebx, %edi                  #  3     0x27324  2      
  nop                              #  4     0x27326  1      
  nop                              #  5     0x27327  1      
  callq ._ZN2pp8ResourceC2Ei       #  6     0x27328  5      
  movl %ebx, %ebx                  #  7     0x2732d  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  8     0x2732f  8      
  popq %rbx                        #  9     0x27337  2      
  popq %r11                        #  10    0x27339  3      
  andl $0xffffffe0, %r11d          #  11    0x2733c  7      
  addq %r15, %r11                  #  12    0x27343  3      
  jmpq %r11                        #  13    0x27346  3      
  nop                              #  14    0x27349  1      
  nop                              #  15    0x2734a  1      
                                                            
.size _ZN2pp9URLLoaderC2Ei, .-_ZN2pp9URLLoaderC2Ei

