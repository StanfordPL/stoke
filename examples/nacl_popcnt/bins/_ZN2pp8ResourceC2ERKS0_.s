  .text
  .globl _ZN2pp8ResourceC2ERKS0_
  .type _ZN2pp8ResourceC2ERKS0_, @function

#! file-offset 0x27000
#! rip-offset  0x27000
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC2ERKS0_:          #        0x27000  0      
  movl %esi, %esi                  #  1     0x27000  2      
  pushq %rbx                       #  2     0x27002  2      
  movl %edi, %edi                  #  3     0x27004  2      
  movl %esi, %esi                  #  4     0x27006  2      
  movl 0x4(%r15,%rsi,1), %ebx      #  5     0x27008  5      
  movl %edi, %edi                  #  6     0x2700d  2      
  movl $0x10020458, (%r15,%rdi,1)  #  7     0x2700f  8      
  testl %ebx, %ebx                 #  8     0x27017  2      
  movl %edi, %edi                  #  9     0x27019  2      
  movl %ebx, 0x4(%r15,%rdi,1)      #  10    0x2701b  5      
  nop                              #  11    0x27020  1      
  jne .L_27040                     #  12    0x27021  6      
  popq %rbx                        #  13    0x27027  2      
  popq %r11                        #  14    0x27029  3      
  andl $0xffffffe0, %r11d          #  15    0x2702c  7      
  addq %r15, %r11                  #  16    0x27033  3      
  jmpq %r11                        #  17    0x27036  3      
  xchgw %ax, %ax                   #  18    0x27039  3      
  nop                              #  19    0x2703c  1      
.L_27040:                          #        0x2703d  0      
  nop                              #  20    0x2703d  1      
  nop                              #  21    0x2703e  1      
  callq ._ZN2pp6Module3GetEv       #  22    0x2703f  5      
  movl %eax, %eax                  #  23    0x27044  2      
  movl %ebx, %edi                  #  24    0x27046  2      
  movl %eax, %eax                  #  25    0x27048  2      
  movl 0x24(%r15,%rax,1), %eax     #  26    0x2704a  5      
  popq %rbx                        #  27    0x2704f  2      
  movl %eax, %eax                  #  28    0x27051  2      
  movl (%r15,%rax,1), %eax         #  29    0x27053  4      
  movl %eax, %eax                  #  30    0x27057  2      
  movl (%r15,%rax,1), %eax         #  31    0x27059  4      
  andl $0xffffffe0, %eax           #  32    0x2705d  5      
  addq %r15, %rax                  #  33    0x27062  3      
  jmpq %rax                        #  34    0x27065  2      
                                                            
.size _ZN2pp8ResourceC2ERKS0_, .-_ZN2pp8ResourceC2ERKS0_

