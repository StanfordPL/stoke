  .text
  .globl _ZN2pp8ResourceD0Ev
  .type _ZN2pp8ResourceD0Ev, @function

#! file-offset 0x27260
#! rip-offset  0x27260
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD0Ev:              #        0x27260  0      
  movq %rbx, -0x10(%rsp)           #  1     0x27260  5      
  movl %edi, %ebx                  #  2     0x27265  2      
  movq %r12, -0x8(%rsp)            #  3     0x27267  5      
  subl $0x18, %esp                 #  4     0x2726c  3      
  addq %r15, %rsp                  #  5     0x2726f  3      
  movl %ebx, %ebx                  #  6     0x27272  2      
  movl 0x4(%r15,%rbx,1), %r12d     #  7     0x27274  5      
  nop                              #  8     0x27279  1      
  movl %ebx, %ebx                  #  9     0x2727a  2      
  movl $0x10020458, (%r15,%rbx,1)  #  10    0x2727c  8      
  testl %r12d, %r12d               #  11    0x27284  3      
  je .L_272e0                      #  12    0x27287  6      
  nop                              #  13    0x2728d  1      
  callq ._ZN2pp6Module3GetEv       #  14    0x2728e  5      
  movl %eax, %eax                  #  15    0x27293  2      
  movl %r12d, %edi                 #  16    0x27295  3      
  movl %eax, %eax                  #  17    0x27298  2      
  movl 0x24(%r15,%rax,1), %eax     #  18    0x2729a  5      
  movl %eax, %eax                  #  19    0x2729f  2      
  movl (%r15,%rax,1), %eax         #  20    0x272a1  4      
  movl %eax, %eax                  #  21    0x272a5  2      
  movl 0x4(%r15,%rax,1), %eax      #  22    0x272a7  5      
  nop                              #  23    0x272ac  1      
  nop                              #  24    0x272ad  1      
  nop                              #  25    0x272ae  1      
  andl $0xffffffe0, %eax           #  26    0x272af  5      
  addq %r15, %rax                  #  27    0x272b4  3      
  callq %rax                       #  28    0x272b7  2      
.L_272e0:                          #        0x272b9  0      
  movl %ebx, %edi                  #  29    0x272b9  2      
  movq 0x10(%rsp), %r12            #  30    0x272bb  5      
  movq 0x8(%rsp), %rbx             #  31    0x272c0  5      
  addl $0x18, %esp                 #  32    0x272c5  3      
  addq %r15, %rsp                  #  33    0x272c8  3      
  jmpq ._ZdlPv                     #  34    0x272cb  5      
  nop                              #  35    0x272d0  1      
  nop                              #  36    0x272d1  1      
  nop                              #  37    0x272d2  1      
  nop                              #  38    0x272d3  1      
  nop                              #  39    0x272d4  1      
  nop                              #  40    0x272d5  1      
  nop                              #  41    0x272d6  1      
  nop                              #  42    0x272d7  1      
  nop                              #  43    0x272d8  1      
                                                            
.size _ZN2pp8ResourceD0Ev, .-_ZN2pp8ResourceD0Ev

