  .text
  .globl _ZN2pp8ResourceC1ERKS0_
  .type _ZN2pp8ResourceC1ERKS0_, @function

#! file-offset 0x26f80
#! rip-offset  0x26f80
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC1ERKS0_:          #        0x26f80  0      
  movl %esi, %esi                  #  1     0x26f80  2      
  pushq %rbx                       #  2     0x26f82  2      
  movl %edi, %edi                  #  3     0x26f84  2      
  movl %esi, %esi                  #  4     0x26f86  2      
  movl 0x4(%r15,%rsi,1), %ebx      #  5     0x26f88  5      
  movl %edi, %edi                  #  6     0x26f8d  2      
  movl $0x10020458, (%r15,%rdi,1)  #  7     0x26f8f  8      
  testl %ebx, %ebx                 #  8     0x26f97  2      
  movl %edi, %edi                  #  9     0x26f99  2      
  movl %ebx, 0x4(%r15,%rdi,1)      #  10    0x26f9b  5      
  nop                              #  11    0x26fa0  1      
  jne .L_26fc0                     #  12    0x26fa1  6      
  popq %rbx                        #  13    0x26fa7  2      
  popq %r11                        #  14    0x26fa9  3      
  andl $0xffffffe0, %r11d          #  15    0x26fac  7      
  addq %r15, %r11                  #  16    0x26fb3  3      
  jmpq %r11                        #  17    0x26fb6  3      
  xchgw %ax, %ax                   #  18    0x26fb9  3      
  nop                              #  19    0x26fbc  1      
.L_26fc0:                          #        0x26fbd  0      
  nop                              #  20    0x26fbd  1      
  nop                              #  21    0x26fbe  1      
  callq ._ZN2pp6Module3GetEv       #  22    0x26fbf  5      
  movl %eax, %eax                  #  23    0x26fc4  2      
  movl %ebx, %edi                  #  24    0x26fc6  2      
  movl %eax, %eax                  #  25    0x26fc8  2      
  movl 0x24(%r15,%rax,1), %eax     #  26    0x26fca  5      
  popq %rbx                        #  27    0x26fcf  2      
  movl %eax, %eax                  #  28    0x26fd1  2      
  movl (%r15,%rax,1), %eax         #  29    0x26fd3  4      
  movl %eax, %eax                  #  30    0x26fd7  2      
  movl (%r15,%rax,1), %eax         #  31    0x26fd9  4      
  andl $0xffffffe0, %eax           #  32    0x26fdd  5      
  addq %r15, %rax                  #  33    0x26fe2  3      
  jmpq %rax                        #  34    0x26fe5  2      
                                                            
.size _ZN2pp8ResourceC1ERKS0_, .-_ZN2pp8ResourceC1ERKS0_

