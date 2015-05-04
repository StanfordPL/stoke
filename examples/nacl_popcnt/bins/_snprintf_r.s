  .text
  .globl _snprintf_r
  .type _snprintf_r, @function

#! file-offset 0x6aaa0
#! rip-offset  0x6aaa0
#! capacity    416 bytes

# Text                              #  Line  RIP      Bytes  
._snprintf_r:                       #        0x6aaa0  0      
  pushq %r12                        #  1     0x6aaa0  3      
  movl %esi, %esi                   #  2     0x6aaa3  2      
  movl %edi, %r12d                  #  3     0x6aaa5  3      
  pushq %rbx                        #  4     0x6aaa8  2      
  movl %edx, %ebx                   #  5     0x6aaaa  2      
  movl %ecx, %edx                   #  6     0x6aaac  2      
  subl $0x148, %esp                 #  7     0x6aaae  6      
  addq %r15, %rsp                   #  8     0x6aab4  3      
  cmpl $0x0, %ebx                   #  9     0x6aab7  3      
  leal 0x13f(%rsp), %eax            #  10    0x6aaba  7      
  nop                               #  11    0x6aac1  1      
  movq %r8, 0xb0(%rsp)              #  12    0x6aac2  8      
  movq %r9, 0xb8(%rsp)              #  13    0x6aaca  8      
  movl %eax, %eax                   #  14    0x6aad2  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x6aad4  6      
  movl %eax, %eax                   #  16    0x6aada  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x6aadc  6      
  movl %eax, %eax                   #  18    0x6aae2  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  19    0x6aae4  6      
  movl %eax, %eax                   #  20    0x6aaea  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  21    0x6aaec  6      
  movl %eax, %eax                   #  22    0x6aaf2  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  23    0x6aaf4  6      
  movl %eax, %eax                   #  24    0x6aafa  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  25    0x6aafc  6      
  movl %eax, %eax                   #  26    0x6ab02  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  27    0x6ab04  6      
  movl %eax, %eax                   #  28    0x6ab0a  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  29    0x6ab0c  6      
  jl .L_6ac20                       #  30    0x6ab12  6      
  leal -0x1(%rbx), %ecx             #  31    0x6ab18  3      
  xorl %eax, %eax                   #  32    0x6ab1b  2      
  testl %ebx, %ebx                  #  33    0x6ab1d  2      
  movl %esi, (%rsp)                 #  34    0x6ab1f  3      
  movl %esi, 0x10(%rsp)             #  35    0x6ab22  4      
  movl %r12d, %edi                  #  36    0x6ab26  3      
  cmovnel %ecx, %eax                #  37    0x6ab29  3      
  leal 0x80(%rsp), %ecx             #  38    0x6ab2c  7      
  movl %esp, %esi                   #  39    0x6ab33  2      
  movl %eax, 0x8(%rsp)              #  40    0x6ab35  4      
  movl %eax, 0x14(%rsp)             #  41    0x6ab39  4      
  nop                               #  42    0x6ab3d  1      
  leal 0x160(%rsp), %eax            #  43    0x6ab3e  7      
  movw $0x208, 0xc(%rsp)            #  44    0x6ab45  7      
  movw $0xffff, 0xe(%rsp)           #  45    0x6ab4c  7      
  movl %eax, 0x88(%rsp)             #  46    0x6ab53  7      
  nop                               #  47    0x6ab5a  1      
  leal 0x90(%rsp), %eax             #  48    0x6ab5b  7      
  movl $0x20, 0x80(%rsp)            #  49    0x6ab62  11     
  movl $0x30, 0x84(%rsp)            #  50    0x6ab6d  11     
  nop                               #  51    0x6ab78  1      
  movl %eax, 0x8c(%rsp)             #  52    0x6ab79  7      
  nop                               #  53    0x6ab80  1      
  nop                               #  54    0x6ab81  1      
  callq ._svfprintf_r               #  55    0x6ab82  5      
  cmpl $0xffffffff, %eax            #  56    0x6ab87  5      
  jl .L_6ac00                       #  57    0x6ab8c  6      
  nop                               #  58    0x6ab92  1      
  nop                               #  59    0x6ab93  1      
.L_6abc0:                           #        0x6ab94  0      
  testl %ebx, %ebx                  #  60    0x6ab94  2      
  je .L_6abe0                       #  61    0x6ab96  6      
  movl (%rsp), %edx                 #  62    0x6ab9c  3      
  movl %edx, %edx                   #  63    0x6ab9f  2      
  movb $0x0, (%r15,%rdx,1)          #  64    0x6aba1  5      
  nop                               #  65    0x6aba6  1      
  nop                               #  66    0x6aba7  1      
.L_6abe0:                           #        0x6aba8  0      
  addl $0x148, %esp                 #  67    0x6aba8  6      
  addq %r15, %rsp                   #  68    0x6abae  3      
  popq %rbx                         #  69    0x6abb1  2      
  popq %r12                         #  70    0x6abb3  3      
  popq %r11                         #  71    0x6abb6  3      
  andl $0xffffffe0, %r11d           #  72    0x6abb9  7      
  addq %r15, %r11                   #  73    0x6abc0  3      
  jmpq %r11                         #  74    0x6abc3  3      
  nop                               #  75    0x6abc6  1      
.L_6ac00:                           #        0x6abc7  0      
  movl %r12d, %r12d                 #  76    0x6abc7  3      
  movl $0x4b, (%r15,%r12,1)         #  77    0x6abca  8      
  jmpq .L_6abc0                     #  78    0x6abd2  5      
  nop                               #  79    0x6abd7  1      
  nop                               #  80    0x6abd8  1      
.L_6ac20:                           #        0x6abd9  0      
  movl %r12d, %r12d                 #  81    0x6abd9  3      
  movl $0x4b, (%r15,%r12,1)         #  82    0x6abdc  8      
  movl $0xffffffff, %eax            #  83    0x6abe4  5      
  jmpq .L_6abe0                     #  84    0x6abe9  5      
  nop                               #  85    0x6abee  1      
  nop                               #  86    0x6abef  1      
  nop                               #  87    0x6abf0  1      
  nop                               #  88    0x6abf1  1      
  nop                               #  89    0x6abf2  1      
  nop                               #  90    0x6abf3  1      
  nop                               #  91    0x6abf4  1      
  nop                               #  92    0x6abf5  1      
  nop                               #  93    0x6abf6  1      
  nop                               #  94    0x6abf7  1      
  nop                               #  95    0x6abf8  1      
  nop                               #  96    0x6abf9  1      
  nop                               #  97    0x6abfa  1      
  nop                               #  98    0x6abfb  1      
                                                             
.size _snprintf_r, .-_snprintf_r

