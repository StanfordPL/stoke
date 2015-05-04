  .text
  .globl _ZNSs3endEv
  .type _ZNSs3endEv, @function

#! file-offset 0x48c80
#! rip-offset  0x48c80
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs3endEv:                   #        0x48c80  0      
  pushq %rbx                    #  1     0x48c80  2      
  movl %edi, %ebx               #  2     0x48c82  2      
  movl %ebx, %ebx               #  3     0x48c84  2      
  movl (%r15,%rbx,1), %eax      #  4     0x48c86  4      
  leal -0xc(%rax), %edx         #  5     0x48c8a  3      
  movl %edx, %edx               #  6     0x48c8d  2      
  movl 0x8(%r15,%rdx,1), %r11d  #  7     0x48c8f  5      
  testl %r11d, %r11d            #  8     0x48c94  3      
  js .L_48cc0                   #  9     0x48c97  6      
  movl %ebx, %edi               #  10    0x48c9d  2      
  nop                           #  11    0x48c9f  1      
  callq ._ZNSs12_M_leak_hardEv  #  12    0x48ca0  5      
  movl %ebx, %ebx               #  13    0x48ca5  2      
  movl (%r15,%rbx,1), %eax      #  14    0x48ca7  4      
  leal -0xc(%rax), %edx         #  15    0x48cab  3      
  nop                           #  16    0x48cae  1      
  nop                           #  17    0x48caf  1      
.L_48cc0:                       #        0x48cb0  0      
  popq %rbx                     #  18    0x48cb0  2      
  popq %r11                     #  19    0x48cb2  3      
  movl %edx, %edx               #  20    0x48cb5  2      
  addl (%r15,%rdx,1), %eax      #  21    0x48cb7  4      
  andl $0xffffffe0, %r11d       #  22    0x48cbb  7      
  addq %r15, %r11               #  23    0x48cc2  3      
  jmpq %r11                     #  24    0x48cc5  3      
  nop                           #  25    0x48cc8  1      
  nop                           #  26    0x48cc9  1      
  nop                           #  27    0x48cca  1      
  nop                           #  28    0x48ccb  1      
  nop                           #  29    0x48ccc  1      
  nop                           #  30    0x48ccd  1      
  nop                           #  31    0x48cce  1      
  nop                           #  32    0x48ccf  1      
  nop                           #  33    0x48cd0  1      
  nop                           #  34    0x48cd1  1      
  nop                           #  35    0x48cd2  1      
  nop                           #  36    0x48cd3  1      
  nop                           #  37    0x48cd4  1      
                                                         
.size _ZNSs3endEv, .-_ZNSs3endEv

