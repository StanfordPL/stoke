  .text
  .globl _ZN2pp8ResourceD0Ev
  .type _ZN2pp8ResourceD0Ev, @function

#! file-offset 0x271c0
#! rip-offset  0x271c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD0Ev:              #        0x271c0  0      
  movq %rbx, -0x10(%rsp)           #  1     0x271c0  5      
  movl %edi, %ebx                  #  2     0x271c5  2      
  movq %r12, -0x8(%rsp)            #  3     0x271c7  5      
  subl $0x18, %esp                 #  4     0x271cc  3      
  addq %r15, %rsp                  #  5     0x271cf  3      
  movl %ebx, %ebx                  #  6     0x271d2  2      
  movl 0x4(%r15,%rbx,1), %r12d     #  7     0x271d4  5      
  nop                              #  8     0x271d9  1      
  movl %ebx, %ebx                  #  9     0x271da  2      
  movl $0x10020458, (%r15,%rbx,1)  #  10    0x271dc  8      
  testl %r12d, %r12d               #  11    0x271e4  3      
  je .L_27240                      #  12    0x271e7  6      
  nop                              #  13    0x271ed  1      
  callq ._ZN2pp6Module3GetEv       #  14    0x271ee  5      
  movl %eax, %eax                  #  15    0x271f3  2      
  movl %r12d, %edi                 #  16    0x271f5  3      
  movl %eax, %eax                  #  17    0x271f8  2      
  movl 0x24(%r15,%rax,1), %eax     #  18    0x271fa  5      
  movl %eax, %eax                  #  19    0x271ff  2      
  movl (%r15,%rax,1), %eax         #  20    0x27201  4      
  movl %eax, %eax                  #  21    0x27205  2      
  movl 0x4(%r15,%rax,1), %eax      #  22    0x27207  5      
  nop                              #  23    0x2720c  1      
  nop                              #  24    0x2720d  1      
  nop                              #  25    0x2720e  1      
  andl $0xffffffe0, %eax           #  26    0x2720f  5      
  addq %r15, %rax                  #  27    0x27214  3      
  callq %rax                       #  28    0x27217  2      
.L_27240:                          #        0x27219  0      
  movl %ebx, %edi                  #  29    0x27219  2      
  movq 0x10(%rsp), %r12            #  30    0x2721b  5      
  movq 0x8(%rsp), %rbx             #  31    0x27220  5      
  addl $0x18, %esp                 #  32    0x27225  3      
  addq %r15, %rsp                  #  33    0x27228  3      
  jmpq ._ZdlPv                     #  34    0x2722b  5      
  nop                              #  35    0x27230  1      
  nop                              #  36    0x27231  1      
  nop                              #  37    0x27232  1      
  nop                              #  38    0x27233  1      
  nop                              #  39    0x27234  1      
  nop                              #  40    0x27235  1      
  nop                              #  41    0x27236  1      
  nop                              #  42    0x27237  1      
  nop                              #  43    0x27238  1      
                                                            
.size _ZN2pp8ResourceD0Ev, .-_ZN2pp8ResourceD0Ev

