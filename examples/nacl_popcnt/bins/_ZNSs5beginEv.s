  .text
  .globl _ZNSs5beginEv
  .type _ZNSs5beginEv, @function

#! file-offset 0x48ce0
#! rip-offset  0x48ce0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs5beginEv:                 #        0x48ce0  0      
  pushq %rbx                    #  1     0x48ce0  2      
  movl %edi, %ebx               #  2     0x48ce2  2      
  movl %ebx, %ebx               #  3     0x48ce4  2      
  movl (%r15,%rbx,1), %eax      #  4     0x48ce6  4      
  leal -0xc(%rax), %edx         #  5     0x48cea  3      
  movl %edx, %edx               #  6     0x48ced  2      
  movl 0x8(%r15,%rdx,1), %edx   #  7     0x48cef  5      
  testl %edx, %edx              #  8     0x48cf4  2      
  js .L_48d20                   #  9     0x48cf6  6      
  movl %ebx, %edi               #  10    0x48cfc  2      
  xchgw %ax, %ax                #  11    0x48cfe  3      
  callq ._ZNSs12_M_leak_hardEv  #  12    0x48d01  5      
  movl %ebx, %ebx               #  13    0x48d06  2      
  movl (%r15,%rbx,1), %eax      #  14    0x48d08  4      
  nop                           #  15    0x48d0c  1      
  nop                           #  16    0x48d0d  1      
.L_48d20:                       #        0x48d0e  0      
  popq %rbx                     #  17    0x48d0e  2      
  popq %r11                     #  18    0x48d10  3      
  andl $0xffffffe0, %r11d       #  19    0x48d13  7      
  addq %r15, %r11               #  20    0x48d1a  3      
  jmpq %r11                     #  21    0x48d1d  3      
  nop                           #  22    0x48d20  1      
  nop                           #  23    0x48d21  1      
  nop                           #  24    0x48d22  1      
  nop                           #  25    0x48d23  1      
  nop                           #  26    0x48d24  1      
  nop                           #  27    0x48d25  1      
  nop                           #  28    0x48d26  1      
  nop                           #  29    0x48d27  1      
  nop                           #  30    0x48d28  1      
  nop                           #  31    0x48d29  1      
  nop                           #  32    0x48d2a  1      
  nop                           #  33    0x48d2b  1      
  nop                           #  34    0x48d2c  1      
  nop                           #  35    0x48d2d  1      
  nop                           #  36    0x48d2e  1      
  nop                           #  37    0x48d2f  1      
  nop                           #  38    0x48d30  1      
  nop                           #  39    0x48d31  1      
  nop                           #  40    0x48d32  1      
                                                         
.size _ZNSs5beginEv, .-_ZNSs5beginEv

