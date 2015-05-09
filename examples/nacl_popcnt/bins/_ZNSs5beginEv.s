  .text
  .globl _ZNSs5beginEv
  .type _ZNSs5beginEv, @function

#! file-offset 0x48c40
#! rip-offset  0x48c40
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs5beginEv:                 #        0x48c40  0      
  pushq %rbx                    #  1     0x48c40  2      
  movl %edi, %ebx               #  2     0x48c42  2      
  movl %ebx, %ebx               #  3     0x48c44  2      
  movl (%r15,%rbx,1), %eax      #  4     0x48c46  4      
  leal -0xc(%rax), %edx         #  5     0x48c4a  3      
  movl %edx, %edx               #  6     0x48c4d  2      
  movl 0x8(%r15,%rdx,1), %edx   #  7     0x48c4f  5      
  testl %edx, %edx              #  8     0x48c54  2      
  js .L_48c80                   #  9     0x48c56  6      
  movl %ebx, %edi               #  10    0x48c5c  2      
  xchgw %ax, %ax                #  11    0x48c5e  3      
  callq ._ZNSs12_M_leak_hardEv  #  12    0x48c61  5      
  movl %ebx, %ebx               #  13    0x48c66  2      
  movl (%r15,%rbx,1), %eax      #  14    0x48c68  4      
  nop                           #  15    0x48c6c  1      
  nop                           #  16    0x48c6d  1      
.L_48c80:                       #        0x48c6e  0      
  popq %rbx                     #  17    0x48c6e  2      
  popq %r11                     #  18    0x48c70  3      
  andl $0xffffffe0, %r11d       #  19    0x48c73  7      
  addq %r15, %r11               #  20    0x48c7a  3      
  jmpq %r11                     #  21    0x48c7d  3      
  nop                           #  22    0x48c80  1      
  nop                           #  23    0x48c81  1      
  nop                           #  24    0x48c82  1      
  nop                           #  25    0x48c83  1      
  nop                           #  26    0x48c84  1      
  nop                           #  27    0x48c85  1      
  nop                           #  28    0x48c86  1      
  nop                           #  29    0x48c87  1      
  nop                           #  30    0x48c88  1      
  nop                           #  31    0x48c89  1      
  nop                           #  32    0x48c8a  1      
  nop                           #  33    0x48c8b  1      
  nop                           #  34    0x48c8c  1      
  nop                           #  35    0x48c8d  1      
  nop                           #  36    0x48c8e  1      
  nop                           #  37    0x48c8f  1      
  nop                           #  38    0x48c90  1      
  nop                           #  39    0x48c91  1      
  nop                           #  40    0x48c92  1      
                                                         
.size _ZNSs5beginEv, .-_ZNSs5beginEv

