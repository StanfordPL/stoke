  .text
  .globl _ZNSs4rendEv
  .type _ZNSs4rendEv, @function

#! file-offset 0x48d40
#! rip-offset  0x48d40
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs4rendEv:                  #        0x48d40  0      
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
  movl 0x8(%r15,%rdx,1), %ecx   #  12    0x48d63  5      
  testl %ecx, %ecx              #  13    0x48d68  2      
  js .L_48da0                   #  14    0x48d6a  6      
  movl %ebx, %edi               #  15    0x48d70  2      
  nop                           #  16    0x48d72  1      
  callq ._ZNSs12_M_leak_hardEv  #  17    0x48d73  5      
  movl %ebx, %ebx               #  18    0x48d78  2      
  movl (%r15,%rbx,1), %eax      #  19    0x48d7a  4      
  nop                           #  20    0x48d7e  1      
  nop                           #  21    0x48d7f  1      
.L_48da0:                       #        0x48d80  0      
  movl %r12d, %r12d             #  22    0x48d80  3      
  movl %eax, (%r15,%r12,1)      #  23    0x48d83  4      
  movq 0x8(%rsp), %rbx          #  24    0x48d87  5      
  movl %r12d, %eax              #  25    0x48d8c  3      
  movq 0x10(%rsp), %r12         #  26    0x48d8f  5      
  addl $0x18, %esp              #  27    0x48d94  3      
  addq %r15, %rsp               #  28    0x48d97  3      
  popq %r11                     #  29    0x48d9a  3      
  nop                           #  30    0x48d9d  1      
  andl $0xffffffe0, %r11d       #  31    0x48d9e  7      
  addq %r15, %r11               #  32    0x48da5  3      
  jmpq %r11                     #  33    0x48da8  3      
  nop                           #  34    0x48dab  1      
  nop                           #  35    0x48dac  1      
  nop                           #  36    0x48dad  1      
  nop                           #  37    0x48dae  1      
  nop                           #  38    0x48daf  1      
  nop                           #  39    0x48db0  1      
  nop                           #  40    0x48db1  1      
  nop                           #  41    0x48db2  1      
  nop                           #  42    0x48db3  1      
  nop                           #  43    0x48db4  1      
  nop                           #  44    0x48db5  1      
  nop                           #  45    0x48db6  1      
  nop                           #  46    0x48db7  1      
  nop                           #  47    0x48db8  1      
  nop                           #  48    0x48db9  1      
  nop                           #  49    0x48dba  1      
  nop                           #  50    0x48dbb  1      
  nop                           #  51    0x48dbc  1      
  nop                           #  52    0x48dbd  1      
  nop                           #  53    0x48dbe  1      
  nop                           #  54    0x48dbf  1      
  nop                           #  55    0x48dc0  1      
                                                         
.size _ZNSs4rendEv, .-_ZNSs4rendEv

