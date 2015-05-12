  .text
  .globl _ZNSs3endEv
  .type _ZNSs3endEv, @function

#! file-offset 0x48c00
#! rip-offset  0x48c00
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs3endEv:                   #        0x48c00  0      
  pushq %rbx                    #  1     0x48c00  2      
  movl %edi, %ebx               #  2     0x48c02  2      
  movl %ebx, %ebx               #  3     0x48c04  2      
  movl (%r15,%rbx,1), %eax      #  4     0x48c06  4      
  leal -0xc(%rax), %edx         #  5     0x48c0a  3      
  movl %edx, %edx               #  6     0x48c0d  2      
  movl 0x8(%r15,%rdx,1), %r11d  #  7     0x48c0f  5      
  testl %r11d, %r11d            #  8     0x48c14  3      
  js .L_48c40                   #  9     0x48c17  6      
  movl %ebx, %edi               #  10    0x48c1d  2      
  nop                           #  11    0x48c1f  1      
  callq ._ZNSs12_M_leak_hardEv  #  12    0x48c20  5      
  movl %ebx, %ebx               #  13    0x48c25  2      
  movl (%r15,%rbx,1), %eax      #  14    0x48c27  4      
  leal -0xc(%rax), %edx         #  15    0x48c2b  3      
  nop                           #  16    0x48c2e  1      
  nop                           #  17    0x48c2f  1      
.L_48c40:                       #        0x48c30  0      
  popq %rbx                     #  18    0x48c30  2      
  popq %r11                     #  19    0x48c32  3      
  movl %edx, %edx               #  20    0x48c35  2      
  addl (%r15,%rdx,1), %eax      #  21    0x48c37  4      
  andl $0xffffffe0, %r11d       #  22    0x48c3b  7      
  addq %r15, %r11               #  23    0x48c42  3      
  jmpq %r11                     #  24    0x48c45  3      
  nop                           #  25    0x48c48  1      
  nop                           #  26    0x48c49  1      
  nop                           #  27    0x48c4a  1      
  nop                           #  28    0x48c4b  1      
  nop                           #  29    0x48c4c  1      
  nop                           #  30    0x48c4d  1      
  nop                           #  31    0x48c4e  1      
  nop                           #  32    0x48c4f  1      
  nop                           #  33    0x48c50  1      
  nop                           #  34    0x48c51  1      
  nop                           #  35    0x48c52  1      
  nop                           #  36    0x48c53  1      
  nop                           #  37    0x48c54  1      
                                                         
.size _ZNSs3endEv, .-_ZNSs3endEv

