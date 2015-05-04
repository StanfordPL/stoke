  .text
  .globl _ZN2pp4Core12IsMainThreadEv
  .type _ZN2pp4Core12IsMainThreadEv, @function

#! file-offset 0x307a0
#! rip-offset  0x307a0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
._ZN2pp4Core12IsMainThreadEv:   #        0x307a0  0      
  movl %edi, %edi               #  1     0x307a0  2      
  subl $0x8, %esp               #  2     0x307a2  3      
  addq %r15, %rsp               #  3     0x307a5  3      
  movl %edi, %edi               #  4     0x307a8  2      
  movl (%r15,%rdi,1), %eax      #  5     0x307aa  4      
  movl %eax, %eax               #  6     0x307ae  2      
  movl 0x14(%r15,%rax,1), %eax  #  7     0x307b0  5      
  nop                           #  8     0x307b5  1      
  andl $0xffffffe0, %eax        #  9     0x307b6  5      
  addq %r15, %rax               #  10    0x307bb  3      
  callq %rax                    #  11    0x307be  2      
  testl %eax, %eax              #  12    0x307c0  2      
  setne %al                     #  13    0x307c2  3      
  addl $0x8, %esp               #  14    0x307c5  3      
  addq %r15, %rsp               #  15    0x307c8  3      
  popq %r11                     #  16    0x307cb  3      
  andl $0xffffffe0, %r11d       #  17    0x307ce  7      
  addq %r15, %r11               #  18    0x307d5  3      
  jmpq %r11                     #  19    0x307d8  3      
  nop                           #  20    0x307db  1      
  nop                           #  21    0x307dc  1      
  nop                           #  22    0x307dd  1      
  nop                           #  23    0x307de  1      
  nop                           #  24    0x307df  1      
  nop                           #  25    0x307e0  1      
  nop                           #  26    0x307e1  1      
  nop                           #  27    0x307e2  1      
  nop                           #  28    0x307e3  1      
                                                         
.size _ZN2pp4Core12IsMainThreadEv, .-_ZN2pp4Core12IsMainThreadEv

