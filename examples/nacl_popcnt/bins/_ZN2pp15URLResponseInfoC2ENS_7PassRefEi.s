  .text
  .globl _ZN2pp15URLResponseInfoC2ENS_7PassRefEi
  .type _ZN2pp15URLResponseInfoC2ENS_7PassRefEi, @function

#! file-offset 0x29220
#! rip-offset  0x29220
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  
._ZN2pp15URLResponseInfoC2ENS_7PassRefEi:  #        0x29220  0      
  pushq %rbx                               #  1     0x29220  2      
  movl %edi, %ebx                          #  2     0x29222  2      
  xorl %esi, %esi                          #  3     0x29224  2      
  movl %ebx, %edi                          #  4     0x29226  2      
  nop                                      #  5     0x29228  1      
  nop                                      #  6     0x29229  1      
  callq ._ZN2pp8ResourceC2ENS_7PassRefEi   #  7     0x2922a  5      
  movl %ebx, %ebx                          #  8     0x2922f  2      
  movl $0x10020498, (%r15,%rbx,1)          #  9     0x29231  8      
  popq %rbx                                #  10    0x29239  2      
  popq %r11                                #  11    0x2923b  3      
  andl $0xffffffe0, %r11d                  #  12    0x2923e  7      
  addq %r15, %r11                          #  13    0x29245  3      
  jmpq %r11                                #  14    0x29248  3      
  nop                                      #  15    0x2924b  1      
  nop                                      #  16    0x2924c  1      
                                                                    
.size _ZN2pp15URLResponseInfoC2ENS_7PassRefEi, .-_ZN2pp15URLResponseInfoC2ENS_7PassRefEi

