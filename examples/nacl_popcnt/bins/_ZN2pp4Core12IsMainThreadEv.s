  .text
  .globl _ZN2pp4Core12IsMainThreadEv
  .type _ZN2pp4Core12IsMainThreadEv, @function

#! file-offset 0x30700
#! rip-offset  0x30700
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
._ZN2pp4Core12IsMainThreadEv:   #        0x30700  0      
  movl %edi, %edi               #  1     0x30700  2      
  subl $0x8, %esp               #  2     0x30702  3      
  addq %r15, %rsp               #  3     0x30705  3      
  movl %edi, %edi               #  4     0x30708  2      
  movl (%r15,%rdi,1), %eax      #  5     0x3070a  4      
  movl %eax, %eax               #  6     0x3070e  2      
  movl 0x14(%r15,%rax,1), %eax  #  7     0x30710  5      
  nop                           #  8     0x30715  1      
  andl $0xffffffe0, %eax        #  9     0x30716  5      
  addq %r15, %rax               #  10    0x3071b  3      
  callq %rax                    #  11    0x3071e  2      
  testl %eax, %eax              #  12    0x30720  2      
  setne %al                     #  13    0x30722  3      
  addl $0x8, %esp               #  14    0x30725  3      
  addq %r15, %rsp               #  15    0x30728  3      
  popq %r11                     #  16    0x3072b  3      
  andl $0xffffffe0, %r11d       #  17    0x3072e  7      
  addq %r15, %r11               #  18    0x30735  3      
  jmpq %r11                     #  19    0x30738  3      
  nop                           #  20    0x3073b  1      
  nop                           #  21    0x3073c  1      
  nop                           #  22    0x3073d  1      
  nop                           #  23    0x3073e  1      
  nop                           #  24    0x3073f  1      
  nop                           #  25    0x30740  1      
  nop                           #  26    0x30741  1      
  nop                           #  27    0x30742  1      
  nop                           #  28    0x30743  1      
                                                         
.size _ZN2pp4Core12IsMainThreadEv, .-_ZN2pp4Core12IsMainThreadEv

