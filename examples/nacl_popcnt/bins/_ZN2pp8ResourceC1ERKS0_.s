  .text
  .globl _ZN2pp8ResourceC1ERKS0_
  .type _ZN2pp8ResourceC1ERKS0_, @function

#! file-offset 0x27020
#! rip-offset  0x27020
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC1ERKS0_:          #        0x27020  0      
  movl %esi, %esi                  #  1     0x27020  2      
  pushq %rbx                       #  2     0x27022  2      
  movl %edi, %edi                  #  3     0x27024  2      
  movl %esi, %esi                  #  4     0x27026  2      
  movl 0x4(%r15,%rsi,1), %ebx      #  5     0x27028  5      
  movl %edi, %edi                  #  6     0x2702d  2      
  movl $0x10020458, (%r15,%rdi,1)  #  7     0x2702f  8      
  testl %ebx, %ebx                 #  8     0x27037  2      
  movl %edi, %edi                  #  9     0x27039  2      
  movl %ebx, 0x4(%r15,%rdi,1)      #  10    0x2703b  5      
  nop                              #  11    0x27040  1      
  jne .L_27060                     #  12    0x27041  6      
  popq %rbx                        #  13    0x27047  2      
  popq %r11                        #  14    0x27049  3      
  andl $0xffffffe0, %r11d          #  15    0x2704c  7      
  addq %r15, %r11                  #  16    0x27053  3      
  jmpq %r11                        #  17    0x27056  3      
  xchgw %ax, %ax                   #  18    0x27059  3      
  nop                              #  19    0x2705c  1      
.L_27060:                          #        0x2705d  0      
  nop                              #  20    0x2705d  1      
  nop                              #  21    0x2705e  1      
  callq ._ZN2pp6Module3GetEv       #  22    0x2705f  5      
  movl %eax, %eax                  #  23    0x27064  2      
  movl %ebx, %edi                  #  24    0x27066  2      
  movl %eax, %eax                  #  25    0x27068  2      
  movl 0x24(%r15,%rax,1), %eax     #  26    0x2706a  5      
  popq %rbx                        #  27    0x2706f  2      
  movl %eax, %eax                  #  28    0x27071  2      
  movl (%r15,%rax,1), %eax         #  29    0x27073  4      
  movl %eax, %eax                  #  30    0x27077  2      
  movl (%r15,%rax,1), %eax         #  31    0x27079  4      
  andl $0xffffffe0, %eax           #  32    0x2707d  5      
  addq %r15, %rax                  #  33    0x27082  3      
  jmpq %rax                        #  34    0x27085  2      
                                                            
.size _ZN2pp8ResourceC1ERKS0_, .-_ZN2pp8ResourceC1ERKS0_

