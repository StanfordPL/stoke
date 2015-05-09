  .text
  .globl _ZNSs4rendEv
  .type _ZNSs4rendEv, @function

#! file-offset 0x48ca0
#! rip-offset  0x48ca0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs4rendEv:                  #        0x48ca0  0      
  movq %rbx, -0x10(%rsp)        #  1     0x48ca0  5      
  movl %esi, %ebx               #  2     0x48ca5  2      
  movq %r12, -0x8(%rsp)         #  3     0x48ca7  5      
  subl $0x18, %esp              #  4     0x48cac  3      
  addq %r15, %rsp               #  5     0x48caf  3      
  movl %ebx, %ebx               #  6     0x48cb2  2      
  movl (%r15,%rbx,1), %eax      #  7     0x48cb4  4      
  movl %edi, %r12d              #  8     0x48cb8  3      
  leal -0xc(%rax), %edx         #  9     0x48cbb  3      
  xchgw %ax, %ax                #  10    0x48cbe  3      
  movl %edx, %edx               #  11    0x48cc1  2      
  movl 0x8(%r15,%rdx,1), %ecx   #  12    0x48cc3  5      
  testl %ecx, %ecx              #  13    0x48cc8  2      
  js .L_48d00                   #  14    0x48cca  6      
  movl %ebx, %edi               #  15    0x48cd0  2      
  nop                           #  16    0x48cd2  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48cd3  5      
  movl %ebx, %ebx               #  18    0x48cd8  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48cda  4      
  nop                           #  20    0x48cde  1      
  nop                           #  21    0x48cdf  1      
.L_48d00:                       #        0x48ce0  0      
  movl %r12d, %r12d             #  22    0x48ce0  3      
  movl %eax, (%r15,%r12,1)      #  23    0x48ce3  4      
  movq 0x8(%rsp), %rbx          #  24    0x48ce7  5      
  movl %r12d, %eax              #  25    0x48cec  3      
  movq 0x10(%rsp), %r12         #  26    0x48cef  5      
  addl $0x18, %esp              #  27    0x48cf4  3      
  addq %r15, %rsp               #  28    0x48cf7  3      
  popq %r11                     #  29    0x48cfa  3      
  nop                           #  30    0x48cfd  1      
  andl $0xffffffe0, %r11d       #  31    0x48cfe  7      
  addq %r15, %r11               #  32    0x48d05  3      
  jmpq %r11                     #  33    0x48d08  3      
  nop                           #  34    0x48d0b  1      
  nop                           #  35    0x48d0c  1      
  nop                           #  36    0x48d0d  1      
  nop                           #  37    0x48d0e  1      
  nop                           #  38    0x48d0f  1      
  nop                           #  39    0x48d10  1      
  nop                           #  40    0x48d11  1      
  nop                           #  41    0x48d12  1      
  nop                           #  42    0x48d13  1      
  nop                           #  43    0x48d14  1      
  nop                           #  44    0x48d15  1      
  nop                           #  45    0x48d16  1      
  nop                           #  46    0x48d17  1      
  nop                           #  47    0x48d18  1      
  nop                           #  48    0x48d19  1      
  nop                           #  49    0x48d1a  1      
  nop                           #  50    0x48d1b  1      
  nop                           #  51    0x48d1c  1      
  nop                           #  52    0x48d1d  1      
  nop                           #  53    0x48d1e  1      
  nop                           #  54    0x48d1f  1      
  nop                           #  55    0x48d20  1      
                                                         
.size _ZNSs4rendEv, .-_ZNSs4rendEv

