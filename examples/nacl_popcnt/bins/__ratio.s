  .text
  .globl __ratio
  .type __ratio, @function

#! file-offset 0x7e9c0
#! rip-offset  0x7e9c0
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
.__ratio:                       #        0x7e9c0  0      
  movq %rbx, -0x18(%rsp)        #  1     0x7e9c0  5      
  movq %r12, -0x10(%rsp)        #  2     0x7e9c5  5      
  movl %esi, %ebx               #  3     0x7e9ca  2      
  movq %r13, -0x8(%rsp)         #  4     0x7e9cc  5      
  subl $0x40, %esp              #  5     0x7e9d1  3      
  addq %r15, %rsp               #  6     0x7e9d4  3      
  movl %edi, %r12d              #  7     0x7e9d7  3      
  leal 0x24(%rsp), %esi         #  8     0x7e9da  4      
  xchgw %ax, %ax                #  9     0x7e9de  3      
  movl %r12d, %edi              #  10    0x7e9e1  3      
  nop                           #  11    0x7e9e4  1      
  nop                           #  12    0x7e9e5  1      
  callq .__b2d                  #  13    0x7e9e6  5      
  leal 0x20(%rsp), %esi         #  14    0x7e9eb  4      
  movapd %xmm0, %xmm1           #  15    0x7e9ef  4      
  movl %ebx, %edi               #  16    0x7e9f3  2      
  movsd %xmm0, (%rsp)           #  17    0x7e9f5  5      
  movq (%rsp), %r13             #  18    0x7e9fa  4      
  movsd %xmm1, 0x8(%rsp)        #  19    0x7e9fe  6      
  xchgw %ax, %ax                #  20    0x7ea04  3      
  callq .__b2d                  #  21    0x7ea07  5      
  movl %r12d, %r12d             #  22    0x7ea0c  3      
  movl 0x10(%r15,%r12,1), %eax  #  23    0x7ea0f  5      
  movsd %xmm0, (%rsp)           #  24    0x7ea14  5      
  movl %ebx, %ebx               #  25    0x7ea19  2      
  subl 0x10(%r15,%rbx,1), %eax  #  26    0x7ea1b  5      
  movl 0x24(%rsp), %edx         #  27    0x7ea20  4      
  subl 0x20(%rsp), %edx         #  28    0x7ea24  4      
  movq (%rsp), %rcx             #  29    0x7ea28  4      
  movsd 0x8(%rsp), %xmm1        #  30    0x7ea2c  6      
  shll $0x5, %eax               #  31    0x7ea32  3      
  leal (%rdx,%rax,1), %eax      #  32    0x7ea35  3      
  testl %eax, %eax              #  33    0x7ea38  2      
  jle .L_7eac0                  #  34    0x7ea3a  6      
  movq %r13, %rcx               #  35    0x7ea40  3      
  shll $0x14, %eax              #  36    0x7ea43  3      
  andl $0xffffffff, %r13d       #  37    0x7ea46  7      
  shrq $0x20, %rcx              #  38    0x7ea4d  4      
  addl %ecx, %eax               #  39    0x7ea51  2      
  shlq $0x20, %rax              #  40    0x7ea53  4      
  orq %rax, %r13                #  41    0x7ea57  3      
  movq %r13, (%rsp)             #  42    0x7ea5a  4      
  movsd (%rsp), %xmm1           #  43    0x7ea5e  5      
  nop                           #  44    0x7ea63  1      
  nop                           #  45    0x7ea64  1      
.L_7ea80:                       #        0x7ea65  0      
  divsd %xmm0, %xmm1            #  46    0x7ea65  4      
  movq 0x28(%rsp), %rbx         #  47    0x7ea69  5      
  movq 0x30(%rsp), %r12         #  48    0x7ea6e  5      
  movq 0x38(%rsp), %r13         #  49    0x7ea73  5      
  addl $0x40, %esp              #  50    0x7ea78  3      
  addq %r15, %rsp               #  51    0x7ea7b  3      
  popq %r11                     #  52    0x7ea7e  3      
  movapd %xmm1, %xmm0           #  53    0x7ea81  4      
  nop                           #  54    0x7ea85  1      
  andl $0xffffffe0, %r11d       #  55    0x7ea86  7      
  addq %r15, %r11               #  56    0x7ea8d  3      
  jmpq %r11                     #  57    0x7ea90  3      
  nop                           #  58    0x7ea93  1      
  nop                           #  59    0x7ea94  1      
.L_7eac0:                       #        0x7ea95  0      
  movl %eax, %edx               #  60    0x7ea95  2      
  movq %rcx, %rax               #  61    0x7ea97  3      
  andl $0xffffffff, %ecx        #  62    0x7ea9a  6      
  shll $0x14, %edx              #  63    0x7eaa0  3      
  shrq $0x20, %rax              #  64    0x7eaa3  4      
  subl %edx, %eax               #  65    0x7eaa7  2      
  shlq $0x20, %rax              #  66    0x7eaa9  4      
  orq %rax, %rcx                #  67    0x7eaad  3      
  movq %rcx, (%rsp)             #  68    0x7eab0  4      
  nop                           #  69    0x7eab4  1      
  movsd (%rsp), %xmm0           #  70    0x7eab5  5      
  jmpq .L_7ea80                 #  71    0x7eaba  5      
  nop                           #  72    0x7eabf  1      
  nop                           #  73    0x7eac0  1      
                                                         
.size __ratio, .-__ratio

