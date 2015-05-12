  .text
  .globl _ZNSs4rendEv
  .type _ZNSs4rendEv, @function

#! file-offset 0x48cc0
#! rip-offset  0x48cc0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs4rendEv:                  #        0x48cc0  0      
  movq %rbx, -0x10(%rsp)        #  1     0x48cc0  5      
  movl %esi, %ebx               #  2     0x48cc5  2      
  movq %r12, -0x8(%rsp)         #  3     0x48cc7  5      
  subl $0x18, %esp              #  4     0x48ccc  3      
  addq %r15, %rsp               #  5     0x48ccf  3      
  movl %ebx, %ebx               #  6     0x48cd2  2      
  movl (%r15,%rbx,1), %eax      #  7     0x48cd4  4      
  movl %edi, %r12d              #  8     0x48cd8  3      
  leal -0xc(%rax), %edx         #  9     0x48cdb  3      
  xchgw %ax, %ax                #  10    0x48cde  3      
  movl %edx, %edx               #  11    0x48ce1  2      
  movl 0x8(%r15,%rdx,1), %ecx   #  12    0x48ce3  5      
  testl %ecx, %ecx              #  13    0x48ce8  2      
  js .L_48d20                   #  14    0x48cea  6      
  movl %ebx, %edi               #  15    0x48cf0  2      
  nop                           #  16    0x48cf2  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48cf3  5      
  movl %ebx, %ebx               #  18    0x48cf8  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48cfa  4      
  nop                           #  20    0x48cfe  1      
  nop                           #  21    0x48cff  1      
.L_48d20:                       #        0x48d00  0      
  movl %r12d, %r12d             #  22    0x48d00  3      
  movl %eax, (%r15,%r12,1)      #  23    0x48d03  4      
  movq 0x8(%rsp), %rbx          #  24    0x48d07  5      
  movl %r12d, %eax              #  25    0x48d0c  3      
  movq 0x10(%rsp), %r12         #  26    0x48d0f  5      
  addl $0x18, %esp              #  27    0x48d14  3      
  addq %r15, %rsp               #  28    0x48d17  3      
  popq %r11                     #  29    0x48d1a  3      
  nop                           #  30    0x48d1d  1      
  andl $0xffffffe0, %r11d       #  31    0x48d1e  7      
  addq %r15, %r11               #  32    0x48d25  3      
  jmpq %r11                     #  33    0x48d28  3      
  nop                           #  34    0x48d2b  1      
  nop                           #  35    0x48d2c  1      
  nop                           #  36    0x48d2d  1      
  nop                           #  37    0x48d2e  1      
  nop                           #  38    0x48d2f  1      
  nop                           #  39    0x48d30  1      
  nop                           #  40    0x48d31  1      
  nop                           #  41    0x48d32  1      
  nop                           #  42    0x48d33  1      
  nop                           #  43    0x48d34  1      
  nop                           #  44    0x48d35  1      
  nop                           #  45    0x48d36  1      
  nop                           #  46    0x48d37  1      
  nop                           #  47    0x48d38  1      
  nop                           #  48    0x48d39  1      
  nop                           #  49    0x48d3a  1      
  nop                           #  50    0x48d3b  1      
  nop                           #  51    0x48d3c  1      
  nop                           #  52    0x48d3d  1      
  nop                           #  53    0x48d3e  1      
  nop                           #  54    0x48d3f  1      
  nop                           #  55    0x48d40  1      
                                                         
.size _ZNSs4rendEv, .-_ZNSs4rendEv

