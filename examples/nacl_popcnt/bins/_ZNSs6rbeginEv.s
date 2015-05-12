  .text
  .globl _ZNSs6rbeginEv
  .type _ZNSs6rbeginEv, @function

#! file-offset 0x48d60
#! rip-offset  0x48d60
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs6rbeginEv:                #        0x48d60  0      
  movq %rbx, -0x10(%rsp)        #  1     0x48d60  5      
  movl %esi, %ebx               #  2     0x48d65  2      
  movq %r12, -0x8(%rsp)         #  3     0x48d67  5      
  subl $0x18, %esp              #  4     0x48d6c  3      
  addq %r15, %rsp               #  5     0x48d6f  3      
  movl %ebx, %ebx               #  6     0x48d72  2      
  movl (%r15,%rbx,1), %eax      #  7     0x48d74  4      
  movl %edi, %r12d              #  8     0x48d78  3      
  leal -0xc(%rax), %edx         #  9     0x48d7b  3      
  xchgw %ax, %ax                #  10    0x48d7e  3      
  movl %edx, %edx               #  11    0x48d81  2      
  movl 0x8(%r15,%rdx,1), %esi   #  12    0x48d83  5      
  testl %esi, %esi              #  13    0x48d88  2      
  js .L_48dc0                   #  14    0x48d8a  6      
  movl %ebx, %edi               #  15    0x48d90  2      
  nop                           #  16    0x48d92  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48d93  5      
  movl %ebx, %ebx               #  18    0x48d98  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48d9a  4      
  leal -0xc(%rax), %edx         #  20    0x48d9e  3      
  nop                           #  21    0x48da1  1      
  nop                           #  22    0x48da2  1      
.L_48dc0:                       #        0x48da3  0      
  movl %edx, %edx               #  23    0x48da3  2      
  addl (%r15,%rdx,1), %eax      #  24    0x48da5  4      
  movq 0x8(%rsp), %rbx          #  25    0x48da9  5      
  movl %r12d, %r12d             #  26    0x48dae  3      
  movl %eax, (%r15,%r12,1)      #  27    0x48db1  4      
  movl %r12d, %eax              #  28    0x48db5  3      
  movq 0x10(%rsp), %r12         #  29    0x48db8  5      
  addl $0x18, %esp              #  30    0x48dbd  3      
  addq %r15, %rsp               #  31    0x48dc0  3      
  popq %r11                     #  32    0x48dc3  3      
  andl $0xffffffe0, %r11d       #  33    0x48dc6  7      
  addq %r15, %r11               #  34    0x48dcd  3      
  jmpq %r11                     #  35    0x48dd0  3      
  nop                           #  36    0x48dd3  1      
  nop                           #  37    0x48dd4  1      
  nop                           #  38    0x48dd5  1      
  nop                           #  39    0x48dd6  1      
  nop                           #  40    0x48dd7  1      
  nop                           #  41    0x48dd8  1      
  nop                           #  42    0x48dd9  1      
  nop                           #  43    0x48dda  1      
  nop                           #  44    0x48ddb  1      
  nop                           #  45    0x48ddc  1      
  nop                           #  46    0x48ddd  1      
  nop                           #  47    0x48dde  1      
  nop                           #  48    0x48ddf  1      
  nop                           #  49    0x48de0  1      
  nop                           #  50    0x48de1  1      
  nop                           #  51    0x48de2  1      
  nop                           #  52    0x48de3  1      
  nop                           #  53    0x48de4  1      
  nop                           #  54    0x48de5  1      
  nop                           #  55    0x48de6  1      
                                                         
.size _ZNSs6rbeginEv, .-_ZNSs6rbeginEv

