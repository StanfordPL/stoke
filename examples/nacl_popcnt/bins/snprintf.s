  .text
  .globl snprintf
  .type snprintf, @function

#! file-offset 0x6a8a0
#! rip-offset  0x6a8a0
#! capacity    512 bytes

# Text                              #  Line  RIP      Bytes  
.snprintf:                          #        0x6a8a0  0      
  movq %rbx, -0x20(%rsp)            #  1     0x6a8a0  5      
  movq %r12, -0x18(%rsp)            #  2     0x6a8a5  5      
  movl %esi, %ebx                   #  3     0x6a8aa  2      
  movq %r13, -0x10(%rsp)            #  4     0x6a8ac  5      
  movq %r14, -0x8(%rsp)             #  5     0x6a8b1  5      
  subl $0x168, %esp                 #  6     0x6a8b6  6      
  addq %r15, %rsp                   #  7     0x6a8bc  3      
  nop                               #  8     0x6a8bf  1      
  leal 0x13f(%rsp), %eax            #  9     0x6a8c0  7      
  movq %rcx, 0xa8(%rsp)             #  10    0x6a8c7  8      
  movq %r8, 0xb0(%rsp)              #  11    0x6a8cf  8      
  movq %r9, 0xb8(%rsp)              #  12    0x6a8d7  8      
  nop                               #  13    0x6a8df  1      
  movl %edi, %r14d                  #  14    0x6a8e0  3      
  movl %edx, %r13d                  #  15    0x6a8e3  3      
  movl %eax, %eax                   #  16    0x6a8e6  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  17    0x6a8e8  6      
  movl %eax, %eax                   #  18    0x6a8ee  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  19    0x6a8f0  6      
  movl %eax, %eax                   #  20    0x6a8f6  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  21    0x6a8f8  6      
  xchgw %ax, %ax                    #  22    0x6a8fe  3      
  movl %eax, %eax                   #  23    0x6a901  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  24    0x6a903  6      
  movl %eax, %eax                   #  25    0x6a909  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  26    0x6a90b  6      
  movl %eax, %eax                   #  27    0x6a911  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  28    0x6a913  6      
  movl %eax, %eax                   #  29    0x6a919  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  30    0x6a91b  6      
  movl %eax, %eax                   #  31    0x6a921  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  32    0x6a923  6      
  nop                               #  33    0x6a929  1      
  nop                               #  34    0x6a92a  1      
  callq .__nacl_read_tp             #  35    0x6a92b  5      
  leaq -0x480(%rax), %rax           #  36    0x6a930  7      
  cmpl $0x0, %ebx                   #  37    0x6a937  3      
  movl %eax, %eax                   #  38    0x6a93a  2      
  movl (%r15,%rax,1), %r12d         #  39    0x6a93c  4      
  jl .L_6aa80                       #  40    0x6a940  6      
  leal -0x1(%rbx), %edx             #  41    0x6a946  3      
  xorl %eax, %eax                   #  42    0x6a949  2      
  testl %ebx, %ebx                  #  43    0x6a94b  2      
  nop                               #  44    0x6a94d  1      
  leal 0x80(%rsp), %ecx             #  45    0x6a94e  7      
  movl %esp, %esi                   #  46    0x6a955  2      
  movl %r12d, %edi                  #  47    0x6a957  3      
  cmovnel %edx, %eax                #  48    0x6a95a  3      
  movl %r13d, %edx                  #  49    0x6a95d  3      
  movw $0x208, 0xc(%rsp)            #  50    0x6a960  7      
  movl %eax, 0x8(%rsp)              #  51    0x6a967  4      
  nop                               #  52    0x6a96b  1      
  movl %eax, 0x14(%rsp)             #  53    0x6a96c  4      
  leal 0x170(%rsp), %eax            #  54    0x6a970  7      
  movl %r14d, (%rsp)                #  55    0x6a977  4      
  movl %r14d, 0x10(%rsp)            #  56    0x6a97b  5      
  movl %eax, 0x88(%rsp)             #  57    0x6a980  7      
  nop                               #  58    0x6a987  1      
  leal 0x90(%rsp), %eax             #  59    0x6a988  7      
  movw $0xffff, 0xe(%rsp)           #  60    0x6a98f  7      
  movl $0x18, 0x80(%rsp)            #  61    0x6a996  11     
  nop                               #  62    0x6a9a1  1      
  movl $0x30, 0x84(%rsp)            #  63    0x6a9a2  11     
  movl %eax, 0x8c(%rsp)             #  64    0x6a9ad  7      
  nop                               #  65    0x6a9b4  1      
  callq ._svfprintf_r               #  66    0x6a9b5  5      
  cmpl $0xffffffff, %eax            #  67    0x6a9ba  5      
  jl .L_6aa60                       #  68    0x6a9bf  6      
  nop                               #  69    0x6a9c5  1      
  nop                               #  70    0x6a9c6  1      
.L_6aa00:                           #        0x6a9c7  0      
  testl %ebx, %ebx                  #  71    0x6a9c7  2      
  je .L_6aa20                       #  72    0x6a9c9  6      
  movl (%rsp), %edx                 #  73    0x6a9cf  3      
  movl %edx, %edx                   #  74    0x6a9d2  2      
  movb $0x0, (%r15,%rdx,1)          #  75    0x6a9d4  5      
  nop                               #  76    0x6a9d9  1      
  nop                               #  77    0x6a9da  1      
.L_6aa20:                           #        0x6a9db  0      
  movq 0x148(%rsp), %rbx            #  78    0x6a9db  8      
  movq 0x150(%rsp), %r12            #  79    0x6a9e3  8      
  movq 0x158(%rsp), %r13            #  80    0x6a9eb  8      
  movq 0x160(%rsp), %r14            #  81    0x6a9f3  8      
  addl $0x168, %esp                 #  82    0x6a9fb  6      
  addq %r15, %rsp                   #  83    0x6aa01  3      
  popq %r11                         #  84    0x6aa04  3      
  andl $0xffffffe0, %r11d           #  85    0x6aa07  7      
  addq %r15, %r11                   #  86    0x6aa0e  3      
  jmpq %r11                         #  87    0x6aa11  3      
  nop                               #  88    0x6aa14  1      
.L_6aa60:                           #        0x6aa15  0      
  movl %r12d, %r12d                 #  89    0x6aa15  3      
  movl $0x4b, (%r15,%r12,1)         #  90    0x6aa18  8      
  jmpq .L_6aa00                     #  91    0x6aa20  5      
  nop                               #  92    0x6aa25  1      
  nop                               #  93    0x6aa26  1      
.L_6aa80:                           #        0x6aa27  0      
  movl %r12d, %r12d                 #  94    0x6aa27  3      
  movl $0x4b, (%r15,%r12,1)         #  95    0x6aa2a  8      
  movl $0xffffffff, %eax            #  96    0x6aa32  5      
  jmpq .L_6aa20                     #  97    0x6aa37  5      
  nop                               #  98    0x6aa3c  1      
                                                             
.size snprintf, .-snprintf

