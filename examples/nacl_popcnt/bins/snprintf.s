  .text
  .globl snprintf
  .type snprintf, @function

#! file-offset 0x6a820
#! rip-offset  0x6a820
#! capacity    512 bytes

# Text                              #  Line  RIP      Bytes  
.snprintf:                          #        0x6a820  0      
  movq %rbx, -0x20(%rsp)            #  1     0x6a820  5      
  movq %r12, -0x18(%rsp)            #  2     0x6a825  5      
  movl %esi, %ebx                   #  3     0x6a82a  2      
  movq %r13, -0x10(%rsp)            #  4     0x6a82c  5      
  movq %r14, -0x8(%rsp)             #  5     0x6a831  5      
  subl $0x168, %esp                 #  6     0x6a836  6      
  addq %r15, %rsp                   #  7     0x6a83c  3      
  nop                               #  8     0x6a83f  1      
  leal 0x13f(%rsp), %eax            #  9     0x6a840  7      
  movq %rcx, 0xa8(%rsp)             #  10    0x6a847  8      
  movq %r8, 0xb0(%rsp)              #  11    0x6a84f  8      
  movq %r9, 0xb8(%rsp)              #  12    0x6a857  8      
  nop                               #  13    0x6a85f  1      
  movl %edi, %r14d                  #  14    0x6a860  3      
  movl %edx, %r13d                  #  15    0x6a863  3      
  movl %eax, %eax                   #  16    0x6a866  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  17    0x6a868  6      
  movl %eax, %eax                   #  18    0x6a86e  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  19    0x6a870  6      
  movl %eax, %eax                   #  20    0x6a876  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  21    0x6a878  6      
  xchgw %ax, %ax                    #  22    0x6a87e  3      
  movl %eax, %eax                   #  23    0x6a881  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  24    0x6a883  6      
  movl %eax, %eax                   #  25    0x6a889  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  26    0x6a88b  6      
  movl %eax, %eax                   #  27    0x6a891  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  28    0x6a893  6      
  movl %eax, %eax                   #  29    0x6a899  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  30    0x6a89b  6      
  movl %eax, %eax                   #  31    0x6a8a1  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  32    0x6a8a3  6      
  nop                               #  33    0x6a8a9  1      
  nop                               #  34    0x6a8aa  1      
  callq .__nacl_read_tp             #  35    0x6a8ab  5      
  leaq -0x480(%rax), %rax           #  36    0x6a8b0  7      
  cmpl $0x0, %ebx                   #  37    0x6a8b7  3      
  movl %eax, %eax                   #  38    0x6a8ba  2      
  movl (%r15,%rax,1), %r12d         #  39    0x6a8bc  4      
  jl .L_6aa00                       #  40    0x6a8c0  6      
  leal -0x1(%rbx), %edx             #  41    0x6a8c6  3      
  xorl %eax, %eax                   #  42    0x6a8c9  2      
  testl %ebx, %ebx                  #  43    0x6a8cb  2      
  nop                               #  44    0x6a8cd  1      
  leal 0x80(%rsp), %ecx             #  45    0x6a8ce  7      
  movl %esp, %esi                   #  46    0x6a8d5  2      
  movl %r12d, %edi                  #  47    0x6a8d7  3      
  cmovnel %edx, %eax                #  48    0x6a8da  3      
  movl %r13d, %edx                  #  49    0x6a8dd  3      
  movw $0x208, 0xc(%rsp)            #  50    0x6a8e0  7      
  movl %eax, 0x8(%rsp)              #  51    0x6a8e7  4      
  nop                               #  52    0x6a8eb  1      
  movl %eax, 0x14(%rsp)             #  53    0x6a8ec  4      
  leal 0x170(%rsp), %eax            #  54    0x6a8f0  7      
  movl %r14d, (%rsp)                #  55    0x6a8f7  4      
  movl %r14d, 0x10(%rsp)            #  56    0x6a8fb  5      
  movl %eax, 0x88(%rsp)             #  57    0x6a900  7      
  nop                               #  58    0x6a907  1      
  leal 0x90(%rsp), %eax             #  59    0x6a908  7      
  movw $0xffff, 0xe(%rsp)           #  60    0x6a90f  7      
  movl $0x18, 0x80(%rsp)            #  61    0x6a916  11     
  nop                               #  62    0x6a921  1      
  movl $0x30, 0x84(%rsp)            #  63    0x6a922  11     
  movl %eax, 0x8c(%rsp)             #  64    0x6a92d  7      
  nop                               #  65    0x6a934  1      
  callq ._svfprintf_r               #  66    0x6a935  5      
  cmpl $0xffffffff, %eax            #  67    0x6a93a  5      
  jl .L_6a9e0                       #  68    0x6a93f  6      
  nop                               #  69    0x6a945  1      
  nop                               #  70    0x6a946  1      
.L_6a980:                           #        0x6a947  0      
  testl %ebx, %ebx                  #  71    0x6a947  2      
  je .L_6a9a0                       #  72    0x6a949  6      
  movl (%rsp), %edx                 #  73    0x6a94f  3      
  movl %edx, %edx                   #  74    0x6a952  2      
  movb $0x0, (%r15,%rdx,1)          #  75    0x6a954  5      
  nop                               #  76    0x6a959  1      
  nop                               #  77    0x6a95a  1      
.L_6a9a0:                           #        0x6a95b  0      
  movq 0x148(%rsp), %rbx            #  78    0x6a95b  8      
  movq 0x150(%rsp), %r12            #  79    0x6a963  8      
  movq 0x158(%rsp), %r13            #  80    0x6a96b  8      
  movq 0x160(%rsp), %r14            #  81    0x6a973  8      
  addl $0x168, %esp                 #  82    0x6a97b  6      
  addq %r15, %rsp                   #  83    0x6a981  3      
  popq %r11                         #  84    0x6a984  3      
  andl $0xffffffe0, %r11d           #  85    0x6a987  7      
  addq %r15, %r11                   #  86    0x6a98e  3      
  jmpq %r11                         #  87    0x6a991  3      
  nop                               #  88    0x6a994  1      
.L_6a9e0:                           #        0x6a995  0      
  movl %r12d, %r12d                 #  89    0x6a995  3      
  movl $0x4b, (%r15,%r12,1)         #  90    0x6a998  8      
  jmpq .L_6a980                     #  91    0x6a9a0  5      
  nop                               #  92    0x6a9a5  1      
  nop                               #  93    0x6a9a6  1      
.L_6aa00:                           #        0x6a9a7  0      
  movl %r12d, %r12d                 #  94    0x6a9a7  3      
  movl $0x4b, (%r15,%r12,1)         #  95    0x6a9aa  8      
  movl $0xffffffff, %eax            #  96    0x6a9b2  5      
  jmpq .L_6a9a0                     #  97    0x6a9b7  5      
  nop                               #  98    0x6a9bc  1      
                                                             
.size snprintf, .-snprintf

