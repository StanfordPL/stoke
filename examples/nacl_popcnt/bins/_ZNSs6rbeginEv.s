  .text
  .globl _ZNSs6rbeginEv
  .type _ZNSs6rbeginEv, @function

#! file-offset 0x48d40
#! rip-offset  0x48d40
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs6rbeginEv:                #        0x48d40  0      
  movq %rbx, -0x10(%rsp)        #  1     0x48d40  5      
  movl %esi, %ebx               #  2     0x48d45  2      
  movq %r12, -0x8(%rsp)         #  3     0x48d47  5      
  subl $0x18, %esp              #  4     0x48d4c  3      
  addq %r15, %rsp               #  5     0x48d4f  3      
  movl %ebx, %ebx               #  6     0x48d52  2      
  movl (%r15,%rbx,1), %eax      #  7     0x48d54  4      
  movl %edi, %r12d              #  8     0x48d58  3      
  leal -0xc(%rax), %edx         #  9     0x48d5b  3      
  xchgw %ax, %ax                #  10    0x48d5e  3      
  movl %edx, %edx               #  11    0x48d61  2      
  movl 0x8(%r15,%rdx,1), %esi   #  12    0x48d63  5      
  testl %esi, %esi              #  13    0x48d68  2      
  js .L_48da0                   #  14    0x48d6a  6      
  movl %ebx, %edi               #  15    0x48d70  2      
  nop                           #  16    0x48d72  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48d73  5      
  movl %ebx, %ebx               #  18    0x48d78  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48d7a  4      
  leal -0xc(%rax), %edx         #  20    0x48d7e  3      
  nop                           #  21    0x48d81  1      
  nop                           #  22    0x48d82  1      
.L_48da0:                       #        0x48d83  0      
  movl %edx, %edx               #  23    0x48d83  2      
  addl (%r15,%rdx,1), %eax      #  24    0x48d85  4      
  movq 0x8(%rsp), %rbx          #  25    0x48d89  5      
  movl %r12d, %r12d             #  26    0x48d8e  3      
  movl %eax, (%r15,%r12,1)      #  27    0x48d91  4      
  movl %r12d, %eax              #  28    0x48d95  3      
  movq 0x10(%rsp), %r12         #  29    0x48d98  5      
  addl $0x18, %esp              #  30    0x48d9d  3      
  addq %r15, %rsp               #  31    0x48da0  3      
  popq %r11                     #  32    0x48da3  3      
  andl $0xffffffe0, %r11d       #  33    0x48da6  7      
  addq %r15, %r11               #  34    0x48dad  3      
  jmpq %r11                     #  35    0x48db0  3      
  nop                           #  36    0x48db3  1      
  nop                           #  37    0x48db4  1      
  nop                           #  38    0x48db5  1      
  nop                           #  39    0x48db6  1      
  nop                           #  40    0x48db7  1      
  nop                           #  41    0x48db8  1      
  nop                           #  42    0x48db9  1      
  nop                           #  43    0x48dba  1      
  nop                           #  44    0x48dbb  1      
  nop                           #  45    0x48dbc  1      
  nop                           #  46    0x48dbd  1      
  nop                           #  47    0x48dbe  1      
  nop                           #  48    0x48dbf  1      
  nop                           #  49    0x48dc0  1      
  nop                           #  50    0x48dc1  1      
  nop                           #  51    0x48dc2  1      
  nop                           #  52    0x48dc3  1      
  nop                           #  53    0x48dc4  1      
  nop                           #  54    0x48dc5  1      
  nop                           #  55    0x48dc6  1      
                                                         
.size _ZNSs6rbeginEv, .-_ZNSs6rbeginEv

