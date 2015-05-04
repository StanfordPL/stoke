  .text
  .globl _ZN2pp8ResourceC2ERKS0_
  .type _ZN2pp8ResourceC2ERKS0_, @function

#! file-offset 0x270a0
#! rip-offset  0x270a0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC2ERKS0_:          #        0x270a0  0      
  movl %esi, %esi                  #  1     0x270a0  2      
  pushq %rbx                       #  2     0x270a2  2      
  movl %edi, %edi                  #  3     0x270a4  2      
  movl %esi, %esi                  #  4     0x270a6  2      
  movl 0x4(%r15,%rsi,1), %ebx      #  5     0x270a8  5      
  movl %edi, %edi                  #  6     0x270ad  2      
  movl $0x10020458, (%r15,%rdi,1)  #  7     0x270af  8      
  testl %ebx, %ebx                 #  8     0x270b7  2      
  movl %edi, %edi                  #  9     0x270b9  2      
  movl %ebx, 0x4(%r15,%rdi,1)      #  10    0x270bb  5      
  nop                              #  11    0x270c0  1      
  jne .L_270e0                     #  12    0x270c1  6      
  popq %rbx                        #  13    0x270c7  2      
  popq %r11                        #  14    0x270c9  3      
  andl $0xffffffe0, %r11d          #  15    0x270cc  7      
  addq %r15, %r11                  #  16    0x270d3  3      
  jmpq %r11                        #  17    0x270d6  3      
  xchgw %ax, %ax                   #  18    0x270d9  3      
  nop                              #  19    0x270dc  1      
.L_270e0:                          #        0x270dd  0      
  nop                              #  20    0x270dd  1      
  nop                              #  21    0x270de  1      
  callq ._ZN2pp6Module3GetEv       #  22    0x270df  5      
  movl %eax, %eax                  #  23    0x270e4  2      
  movl %ebx, %edi                  #  24    0x270e6  2      
  movl %eax, %eax                  #  25    0x270e8  2      
  movl 0x24(%r15,%rax,1), %eax     #  26    0x270ea  5      
  popq %rbx                        #  27    0x270ef  2      
  movl %eax, %eax                  #  28    0x270f1  2      
  movl (%r15,%rax,1), %eax         #  29    0x270f3  4      
  movl %eax, %eax                  #  30    0x270f7  2      
  movl (%r15,%rax,1), %eax         #  31    0x270f9  4      
  andl $0xffffffe0, %eax           #  32    0x270fd  5      
  addq %r15, %rax                  #  33    0x27102  3      
  jmpq %rax                        #  34    0x27105  2      
                                                            
.size _ZN2pp8ResourceC2ERKS0_, .-_ZN2pp8ResourceC2ERKS0_

