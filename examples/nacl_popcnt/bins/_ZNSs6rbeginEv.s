  .text
  .globl _ZNSs6rbeginEv
  .type _ZNSs6rbeginEv, @function

#! file-offset 0x48de0
#! rip-offset  0x48de0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs6rbeginEv:                #        0x48de0  0      
  movq %rbx, -0x10(%rsp)        #  1     0x48de0  5      
  movl %esi, %ebx               #  2     0x48de5  2      
  movq %r12, -0x8(%rsp)         #  3     0x48de7  5      
  subl $0x18, %esp              #  4     0x48dec  3      
  addq %r15, %rsp               #  5     0x48def  3      
  movl %ebx, %ebx               #  6     0x48df2  2      
  movl (%r15,%rbx,1), %eax      #  7     0x48df4  4      
  movl %edi, %r12d              #  8     0x48df8  3      
  leal -0xc(%rax), %edx         #  9     0x48dfb  3      
  xchgw %ax, %ax                #  10    0x48dfe  3      
  movl %edx, %edx               #  11    0x48e01  2      
  movl 0x8(%r15,%rdx,1), %esi   #  12    0x48e03  5      
  testl %esi, %esi              #  13    0x48e08  2      
  js .L_48e40                   #  14    0x48e0a  6      
  movl %ebx, %edi               #  15    0x48e10  2      
  nop                           #  16    0x48e12  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48e13  5      
  movl %ebx, %ebx               #  18    0x48e18  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48e1a  4      
  leal -0xc(%rax), %edx         #  20    0x48e1e  3      
  nop                           #  21    0x48e21  1      
  nop                           #  22    0x48e22  1      
.L_48e40:                       #        0x48e23  0      
  movl %edx, %edx               #  23    0x48e23  2      
  addl (%r15,%rdx,1), %eax      #  24    0x48e25  4      
  movq 0x8(%rsp), %rbx          #  25    0x48e29  5      
  movl %r12d, %r12d             #  26    0x48e2e  3      
  movl %eax, (%r15,%r12,1)      #  27    0x48e31  4      
  movl %r12d, %eax              #  28    0x48e35  3      
  movq 0x10(%rsp), %r12         #  29    0x48e38  5      
  addl $0x18, %esp              #  30    0x48e3d  3      
  addq %r15, %rsp               #  31    0x48e40  3      
  popq %r11                     #  32    0x48e43  3      
  andl $0xffffffe0, %r11d       #  33    0x48e46  7      
  addq %r15, %r11               #  34    0x48e4d  3      
  jmpq %r11                     #  35    0x48e50  3      
  nop                           #  36    0x48e53  1      
  nop                           #  37    0x48e54  1      
  nop                           #  38    0x48e55  1      
  nop                           #  39    0x48e56  1      
  nop                           #  40    0x48e57  1      
  nop                           #  41    0x48e58  1      
  nop                           #  42    0x48e59  1      
  nop                           #  43    0x48e5a  1      
  nop                           #  44    0x48e5b  1      
  nop                           #  45    0x48e5c  1      
  nop                           #  46    0x48e5d  1      
  nop                           #  47    0x48e5e  1      
  nop                           #  48    0x48e5f  1      
  nop                           #  49    0x48e60  1      
  nop                           #  50    0x48e61  1      
  nop                           #  51    0x48e62  1      
  nop                           #  52    0x48e63  1      
  nop                           #  53    0x48e64  1      
  nop                           #  54    0x48e65  1      
  nop                           #  55    0x48e66  1      
                                                         
.size _ZNSs6rbeginEv, .-_ZNSs6rbeginEv

