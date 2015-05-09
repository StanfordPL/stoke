  .text
  .globl _ZN2pp8ResourceC2Ei
  .type _ZN2pp8ResourceC2Ei, @function

#! file-offset 0x26dc0
#! rip-offset  0x26dc0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC2Ei:              #        0x26dc0  0      
  movl %edi, %edi                  #  1     0x26dc0  2      
  testl %esi, %esi                 #  2     0x26dc2  2      
  pushq %rbx                       #  3     0x26dc4  2      
  movl %esi, %ebx                  #  4     0x26dc6  2      
  movl %edi, %edi                  #  5     0x26dc8  2      
  movl $0x10020458, (%r15,%rdi,1)  #  6     0x26dca  8      
  movl %edi, %edi                  #  7     0x26dd2  2      
  movl %esi, 0x4(%r15,%rdi,1)      #  8     0x26dd4  5      
  jne .L_26e00                     #  9     0x26dd9  6      
  popq %rbx                        #  10    0x26ddf  2      
  popq %r11                        #  11    0x26de1  3      
  nop                              #  12    0x26de4  1      
  andl $0xffffffe0, %r11d          #  13    0x26de5  7      
  addq %r15, %r11                  #  14    0x26dec  3      
  jmpq %r11                        #  15    0x26def  3      
  nop                              #  16    0x26df2  1      
  nop                              #  17    0x26df3  1      
.L_26e00:                          #        0x26df4  0      
  nop                              #  18    0x26df4  1      
  nop                              #  19    0x26df5  1      
  callq ._ZN2pp6Module3GetEv       #  20    0x26df6  5      
  movl %eax, %eax                  #  21    0x26dfb  2      
  movl %ebx, %edi                  #  22    0x26dfd  2      
  movl %eax, %eax                  #  23    0x26dff  2      
  movl 0x24(%r15,%rax,1), %eax     #  24    0x26e01  5      
  popq %rbx                        #  25    0x26e06  2      
  movl %eax, %eax                  #  26    0x26e08  2      
  movl (%r15,%rax,1), %eax         #  27    0x26e0a  4      
  movl %eax, %eax                  #  28    0x26e0e  2      
  movl (%r15,%rax,1), %eax         #  29    0x26e10  4      
  andl $0xffffffe0, %eax           #  30    0x26e14  5      
  addq %r15, %rax                  #  31    0x26e19  3      
  jmpq %rax                        #  32    0x26e1c  2      
                                                            
.size _ZN2pp8ResourceC2Ei, .-_ZN2pp8ResourceC2Ei

