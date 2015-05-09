  .text
  .globl _ZN2pp8Resource5ClearEv
  .type _ZN2pp8Resource5ClearEv, @function

#! file-offset 0x26c80
#! rip-offset  0x26c80
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  
._ZN2pp8Resource5ClearEv:       #        0x26c80  0      
  movq %rbx, -0x10(%rsp)        #  1     0x26c80  5      
  movl %edi, %ebx               #  2     0x26c85  2      
  movq %r12, -0x8(%rsp)         #  3     0x26c87  5      
  subl $0x18, %esp              #  4     0x26c8c  3      
  addq %r15, %rsp               #  5     0x26c8f  3      
  movl %ebx, %ebx               #  6     0x26c92  2      
  movl 0x4(%r15,%rbx,1), %r12d  #  7     0x26c94  5      
  testl %r12d, %r12d            #  8     0x26c99  3      
  nop                           #  9     0x26c9c  1      
  je .L_26d20                   #  10    0x26c9d  6      
  nop                           #  11    0x26ca3  1      
  nop                           #  12    0x26ca4  1      
  callq ._ZN2pp6Module3GetEv    #  13    0x26ca5  5      
  movl %eax, %eax               #  14    0x26caa  2      
  movl %r12d, %edi              #  15    0x26cac  3      
  movl %eax, %eax               #  16    0x26caf  2      
  movl 0x24(%r15,%rax,1), %eax  #  17    0x26cb1  5      
  movl %eax, %eax               #  18    0x26cb6  2      
  movl (%r15,%rax,1), %eax      #  19    0x26cb8  4      
  movl %eax, %eax               #  20    0x26cbc  2      
  movl 0x4(%r15,%rax,1), %eax   #  21    0x26cbe  5      
  nop                           #  22    0x26cc3  1      
  nop                           #  23    0x26cc4  1      
  nop                           #  24    0x26cc5  1      
  andl $0xffffffe0, %eax        #  25    0x26cc6  5      
  addq %r15, %rax               #  26    0x26ccb  3      
  callq %rax                    #  27    0x26cce  2      
  movl %ebx, %ebx               #  28    0x26cd0  2      
  movl $0x0, 0x4(%r15,%rbx,1)   #  29    0x26cd2  9      
  nop                           #  30    0x26cdb  1      
  nop                           #  31    0x26cdc  1      
.L_26d20:                       #        0x26cdd  0      
  movq 0x8(%rsp), %rbx          #  32    0x26cdd  5      
  movq 0x10(%rsp), %r12         #  33    0x26ce2  5      
  addl $0x18, %esp              #  34    0x26ce7  3      
  addq %r15, %rsp               #  35    0x26cea  3      
  popq %r11                     #  36    0x26ced  3      
  andl $0xffffffe0, %r11d       #  37    0x26cf0  7      
  addq %r15, %r11               #  38    0x26cf7  3      
  jmpq %r11                     #  39    0x26cfa  3      
  nop                           #  40    0x26cfd  1      
                                                         
.size _ZN2pp8Resource5ClearEv, .-_ZN2pp8Resource5ClearEv

