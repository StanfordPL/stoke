  .text
  .globl _ZNSs3endEv
  .type _ZNSs3endEv, @function

#! file-offset 0x48be0
#! rip-offset  0x48be0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs3endEv:                   #        0x48be0  0      
  pushq %rbx                    #  1     0x48be0  2      
  movl %edi, %ebx               #  2     0x48be2  2      
  movl %ebx, %ebx               #  3     0x48be4  2      
  movl (%r15,%rbx,1), %eax      #  4     0x48be6  4      
  leal -0xc(%rax), %edx         #  5     0x48bea  3      
  movl %edx, %edx               #  6     0x48bed  2      
  movl 0x8(%r15,%rdx,1), %r11d  #  7     0x48bef  5      
  testl %r11d, %r11d            #  8     0x48bf4  3      
  js .L_48c20                   #  9     0x48bf7  6      
  movl %ebx, %edi               #  10    0x48bfd  2      
  nop                           #  11    0x48bff  1      
  callq ._ZNSs12_M_leak_hardEv  #  12    0x48c00  5      
  movl %ebx, %ebx               #  13    0x48c05  2      
  movl (%r15,%rbx,1), %eax      #  14    0x48c07  4      
  leal -0xc(%rax), %edx         #  15    0x48c0b  3      
  nop                           #  16    0x48c0e  1      
  nop                           #  17    0x48c0f  1      
.L_48c20:                       #        0x48c10  0      
  popq %rbx                     #  18    0x48c10  2      
  popq %r11                     #  19    0x48c12  3      
  movl %edx, %edx               #  20    0x48c15  2      
  addl (%r15,%rdx,1), %eax      #  21    0x48c17  4      
  andl $0xffffffe0, %r11d       #  22    0x48c1b  7      
  addq %r15, %r11               #  23    0x48c22  3      
  jmpq %r11                     #  24    0x48c25  3      
  nop                           #  25    0x48c28  1      
  nop                           #  26    0x48c29  1      
  nop                           #  27    0x48c2a  1      
  nop                           #  28    0x48c2b  1      
  nop                           #  29    0x48c2c  1      
  nop                           #  30    0x48c2d  1      
  nop                           #  31    0x48c2e  1      
  nop                           #  32    0x48c2f  1      
  nop                           #  33    0x48c30  1      
  nop                           #  34    0x48c31  1      
  nop                           #  35    0x48c32  1      
  nop                           #  36    0x48c33  1      
  nop                           #  37    0x48c34  1      
                                                         
.size _ZNSs3endEv, .-_ZNSs3endEv

