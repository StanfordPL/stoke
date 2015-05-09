  .text
  .globl _ZN2pp15URLResponseInfoC1ENS_7PassRefEi
  .type _ZN2pp15URLResponseInfoC1ENS_7PassRefEi, @function

#! file-offset 0x291c0
#! rip-offset  0x291c0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  
._ZN2pp15URLResponseInfoC1ENS_7PassRefEi:  #        0x291c0  0      
  pushq %rbx                               #  1     0x291c0  2      
  movl %edi, %ebx                          #  2     0x291c2  2      
  xorl %esi, %esi                          #  3     0x291c4  2      
  movl %ebx, %edi                          #  4     0x291c6  2      
  nop                                      #  5     0x291c8  1      
  nop                                      #  6     0x291c9  1      
  callq ._ZN2pp8ResourceC2ENS_7PassRefEi   #  7     0x291ca  5      
  movl %ebx, %ebx                          #  8     0x291cf  2      
  movl $0x10020498, (%r15,%rbx,1)          #  9     0x291d1  8      
  popq %rbx                                #  10    0x291d9  2      
  popq %r11                                #  11    0x291db  3      
  andl $0xffffffe0, %r11d                  #  12    0x291de  7      
  addq %r15, %r11                          #  13    0x291e5  3      
  jmpq %r11                                #  14    0x291e8  3      
  nop                                      #  15    0x291eb  1      
  nop                                      #  16    0x291ec  1      
                                                                    
.size _ZN2pp15URLResponseInfoC1ENS_7PassRefEi, .-_ZN2pp15URLResponseInfoC1ENS_7PassRefEi

