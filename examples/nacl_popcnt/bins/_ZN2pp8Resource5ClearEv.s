  .text
  .globl _ZN2pp8Resource5ClearEv
  .type _ZN2pp8Resource5ClearEv, @function

#! file-offset 0x26ca0
#! rip-offset  0x26ca0
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  
._ZN2pp8Resource5ClearEv:       #        0x26ca0  0      
  movq %rbx, -0x10(%rsp)        #  1     0x26ca0  5      
  movl %edi, %ebx               #  2     0x26ca5  2      
  movq %r12, -0x8(%rsp)         #  3     0x26ca7  5      
  subl $0x18, %esp              #  4     0x26cac  3      
  addq %r15, %rsp               #  5     0x26caf  3      
  movl %ebx, %ebx               #  6     0x26cb2  2      
  movl 0x4(%r15,%rbx,1), %r12d  #  7     0x26cb4  5      
  testl %r12d, %r12d            #  8     0x26cb9  3      
  nop                           #  9     0x26cbc  1      
  je .L_26d40                   #  10    0x26cbd  6      
  nop                           #  11    0x26cc3  1      
  nop                           #  12    0x26cc4  1      
  callq ._ZN2pp6Module3GetEv    #  13    0x26cc5  5      
  movl %eax, %eax               #  14    0x26cca  2      
  movl %r12d, %edi              #  15    0x26ccc  3      
  movl %eax, %eax               #  16    0x26ccf  2      
  movl 0x24(%r15,%rax,1), %eax  #  17    0x26cd1  5      
  movl %eax, %eax               #  18    0x26cd6  2      
  movl (%r15,%rax,1), %eax      #  19    0x26cd8  4      
  movl %eax, %eax               #  20    0x26cdc  2      
  movl 0x4(%r15,%rax,1), %eax   #  21    0x26cde  5      
  nop                           #  22    0x26ce3  1      
  nop                           #  23    0x26ce4  1      
  nop                           #  24    0x26ce5  1      
  andl $0xffffffe0, %eax        #  25    0x26ce6  5      
  addq %r15, %rax               #  26    0x26ceb  3      
  callq %rax                    #  27    0x26cee  2      
  movl %ebx, %ebx               #  28    0x26cf0  2      
  movl $0x0, 0x4(%r15,%rbx,1)   #  29    0x26cf2  9      
  nop                           #  30    0x26cfb  1      
  nop                           #  31    0x26cfc  1      
.L_26d40:                       #        0x26cfd  0      
  movq 0x8(%rsp), %rbx          #  32    0x26cfd  5      
  movq 0x10(%rsp), %r12         #  33    0x26d02  5      
  addl $0x18, %esp              #  34    0x26d07  3      
  addq %r15, %rsp               #  35    0x26d0a  3      
  popq %r11                     #  36    0x26d0d  3      
  andl $0xffffffe0, %r11d       #  37    0x26d10  7      
  addq %r15, %r11               #  38    0x26d17  3      
  jmpq %r11                     #  39    0x26d1a  3      
  nop                           #  40    0x26d1d  1      
                                                         
.size _ZN2pp8Resource5ClearEv, .-_ZN2pp8Resource5ClearEv

