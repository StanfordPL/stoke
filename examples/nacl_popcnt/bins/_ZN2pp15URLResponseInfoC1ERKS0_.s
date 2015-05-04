  .text
  .globl _ZN2pp15URLResponseInfoC1ERKS0_
  .type _ZN2pp15URLResponseInfoC1ERKS0_, @function

#! file-offset 0x292e0
#! rip-offset  0x292e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp15URLResponseInfoC1ERKS0_:  #        0x292e0  0      
  pushq %rbx                       #  1     0x292e0  2      
  movl %edi, %ebx                  #  2     0x292e2  2      
  movl %esi, %esi                  #  3     0x292e4  2      
  movl %ebx, %edi                  #  4     0x292e6  2      
  nop                              #  5     0x292e8  1      
  nop                              #  6     0x292e9  1      
  callq ._ZN2pp8ResourceC2ERKS0_   #  7     0x292ea  5      
  movl %ebx, %ebx                  #  8     0x292ef  2      
  movl $0x10020498, (%r15,%rbx,1)  #  9     0x292f1  8      
  popq %rbx                        #  10    0x292f9  2      
  popq %r11                        #  11    0x292fb  3      
  andl $0xffffffe0, %r11d          #  12    0x292fe  7      
  addq %r15, %r11                  #  13    0x29305  3      
  jmpq %r11                        #  14    0x29308  3      
  nop                              #  15    0x2930b  1      
  nop                              #  16    0x2930c  1      
                                                            
.size _ZN2pp15URLResponseInfoC1ERKS0_, .-_ZN2pp15URLResponseInfoC1ERKS0_

