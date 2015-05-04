  .text
  .globl _ZN2pp15URLResponseInfoC2ENS_7PassRefEi
  .type _ZN2pp15URLResponseInfoC2ENS_7PassRefEi, @function

#! file-offset 0x292a0
#! rip-offset  0x292a0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  
._ZN2pp15URLResponseInfoC2ENS_7PassRefEi:  #        0x292a0  0      
  pushq %rbx                               #  1     0x292a0  2      
  movl %edi, %ebx                          #  2     0x292a2  2      
  xorl %esi, %esi                          #  3     0x292a4  2      
  movl %ebx, %edi                          #  4     0x292a6  2      
  nop                                      #  5     0x292a8  1      
  nop                                      #  6     0x292a9  1      
  callq ._ZN2pp8ResourceC2ENS_7PassRefEi   #  7     0x292aa  5      
  movl %ebx, %ebx                          #  8     0x292af  2      
  movl $0x10020498, (%r15,%rbx,1)          #  9     0x292b1  8      
  popq %rbx                                #  10    0x292b9  2      
  popq %r11                                #  11    0x292bb  3      
  andl $0xffffffe0, %r11d                  #  12    0x292be  7      
  addq %r15, %r11                          #  13    0x292c5  3      
  jmpq %r11                                #  14    0x292c8  3      
  nop                                      #  15    0x292cb  1      
  nop                                      #  16    0x292cc  1      
                                                                    
.size _ZN2pp15URLResponseInfoC2ENS_7PassRefEi, .-_ZN2pp15URLResponseInfoC2ENS_7PassRefEi

