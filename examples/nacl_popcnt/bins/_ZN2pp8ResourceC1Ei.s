  .text
  .globl _ZN2pp8ResourceC1Ei
  .type _ZN2pp8ResourceC1Ei, @function

#! file-offset 0x26d60
#! rip-offset  0x26d60
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceC1Ei:              #        0x26d60  0      
  movl %edi, %edi                  #  1     0x26d60  2      
  testl %esi, %esi                 #  2     0x26d62  2      
  pushq %rbx                       #  3     0x26d64  2      
  movl %esi, %ebx                  #  4     0x26d66  2      
  movl %edi, %edi                  #  5     0x26d68  2      
  movl $0x10020458, (%r15,%rdi,1)  #  6     0x26d6a  8      
  movl %edi, %edi                  #  7     0x26d72  2      
  movl %esi, 0x4(%r15,%rdi,1)      #  8     0x26d74  5      
  jne .L_26da0                     #  9     0x26d79  6      
  popq %rbx                        #  10    0x26d7f  2      
  popq %r11                        #  11    0x26d81  3      
  nop                              #  12    0x26d84  1      
  andl $0xffffffe0, %r11d          #  13    0x26d85  7      
  addq %r15, %r11                  #  14    0x26d8c  3      
  jmpq %r11                        #  15    0x26d8f  3      
  nop                              #  16    0x26d92  1      
  nop                              #  17    0x26d93  1      
.L_26da0:                          #        0x26d94  0      
  nop                              #  18    0x26d94  1      
  nop                              #  19    0x26d95  1      
  callq ._ZN2pp6Module3GetEv       #  20    0x26d96  5      
  movl %eax, %eax                  #  21    0x26d9b  2      
  movl %ebx, %edi                  #  22    0x26d9d  2      
  movl %eax, %eax                  #  23    0x26d9f  2      
  movl 0x24(%r15,%rax,1), %eax     #  24    0x26da1  5      
  popq %rbx                        #  25    0x26da6  2      
  movl %eax, %eax                  #  26    0x26da8  2      
  movl (%r15,%rax,1), %eax         #  27    0x26daa  4      
  movl %eax, %eax                  #  28    0x26dae  2      
  movl (%r15,%rax,1), %eax         #  29    0x26db0  4      
  andl $0xffffffe0, %eax           #  30    0x26db4  5      
  addq %r15, %rax                  #  31    0x26db9  3      
  jmpq %rax                        #  32    0x26dbc  2      
                                                            
.size _ZN2pp8ResourceC1Ei, .-_ZN2pp8ResourceC1Ei

