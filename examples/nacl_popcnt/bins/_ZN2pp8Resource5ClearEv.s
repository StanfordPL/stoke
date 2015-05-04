  .text
  .globl _ZN2pp8Resource5ClearEv
  .type _ZN2pp8Resource5ClearEv, @function

#! file-offset 0x26d20
#! rip-offset  0x26d20
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  
._ZN2pp8Resource5ClearEv:       #        0x26d20  0      
  movq %rbx, -0x10(%rsp)        #  1     0x26d20  5      
  movl %edi, %ebx               #  2     0x26d25  2      
  movq %r12, -0x8(%rsp)         #  3     0x26d27  5      
  subl $0x18, %esp              #  4     0x26d2c  3      
  addq %r15, %rsp               #  5     0x26d2f  3      
  movl %ebx, %ebx               #  6     0x26d32  2      
  movl 0x4(%r15,%rbx,1), %r12d  #  7     0x26d34  5      
  testl %r12d, %r12d            #  8     0x26d39  3      
  nop                           #  9     0x26d3c  1      
  je .L_26dc0                   #  10    0x26d3d  6      
  nop                           #  11    0x26d43  1      
  nop                           #  12    0x26d44  1      
  callq ._ZN2pp6Module3GetEv    #  13    0x26d45  5      
  movl %eax, %eax               #  14    0x26d4a  2      
  movl %r12d, %edi              #  15    0x26d4c  3      
  movl %eax, %eax               #  16    0x26d4f  2      
  movl 0x24(%r15,%rax,1), %eax  #  17    0x26d51  5      
  movl %eax, %eax               #  18    0x26d56  2      
  movl (%r15,%rax,1), %eax      #  19    0x26d58  4      
  movl %eax, %eax               #  20    0x26d5c  2      
  movl 0x4(%r15,%rax,1), %eax   #  21    0x26d5e  5      
  nop                           #  22    0x26d63  1      
  nop                           #  23    0x26d64  1      
  nop                           #  24    0x26d65  1      
  andl $0xffffffe0, %eax        #  25    0x26d66  5      
  addq %r15, %rax               #  26    0x26d6b  3      
  callq %rax                    #  27    0x26d6e  2      
  movl %ebx, %ebx               #  28    0x26d70  2      
  movl $0x0, 0x4(%r15,%rbx,1)   #  29    0x26d72  9      
  nop                           #  30    0x26d7b  1      
  nop                           #  31    0x26d7c  1      
.L_26dc0:                       #        0x26d7d  0      
  movq 0x8(%rsp), %rbx          #  32    0x26d7d  5      
  movq 0x10(%rsp), %r12         #  33    0x26d82  5      
  addl $0x18, %esp              #  34    0x26d87  3      
  addq %r15, %rsp               #  35    0x26d8a  3      
  popq %r11                     #  36    0x26d8d  3      
  andl $0xffffffe0, %r11d       #  37    0x26d90  7      
  addq %r15, %r11               #  38    0x26d97  3      
  jmpq %r11                     #  39    0x26d9a  3      
  nop                           #  40    0x26d9d  1      
                                                         
.size _ZN2pp8Resource5ClearEv, .-_ZN2pp8Resource5ClearEv

