  .text
  .globl _snprintf_r
  .type _snprintf_r, @function

#! file-offset 0x6aa00
#! rip-offset  0x6aa00
#! capacity    416 bytes

# Text                              #  Line  RIP      Bytes  
._snprintf_r:                       #        0x6aa00  0      
  pushq %r12                        #  1     0x6aa00  3      
  movl %esi, %esi                   #  2     0x6aa03  2      
  movl %edi, %r12d                  #  3     0x6aa05  3      
  pushq %rbx                        #  4     0x6aa08  2      
  movl %edx, %ebx                   #  5     0x6aa0a  2      
  movl %ecx, %edx                   #  6     0x6aa0c  2      
  subl $0x148, %esp                 #  7     0x6aa0e  6      
  addq %r15, %rsp                   #  8     0x6aa14  3      
  cmpl $0x0, %ebx                   #  9     0x6aa17  3      
  leal 0x13f(%rsp), %eax            #  10    0x6aa1a  7      
  nop                               #  11    0x6aa21  1      
  movq %r8, 0xb0(%rsp)              #  12    0x6aa22  8      
  movq %r9, 0xb8(%rsp)              #  13    0x6aa2a  8      
  movl %eax, %eax                   #  14    0x6aa32  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x6aa34  6      
  movl %eax, %eax                   #  16    0x6aa3a  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x6aa3c  6      
  movl %eax, %eax                   #  18    0x6aa42  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  19    0x6aa44  6      
  movl %eax, %eax                   #  20    0x6aa4a  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  21    0x6aa4c  6      
  movl %eax, %eax                   #  22    0x6aa52  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  23    0x6aa54  6      
  movl %eax, %eax                   #  24    0x6aa5a  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  25    0x6aa5c  6      
  movl %eax, %eax                   #  26    0x6aa62  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  27    0x6aa64  6      
  movl %eax, %eax                   #  28    0x6aa6a  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  29    0x6aa6c  6      
  jl .L_6ab80                       #  30    0x6aa72  6      
  leal -0x1(%rbx), %ecx             #  31    0x6aa78  3      
  xorl %eax, %eax                   #  32    0x6aa7b  2      
  testl %ebx, %ebx                  #  33    0x6aa7d  2      
  movl %esi, (%rsp)                 #  34    0x6aa7f  3      
  movl %esi, 0x10(%rsp)             #  35    0x6aa82  4      
  movl %r12d, %edi                  #  36    0x6aa86  3      
  cmovnel %ecx, %eax                #  37    0x6aa89  3      
  leal 0x80(%rsp), %ecx             #  38    0x6aa8c  7      
  movl %esp, %esi                   #  39    0x6aa93  2      
  movl %eax, 0x8(%rsp)              #  40    0x6aa95  4      
  movl %eax, 0x14(%rsp)             #  41    0x6aa99  4      
  nop                               #  42    0x6aa9d  1      
  leal 0x160(%rsp), %eax            #  43    0x6aa9e  7      
  movw $0x208, 0xc(%rsp)            #  44    0x6aaa5  7      
  movw $0xffff, 0xe(%rsp)           #  45    0x6aaac  7      
  movl %eax, 0x88(%rsp)             #  46    0x6aab3  7      
  nop                               #  47    0x6aaba  1      
  leal 0x90(%rsp), %eax             #  48    0x6aabb  7      
  movl $0x20, 0x80(%rsp)            #  49    0x6aac2  11     
  movl $0x30, 0x84(%rsp)            #  50    0x6aacd  11     
  nop                               #  51    0x6aad8  1      
  movl %eax, 0x8c(%rsp)             #  52    0x6aad9  7      
  nop                               #  53    0x6aae0  1      
  nop                               #  54    0x6aae1  1      
  callq ._svfprintf_r               #  55    0x6aae2  5      
  cmpl $0xffffffff, %eax            #  56    0x6aae7  5      
  jl .L_6ab60                       #  57    0x6aaec  6      
  nop                               #  58    0x6aaf2  1      
  nop                               #  59    0x6aaf3  1      
.L_6ab20:                           #        0x6aaf4  0      
  testl %ebx, %ebx                  #  60    0x6aaf4  2      
  je .L_6ab40                       #  61    0x6aaf6  6      
  movl (%rsp), %edx                 #  62    0x6aafc  3      
  movl %edx, %edx                   #  63    0x6aaff  2      
  movb $0x0, (%r15,%rdx,1)          #  64    0x6ab01  5      
  nop                               #  65    0x6ab06  1      
  nop                               #  66    0x6ab07  1      
.L_6ab40:                           #        0x6ab08  0      
  addl $0x148, %esp                 #  67    0x6ab08  6      
  addq %r15, %rsp                   #  68    0x6ab0e  3      
  popq %rbx                         #  69    0x6ab11  2      
  popq %r12                         #  70    0x6ab13  3      
  popq %r11                         #  71    0x6ab16  3      
  andl $0xffffffe0, %r11d           #  72    0x6ab19  7      
  addq %r15, %r11                   #  73    0x6ab20  3      
  jmpq %r11                         #  74    0x6ab23  3      
  nop                               #  75    0x6ab26  1      
.L_6ab60:                           #        0x6ab27  0      
  movl %r12d, %r12d                 #  76    0x6ab27  3      
  movl $0x4b, (%r15,%r12,1)         #  77    0x6ab2a  8      
  jmpq .L_6ab20                     #  78    0x6ab32  5      
  nop                               #  79    0x6ab37  1      
  nop                               #  80    0x6ab38  1      
.L_6ab80:                           #        0x6ab39  0      
  movl %r12d, %r12d                 #  81    0x6ab39  3      
  movl $0x4b, (%r15,%r12,1)         #  82    0x6ab3c  8      
  movl $0xffffffff, %eax            #  83    0x6ab44  5      
  jmpq .L_6ab40                     #  84    0x6ab49  5      
  nop                               #  85    0x6ab4e  1      
  nop                               #  86    0x6ab4f  1      
  nop                               #  87    0x6ab50  1      
  nop                               #  88    0x6ab51  1      
  nop                               #  89    0x6ab52  1      
  nop                               #  90    0x6ab53  1      
  nop                               #  91    0x6ab54  1      
  nop                               #  92    0x6ab55  1      
  nop                               #  93    0x6ab56  1      
  nop                               #  94    0x6ab57  1      
  nop                               #  95    0x6ab58  1      
  nop                               #  96    0x6ab59  1      
  nop                               #  97    0x6ab5a  1      
  nop                               #  98    0x6ab5b  1      
                                                             
.size _snprintf_r, .-_snprintf_r

