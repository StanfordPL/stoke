  .text
  .globl _ZN2pp8ResourceD0Ev
  .type _ZN2pp8ResourceD0Ev, @function

#! file-offset 0x271e0
#! rip-offset  0x271e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD0Ev:              #        0x271e0  0      
  movq %rbx, -0x10(%rsp)           #  1     0x271e0  5      
  movl %edi, %ebx                  #  2     0x271e5  2      
  movq %r12, -0x8(%rsp)            #  3     0x271e7  5      
  subl $0x18, %esp                 #  4     0x271ec  3      
  addq %r15, %rsp                  #  5     0x271ef  3      
  movl %ebx, %ebx                  #  6     0x271f2  2      
  movl 0x4(%r15,%rbx,1), %r12d     #  7     0x271f4  5      
  nop                              #  8     0x271f9  1      
  movl %ebx, %ebx                  #  9     0x271fa  2      
  movl $0x10020458, (%r15,%rbx,1)  #  10    0x271fc  8      
  testl %r12d, %r12d               #  11    0x27204  3      
  je .L_27260                      #  12    0x27207  6      
  nop                              #  13    0x2720d  1      
  callq ._ZN2pp6Module3GetEv       #  14    0x2720e  5      
  movl %eax, %eax                  #  15    0x27213  2      
  movl %r12d, %edi                 #  16    0x27215  3      
  movl %eax, %eax                  #  17    0x27218  2      
  movl 0x24(%r15,%rax,1), %eax     #  18    0x2721a  5      
  movl %eax, %eax                  #  19    0x2721f  2      
  movl (%r15,%rax,1), %eax         #  20    0x27221  4      
  movl %eax, %eax                  #  21    0x27225  2      
  movl 0x4(%r15,%rax,1), %eax      #  22    0x27227  5      
  nop                              #  23    0x2722c  1      
  nop                              #  24    0x2722d  1      
  nop                              #  25    0x2722e  1      
  andl $0xffffffe0, %eax           #  26    0x2722f  5      
  addq %r15, %rax                  #  27    0x27234  3      
  callq %rax                       #  28    0x27237  2      
.L_27260:                          #        0x27239  0      
  movl %ebx, %edi                  #  29    0x27239  2      
  movq 0x10(%rsp), %r12            #  30    0x2723b  5      
  movq 0x8(%rsp), %rbx             #  31    0x27240  5      
  addl $0x18, %esp                 #  32    0x27245  3      
  addq %r15, %rsp                  #  33    0x27248  3      
  jmpq ._ZdlPv                     #  34    0x2724b  5      
  nop                              #  35    0x27250  1      
  nop                              #  36    0x27251  1      
  nop                              #  37    0x27252  1      
  nop                              #  38    0x27253  1      
  nop                              #  39    0x27254  1      
  nop                              #  40    0x27255  1      
  nop                              #  41    0x27256  1      
  nop                              #  42    0x27257  1      
  nop                              #  43    0x27258  1      
                                                            
.size _ZN2pp8ResourceD0Ev, .-_ZN2pp8ResourceD0Ev

