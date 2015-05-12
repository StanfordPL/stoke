  .text
  .globl __ratio
  .type __ratio, @function

#! file-offset 0x7e940
#! rip-offset  0x7e940
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
.__ratio:                       #        0x7e940  0      
  movq %rbx, -0x18(%rsp)        #  1     0x7e940  5      
  movq %r12, -0x10(%rsp)        #  2     0x7e945  5      
  movl %esi, %ebx               #  3     0x7e94a  2      
  movq %r13, -0x8(%rsp)         #  4     0x7e94c  5      
  subl $0x40, %esp              #  5     0x7e951  3      
  addq %r15, %rsp               #  6     0x7e954  3      
  movl %edi, %r12d              #  7     0x7e957  3      
  leal 0x24(%rsp), %esi         #  8     0x7e95a  4      
  xchgw %ax, %ax                #  9     0x7e95e  3      
  movl %r12d, %edi              #  10    0x7e961  3      
  nop                           #  11    0x7e964  1      
  nop                           #  12    0x7e965  1      
  callq .__b2d                  #  13    0x7e966  5      
  leal 0x20(%rsp), %esi         #  14    0x7e96b  4      
  movapd %xmm0, %xmm1           #  15    0x7e96f  4      
  movl %ebx, %edi               #  16    0x7e973  2      
  movsd %xmm0, (%rsp)           #  17    0x7e975  5      
  movq (%rsp), %r13             #  18    0x7e97a  4      
  movsd %xmm1, 0x8(%rsp)        #  19    0x7e97e  6      
  xchgw %ax, %ax                #  20    0x7e984  3      
  callq .__b2d                  #  21    0x7e987  5      
  movl %r12d, %r12d             #  22    0x7e98c  3      
  movl 0x10(%r15,%r12,1), %eax  #  23    0x7e98f  5      
  movsd %xmm0, (%rsp)           #  24    0x7e994  5      
  movl %ebx, %ebx               #  25    0x7e999  2      
  subl 0x10(%r15,%rbx,1), %eax  #  26    0x7e99b  5      
  movl 0x24(%rsp), %edx         #  27    0x7e9a0  4      
  subl 0x20(%rsp), %edx         #  28    0x7e9a4  4      
  movq (%rsp), %rcx             #  29    0x7e9a8  4      
  movsd 0x8(%rsp), %xmm1        #  30    0x7e9ac  6      
  shll $0x5, %eax               #  31    0x7e9b2  3      
  leal (%rdx,%rax,1), %eax      #  32    0x7e9b5  3      
  testl %eax, %eax              #  33    0x7e9b8  2      
  jle .L_7ea40                  #  34    0x7e9ba  6      
  movq %r13, %rcx               #  35    0x7e9c0  3      
  shll $0x14, %eax              #  36    0x7e9c3  3      
  andl $0xffffffff, %r13d       #  37    0x7e9c6  7      
  shrq $0x20, %rcx              #  38    0x7e9cd  4      
  addl %ecx, %eax               #  39    0x7e9d1  2      
  shlq $0x20, %rax              #  40    0x7e9d3  4      
  orq %rax, %r13                #  41    0x7e9d7  3      
  movq %r13, (%rsp)             #  42    0x7e9da  4      
  movsd (%rsp), %xmm1           #  43    0x7e9de  5      
  nop                           #  44    0x7e9e3  1      
  nop                           #  45    0x7e9e4  1      
.L_7ea00:                       #        0x7e9e5  0      
  divsd %xmm0, %xmm1            #  46    0x7e9e5  4      
  movq 0x28(%rsp), %rbx         #  47    0x7e9e9  5      
  movq 0x30(%rsp), %r12         #  48    0x7e9ee  5      
  movq 0x38(%rsp), %r13         #  49    0x7e9f3  5      
  addl $0x40, %esp              #  50    0x7e9f8  3      
  addq %r15, %rsp               #  51    0x7e9fb  3      
  popq %r11                     #  52    0x7e9fe  3      
  movapd %xmm1, %xmm0           #  53    0x7ea01  4      
  nop                           #  54    0x7ea05  1      
  andl $0xffffffe0, %r11d       #  55    0x7ea06  7      
  addq %r15, %r11               #  56    0x7ea0d  3      
  jmpq %r11                     #  57    0x7ea10  3      
  nop                           #  58    0x7ea13  1      
  nop                           #  59    0x7ea14  1      
.L_7ea40:                       #        0x7ea15  0      
  movl %eax, %edx               #  60    0x7ea15  2      
  movq %rcx, %rax               #  61    0x7ea17  3      
  andl $0xffffffff, %ecx        #  62    0x7ea1a  6      
  shll $0x14, %edx              #  63    0x7ea20  3      
  shrq $0x20, %rax              #  64    0x7ea23  4      
  subl %edx, %eax               #  65    0x7ea27  2      
  shlq $0x20, %rax              #  66    0x7ea29  4      
  orq %rax, %rcx                #  67    0x7ea2d  3      
  movq %rcx, (%rsp)             #  68    0x7ea30  4      
  nop                           #  69    0x7ea34  1      
  movsd (%rsp), %xmm0           #  70    0x7ea35  5      
  jmpq .L_7ea00                 #  71    0x7ea3a  5      
  nop                           #  72    0x7ea3f  1      
  nop                           #  73    0x7ea40  1      
                                                         
.size __ratio, .-__ratio

