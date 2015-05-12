  .text
  .globl _ZN2pp8ResourceC1ERKS0_
  .type _ZN2pp8ResourceC1ERKS0_, @function

#! file-offset 0x26fa0
#! rip-offset  0x26fa0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC1ERKS0_:          #        0x26fa0  0      
  movl %esi, %esi                  #  1     0x26fa0  2      
  pushq %rbx                       #  2     0x26fa2  2      
  movl %edi, %edi                  #  3     0x26fa4  2      
  movl %esi, %esi                  #  4     0x26fa6  2      
  movl 0x4(%r15,%rsi,1), %ebx      #  5     0x26fa8  5      
  movl %edi, %edi                  #  6     0x26fad  2      
  movl $0x10020458, (%r15,%rdi,1)  #  7     0x26faf  8      
  testl %ebx, %ebx                 #  8     0x26fb7  2      
  movl %edi, %edi                  #  9     0x26fb9  2      
  movl %ebx, 0x4(%r15,%rdi,1)      #  10    0x26fbb  5      
  nop                              #  11    0x26fc0  1      
  jne .L_26fe0                     #  12    0x26fc1  6      
  popq %rbx                        #  13    0x26fc7  2      
  popq %r11                        #  14    0x26fc9  3      
  andl $0xffffffe0, %r11d          #  15    0x26fcc  7      
  addq %r15, %r11                  #  16    0x26fd3  3      
  jmpq %r11                        #  17    0x26fd6  3      
  xchgw %ax, %ax                   #  18    0x26fd9  3      
  nop                              #  19    0x26fdc  1      
.L_26fe0:                          #        0x26fdd  0      
  nop                              #  20    0x26fdd  1      
  nop                              #  21    0x26fde  1      
  callq ._ZN2pp6Module3GetEv       #  22    0x26fdf  5      
  movl %eax, %eax                  #  23    0x26fe4  2      
  movl %ebx, %edi                  #  24    0x26fe6  2      
  movl %eax, %eax                  #  25    0x26fe8  2      
  movl 0x24(%r15,%rax,1), %eax     #  26    0x26fea  5      
  popq %rbx                        #  27    0x26fef  2      
  movl %eax, %eax                  #  28    0x26ff1  2      
  movl (%r15,%rax,1), %eax         #  29    0x26ff3  4      
  movl %eax, %eax                  #  30    0x26ff7  2      
  movl (%r15,%rax,1), %eax         #  31    0x26ff9  4      
  andl $0xffffffe0, %eax           #  32    0x26ffd  5      
  addq %r15, %rax                  #  33    0x27002  3      
  jmpq %rax                        #  34    0x27005  2      
                                                            
.size _ZN2pp8ResourceC1ERKS0_, .-_ZN2pp8ResourceC1ERKS0_

