  .text
  .globl __ratio
  .type __ratio, @function

#! file-offset 0x7e920
#! rip-offset  0x7e920
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
.__ratio:                       #        0x7e920  0      
  movq %rbx, -0x18(%rsp)        #  1     0x7e920  5      
  movq %r12, -0x10(%rsp)        #  2     0x7e925  5      
  movl %esi, %ebx               #  3     0x7e92a  2      
  movq %r13, -0x8(%rsp)         #  4     0x7e92c  5      
  subl $0x40, %esp              #  5     0x7e931  3      
  addq %r15, %rsp               #  6     0x7e934  3      
  movl %edi, %r12d              #  7     0x7e937  3      
  leal 0x24(%rsp), %esi         #  8     0x7e93a  4      
  xchgw %ax, %ax                #  9     0x7e93e  3      
  movl %r12d, %edi              #  10    0x7e941  3      
  nop                           #  11    0x7e944  1      
  nop                           #  12    0x7e945  1      
  callq .__b2d                  #  13    0x7e946  5      
  leal 0x20(%rsp), %esi         #  14    0x7e94b  4      
  movapd %xmm0, %xmm1           #  15    0x7e94f  4      
  movl %ebx, %edi               #  16    0x7e953  2      
  movsd %xmm0, (%rsp)           #  17    0x7e955  5      
  movq (%rsp), %r13             #  18    0x7e95a  4      
  movsd %xmm1, 0x8(%rsp)        #  19    0x7e95e  6      
  xchgw %ax, %ax                #  20    0x7e964  3      
  callq .__b2d                  #  21    0x7e967  5      
  movl %r12d, %r12d             #  22    0x7e96c  3      
  movl 0x10(%r15,%r12,1), %eax  #  23    0x7e96f  5      
  movsd %xmm0, (%rsp)           #  24    0x7e974  5      
  movl %ebx, %ebx               #  25    0x7e979  2      
  subl 0x10(%r15,%rbx,1), %eax  #  26    0x7e97b  5      
  movl 0x24(%rsp), %edx         #  27    0x7e980  4      
  subl 0x20(%rsp), %edx         #  28    0x7e984  4      
  movq (%rsp), %rcx             #  29    0x7e988  4      
  movsd 0x8(%rsp), %xmm1        #  30    0x7e98c  6      
  shll $0x5, %eax               #  31    0x7e992  3      
  leal (%rdx,%rax,1), %eax      #  32    0x7e995  3      
  testl %eax, %eax              #  33    0x7e998  2      
  jle .L_7ea20                  #  34    0x7e99a  6      
  movq %r13, %rcx               #  35    0x7e9a0  3      
  shll $0x14, %eax              #  36    0x7e9a3  3      
  andl $0xffffffff, %r13d       #  37    0x7e9a6  7      
  shrq $0x20, %rcx              #  38    0x7e9ad  4      
  addl %ecx, %eax               #  39    0x7e9b1  2      
  shlq $0x20, %rax              #  40    0x7e9b3  4      
  orq %rax, %r13                #  41    0x7e9b7  3      
  movq %r13, (%rsp)             #  42    0x7e9ba  4      
  movsd (%rsp), %xmm1           #  43    0x7e9be  5      
  nop                           #  44    0x7e9c3  1      
  nop                           #  45    0x7e9c4  1      
.L_7e9e0:                       #        0x7e9c5  0      
  divsd %xmm0, %xmm1            #  46    0x7e9c5  4      
  movq 0x28(%rsp), %rbx         #  47    0x7e9c9  5      
  movq 0x30(%rsp), %r12         #  48    0x7e9ce  5      
  movq 0x38(%rsp), %r13         #  49    0x7e9d3  5      
  addl $0x40, %esp              #  50    0x7e9d8  3      
  addq %r15, %rsp               #  51    0x7e9db  3      
  popq %r11                     #  52    0x7e9de  3      
  movapd %xmm1, %xmm0           #  53    0x7e9e1  4      
  nop                           #  54    0x7e9e5  1      
  andl $0xffffffe0, %r11d       #  55    0x7e9e6  7      
  addq %r15, %r11               #  56    0x7e9ed  3      
  jmpq %r11                     #  57    0x7e9f0  3      
  nop                           #  58    0x7e9f3  1      
  nop                           #  59    0x7e9f4  1      
.L_7ea20:                       #        0x7e9f5  0      
  movl %eax, %edx               #  60    0x7e9f5  2      
  movq %rcx, %rax               #  61    0x7e9f7  3      
  andl $0xffffffff, %ecx        #  62    0x7e9fa  6      
  shll $0x14, %edx              #  63    0x7ea00  3      
  shrq $0x20, %rax              #  64    0x7ea03  4      
  subl %edx, %eax               #  65    0x7ea07  2      
  shlq $0x20, %rax              #  66    0x7ea09  4      
  orq %rax, %rcx                #  67    0x7ea0d  3      
  movq %rcx, (%rsp)             #  68    0x7ea10  4      
  nop                           #  69    0x7ea14  1      
  movsd (%rsp), %xmm0           #  70    0x7ea15  5      
  jmpq .L_7e9e0                 #  71    0x7ea1a  5      
  nop                           #  72    0x7ea1f  1      
  nop                           #  73    0x7ea20  1      
                                                         
.size __ratio, .-__ratio

