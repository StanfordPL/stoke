  .text
  .globl _ZN2pp9URLLoaderC2ERKS0_
  .type _ZN2pp9URLLoaderC2ERKS0_, @function

#! file-offset 0x272a0
#! rip-offset  0x272a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2ERKS0_:         #        0x272a0  0      
  pushq %rbx                       #  1     0x272a0  2      
  movl %edi, %ebx                  #  2     0x272a2  2      
  movl %esi, %esi                  #  3     0x272a4  2      
  movl %ebx, %edi                  #  4     0x272a6  2      
  nop                              #  5     0x272a8  1      
  nop                              #  6     0x272a9  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x272aa  5      
  movl %ebx, %ebx                  #  8     0x272af  2      
  movl $0x100203f8, (%r15,%rbx,1)  #  9     0x272b1  8      
  popq %rbx                        #  10    0x272b9  2      
  popq %r11                        #  11    0x272bb  3      
  andl $0xffffffe0, %r11d          #  12    0x272be  7      
  addq %r15, %r11                  #  13    0x272c5  3      
  jmpq %r11                        #  14    0x272c8  3      
  nop                              #  15    0x272cb  1      
  nop                              #  16    0x272cc  1      
                                                            
.size _ZN2pp9URLLoaderC2ERKS0_, .-_ZN2pp9URLLoaderC2ERKS0_

