  .text
  .globl _ZN2pp15URLResponseInfoC1ERKS0_
  .type _ZN2pp15URLResponseInfoC1ERKS0_, @function

#! file-offset 0x29260
#! rip-offset  0x29260
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15URLResponseInfoC1ERKS0_:  #        0x29260  0      
  pushq %rbx                       #  1     0x29260  2      
  movl %edi, %ebx                  #  2     0x29262  2      
  movl %esi, %esi                  #  3     0x29264  2      
  movl %ebx, %edi                  #  4     0x29266  2      
  nop                              #  5     0x29268  1      
  nop                              #  6     0x29269  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x2926a  5      
  movl %ebx, %ebx                  #  8     0x2926f  2      
  movl $0x10020498, (%r15,%rbx,1)  #  9     0x29271  8      
  popq %rbx                        #  10    0x29279  2      
  popq %r11                        #  11    0x2927b  3      
  andl $0xffffffe0, %r11d          #  12    0x2927e  7      
  addq %r15, %r11                  #  13    0x29285  3      
  jmpq %r11                        #  14    0x29288  3      
  nop                              #  15    0x2928b  1      
  nop                              #  16    0x2928c  1      
                                                            
.size _ZN2pp15URLResponseInfoC1ERKS0_, .-_ZN2pp15URLResponseInfoC1ERKS0_

