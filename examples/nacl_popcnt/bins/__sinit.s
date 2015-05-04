  .text
  .globl __sinit
  .type __sinit, @function

#! file-offset 0x7b100
#! rip-offset  0x7b100
#! capacity    480 bytes

# Text                              #  Line  RIP      Bytes  
.__sinit:                           #        0x7b100  0      
  movq %rbx, -0x10(%rsp)            #  1     0x7b100  5      
  movq %r12, -0x8(%rsp)             #  2     0x7b105  5      
  subl $0x18, %esp                  #  3     0x7b10a  3      
  addq %r15, %rsp                   #  4     0x7b10d  3      
  movl 0xffa8376(%rip), %ebx        #  5     0x7b110  6      
  movl %edi, %r12d                  #  6     0x7b116  3      
  cmpl %ebx, %r12d                  #  7     0x7b119  3      
  nop                               #  8     0x7b11c  1      
  je .L_7b2a0                       #  9     0x7b11d  6      
  movl %ebx, %edi                   #  10    0x7b123  2      
  nop                               #  11    0x7b125  1      
  nop                               #  12    0x7b126  1      
  callq .__sinit                    #  13    0x7b127  5      
.L_7b140:                           #        0x7b12c  0      
  movl %r12d, %r12d                 #  14    0x7b12c  3      
  movl 0x38(%r15,%r12,1), %eax      #  15    0x7b12f  5      
  testl %eax, %eax                  #  16    0x7b134  2      
  je .L_7b180                       #  17    0x7b136  6      
  cmpl %r12d, %ebx                  #  18    0x7b13c  3      
  je .L_7b280                       #  19    0x7b13f  6      
  nop                               #  20    0x7b145  1      
.L_7b160:                           #        0x7b146  0      
  movq 0x8(%rsp), %rbx              #  21    0x7b146  5      
  movq 0x10(%rsp), %r12             #  22    0x7b14b  5      
  addl $0x18, %esp                  #  23    0x7b150  3      
  addq %r15, %rsp                   #  24    0x7b153  3      
  popq %r11                         #  25    0x7b156  3      
  andl $0xffffffe0, %r11d           #  26    0x7b159  7      
  addq %r15, %r11                   #  27    0x7b160  3      
  jmpq %r11                         #  28    0x7b163  3      
  nop                               #  29    0x7b166  1      
.L_7b180:                           #        0x7b167  0      
  leal 0x2f0(%rbx), %eax            #  30    0x7b167  6      
  movl %ebx, %ebx                   #  31    0x7b16d  2      
  movl 0x4(%r15,%rbx,1), %edi       #  32    0x7b16f  5      
  cmpl %r12d, %ebx                  #  33    0x7b174  3      
  movl %r12d, %r12d                 #  34    0x7b177  3      
  movl $0x7b2e0, 0x3c(%r15,%r12,1)  #  35    0x7b17a  9      
  nop                               #  36    0x7b183  1      
  movl %r12d, %r12d                 #  37    0x7b184  3      
  movl $0x0, 0x2e0(%r15,%r12,1)     #  38    0x7b187  12     
  movl %r12d, %r12d                 #  39    0x7b193  3      
  movl %eax, 0x2e8(%r15,%r12,1)     #  40    0x7b196  8      
  nop                               #  41    0x7b19e  1      
  movl %ebx, %ebx                   #  42    0x7b19f  2      
  movl 0x8(%r15,%rbx,1), %eax       #  43    0x7b1a1  5      
  movl %r12d, %r12d                 #  44    0x7b1a6  3      
  movl $0x3, 0x2e4(%r15,%r12,1)     #  45    0x7b1a9  12     
  movl %r12d, %r12d                 #  46    0x7b1b5  3      
  movl %edi, 0x4(%r15,%r12,1)       #  47    0x7b1b8  5      
  xchgw %ax, %ax                    #  48    0x7b1bd  3      
  movl %r12d, %r12d                 #  49    0x7b1c0  3      
  movl %eax, 0x8(%r15,%r12,1)       #  50    0x7b1c3  5      
  movl %ebx, %ebx                   #  51    0x7b1c8  2      
  movl 0xc(%r15,%rbx,1), %eax       #  52    0x7b1ca  5      
  movl %r12d, %r12d                 #  53    0x7b1cf  3      
  movl %eax, 0xc(%r15,%r12,1)       #  54    0x7b1d2  5      
  jne .L_7b160                      #  55    0x7b1d7  6      
  movl %ebx, %ecx                   #  56    0x7b1dd  2      
  nop                               #  57    0x7b1df  1      
  xorl %edx, %edx                   #  58    0x7b1e0  2      
  movl $0x4, %esi                   #  59    0x7b1e2  5      
  nop                               #  60    0x7b1e7  1      
  nop                               #  61    0x7b1e8  1      
  callq .std                        #  62    0x7b1e9  5      
  movl %ebx, %ebx                   #  63    0x7b1ee  2      
  movl 0x8(%r15,%rbx,1), %edi       #  64    0x7b1f0  5      
  movl %ebx, %ecx                   #  65    0x7b1f5  2      
  movl $0x1, %edx                   #  66    0x7b1f7  5      
  movl $0x9, %esi                   #  67    0x7b1fc  5      
  nop                               #  68    0x7b201  1      
  callq .std                        #  69    0x7b202  5      
  movl %ebx, %ebx                   #  70    0x7b207  2      
  movl 0xc(%r15,%rbx,1), %edi       #  71    0x7b209  5      
  movl %ebx, %ecx                   #  72    0x7b20e  2      
  movl $0x2, %edx                   #  73    0x7b210  5      
  movl $0x12, %esi                  #  74    0x7b215  5      
  nop                               #  75    0x7b21a  1      
  callq .std                        #  76    0x7b21b  5      
  movl %ebx, %ebx                   #  77    0x7b220  2      
  movl $0x1, 0x38(%r15,%rbx,1)      #  78    0x7b222  9      
  nop                               #  79    0x7b22b  1      
  nop                               #  80    0x7b22c  1      
.L_7b280:                           #        0x7b22d  0      
  movq 0x8(%rsp), %rbx              #  81    0x7b22d  5      
  movq 0x10(%rsp), %r12             #  82    0x7b232  5      
  addl $0x18, %esp                  #  83    0x7b237  3      
  addq %r15, %rsp                   #  84    0x7b23a  3      
  jmpq .__sinit_lock_release        #  85    0x7b23d  5      
  nop                               #  86    0x7b242  1      
.L_7b2a0:                           #        0x7b243  0      
  nop                               #  87    0x7b243  1      
  nop                               #  88    0x7b244  1      
  callq .__sinit_lock_acquire       #  89    0x7b245  5      
  jmpq .L_7b140                     #  90    0x7b24a  5      
  nop                               #  91    0x7b24f  1      
  nop                               #  92    0x7b250  1      
                                                             
.size __sinit, .-__sinit

