  .text
  .globl _ZNSs5beginEv
  .type _ZNSs5beginEv, @function

#! file-offset 0x48c60
#! rip-offset  0x48c60
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs5beginEv:                 #        0x48c60  0      
  pushq %rbx                    #  1     0x48c60  2      
  movl %edi, %ebx               #  2     0x48c62  2      
  movl %ebx, %ebx               #  3     0x48c64  2      
  movl (%r15,%rbx,1), %eax      #  4     0x48c66  4      
  leal -0xc(%rax), %edx         #  5     0x48c6a  3      
  movl %edx, %edx               #  6     0x48c6d  2      
  movl 0x8(%r15,%rdx,1), %edx   #  7     0x48c6f  5      
  testl %edx, %edx              #  8     0x48c74  2      
  js .L_48ca0                   #  9     0x48c76  6      
  movl %ebx, %edi               #  10    0x48c7c  2      
  xchgw %ax, %ax                #  11    0x48c7e  3      
  callq ._ZNSs12_M_leak_hardEv  #  12    0x48c81  5      
  movl %ebx, %ebx               #  13    0x48c86  2      
  movl (%r15,%rbx,1), %eax      #  14    0x48c88  4      
  nop                           #  15    0x48c8c  1      
  nop                           #  16    0x48c8d  1      
.L_48ca0:                       #        0x48c8e  0      
  popq %rbx                     #  17    0x48c8e  2      
  popq %r11                     #  18    0x48c90  3      
  andl $0xffffffe0, %r11d       #  19    0x48c93  7      
  addq %r15, %r11               #  20    0x48c9a  3      
  jmpq %r11                     #  21    0x48c9d  3      
  nop                           #  22    0x48ca0  1      
  nop                           #  23    0x48ca1  1      
  nop                           #  24    0x48ca2  1      
  nop                           #  25    0x48ca3  1      
  nop                           #  26    0x48ca4  1      
  nop                           #  27    0x48ca5  1      
  nop                           #  28    0x48ca6  1      
  nop                           #  29    0x48ca7  1      
  nop                           #  30    0x48ca8  1      
  nop                           #  31    0x48ca9  1      
  nop                           #  32    0x48caa  1      
  nop                           #  33    0x48cab  1      
  nop                           #  34    0x48cac  1      
  nop                           #  35    0x48cad  1      
  nop                           #  36    0x48cae  1      
  nop                           #  37    0x48caf  1      
  nop                           #  38    0x48cb0  1      
  nop                           #  39    0x48cb1  1      
  nop                           #  40    0x48cb2  1      
                                                         
.size _ZNSs5beginEv, .-_ZNSs5beginEv

