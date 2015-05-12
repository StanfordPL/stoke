  .text
  .globl _snprintf_r
  .type _snprintf_r, @function

#! file-offset 0x6aa20
#! rip-offset  0x6aa20
#! capacity    416 bytes

# Text                              #  Line  RIP      Bytes  
._snprintf_r:                       #        0x6aa20  0      
  pushq %r12                        #  1     0x6aa20  3      
  movl %esi, %esi                   #  2     0x6aa23  2      
  movl %edi, %r12d                  #  3     0x6aa25  3      
  pushq %rbx                        #  4     0x6aa28  2      
  movl %edx, %ebx                   #  5     0x6aa2a  2      
  movl %ecx, %edx                   #  6     0x6aa2c  2      
  subl $0x148, %esp                 #  7     0x6aa2e  6      
  addq %r15, %rsp                   #  8     0x6aa34  3      
  cmpl $0x0, %ebx                   #  9     0x6aa37  3      
  leal 0x13f(%rsp), %eax            #  10    0x6aa3a  7      
  nop                               #  11    0x6aa41  1      
  movq %r8, 0xb0(%rsp)              #  12    0x6aa42  8      
  movq %r9, 0xb8(%rsp)              #  13    0x6aa4a  8      
  movl %eax, %eax                   #  14    0x6aa52  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x6aa54  6      
  movl %eax, %eax                   #  16    0x6aa5a  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x6aa5c  6      
  movl %eax, %eax                   #  18    0x6aa62  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  19    0x6aa64  6      
  movl %eax, %eax                   #  20    0x6aa6a  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  21    0x6aa6c  6      
  movl %eax, %eax                   #  22    0x6aa72  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  23    0x6aa74  6      
  movl %eax, %eax                   #  24    0x6aa7a  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  25    0x6aa7c  6      
  movl %eax, %eax                   #  26    0x6aa82  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  27    0x6aa84  6      
  movl %eax, %eax                   #  28    0x6aa8a  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  29    0x6aa8c  6      
  jl .L_6aba0                       #  30    0x6aa92  6      
  leal -0x1(%rbx), %ecx             #  31    0x6aa98  3      
  xorl %eax, %eax                   #  32    0x6aa9b  2      
  testl %ebx, %ebx                  #  33    0x6aa9d  2      
  movl %esi, (%rsp)                 #  34    0x6aa9f  3      
  movl %esi, 0x10(%rsp)             #  35    0x6aaa2  4      
  movl %r12d, %edi                  #  36    0x6aaa6  3      
  cmovnel %ecx, %eax                #  37    0x6aaa9  3      
  leal 0x80(%rsp), %ecx             #  38    0x6aaac  7      
  movl %esp, %esi                   #  39    0x6aab3  2      
  movl %eax, 0x8(%rsp)              #  40    0x6aab5  4      
  movl %eax, 0x14(%rsp)             #  41    0x6aab9  4      
  nop                               #  42    0x6aabd  1      
  leal 0x160(%rsp), %eax            #  43    0x6aabe  7      
  movw $0x208, 0xc(%rsp)            #  44    0x6aac5  7      
  movw $0xffff, 0xe(%rsp)           #  45    0x6aacc  7      
  movl %eax, 0x88(%rsp)             #  46    0x6aad3  7      
  nop                               #  47    0x6aada  1      
  leal 0x90(%rsp), %eax             #  48    0x6aadb  7      
  movl $0x20, 0x80(%rsp)            #  49    0x6aae2  11     
  movl $0x30, 0x84(%rsp)            #  50    0x6aaed  11     
  nop                               #  51    0x6aaf8  1      
  movl %eax, 0x8c(%rsp)             #  52    0x6aaf9  7      
  nop                               #  53    0x6ab00  1      
  nop                               #  54    0x6ab01  1      
  callq ._svfprintf_r               #  55    0x6ab02  5      
  cmpl $0xffffffff, %eax            #  56    0x6ab07  5      
  jl .L_6ab80                       #  57    0x6ab0c  6      
  nop                               #  58    0x6ab12  1      
  nop                               #  59    0x6ab13  1      
.L_6ab40:                           #        0x6ab14  0      
  testl %ebx, %ebx                  #  60    0x6ab14  2      
  je .L_6ab60                       #  61    0x6ab16  6      
  movl (%rsp), %edx                 #  62    0x6ab1c  3      
  movl %edx, %edx                   #  63    0x6ab1f  2      
  movb $0x0, (%r15,%rdx,1)          #  64    0x6ab21  5      
  nop                               #  65    0x6ab26  1      
  nop                               #  66    0x6ab27  1      
.L_6ab60:                           #        0x6ab28  0      
  addl $0x148, %esp                 #  67    0x6ab28  6      
  addq %r15, %rsp                   #  68    0x6ab2e  3      
  popq %rbx                         #  69    0x6ab31  2      
  popq %r12                         #  70    0x6ab33  3      
  popq %r11                         #  71    0x6ab36  3      
  andl $0xffffffe0, %r11d           #  72    0x6ab39  7      
  addq %r15, %r11                   #  73    0x6ab40  3      
  jmpq %r11                         #  74    0x6ab43  3      
  nop                               #  75    0x6ab46  1      
.L_6ab80:                           #        0x6ab47  0      
  movl %r12d, %r12d                 #  76    0x6ab47  3      
  movl $0x4b, (%r15,%r12,1)         #  77    0x6ab4a  8      
  jmpq .L_6ab40                     #  78    0x6ab52  5      
  nop                               #  79    0x6ab57  1      
  nop                               #  80    0x6ab58  1      
.L_6aba0:                           #        0x6ab59  0      
  movl %r12d, %r12d                 #  81    0x6ab59  3      
  movl $0x4b, (%r15,%r12,1)         #  82    0x6ab5c  8      
  movl $0xffffffff, %eax            #  83    0x6ab64  5      
  jmpq .L_6ab60                     #  84    0x6ab69  5      
  nop                               #  85    0x6ab6e  1      
  nop                               #  86    0x6ab6f  1      
  nop                               #  87    0x6ab70  1      
  nop                               #  88    0x6ab71  1      
  nop                               #  89    0x6ab72  1      
  nop                               #  90    0x6ab73  1      
  nop                               #  91    0x6ab74  1      
  nop                               #  92    0x6ab75  1      
  nop                               #  93    0x6ab76  1      
  nop                               #  94    0x6ab77  1      
  nop                               #  95    0x6ab78  1      
  nop                               #  96    0x6ab79  1      
  nop                               #  97    0x6ab7a  1      
  nop                               #  98    0x6ab7b  1      
                                                             
.size _snprintf_r, .-_snprintf_r

