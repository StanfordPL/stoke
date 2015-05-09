  .text
  .globl __sinit
  .type __sinit, @function

#! file-offset 0x7b060
#! rip-offset  0x7b060
#! capacity    480 bytes

# Text                              #  Line  RIP      Bytes  
.__sinit:                           #        0x7b060  0      
  movq %rbx, -0x10(%rsp)            #  1     0x7b060  5      
  movq %r12, -0x8(%rsp)             #  2     0x7b065  5      
  subl $0x18, %esp                  #  3     0x7b06a  3      
  addq %r15, %rsp                   #  4     0x7b06d  3      
  movl 0xffa8416(%rip), %ebx        #  5     0x7b070  6      
  movl %edi, %r12d                  #  6     0x7b076  3      
  cmpl %ebx, %r12d                  #  7     0x7b079  3      
  nop                               #  8     0x7b07c  1      
  je .L_7b200                       #  9     0x7b07d  6      
  movl %ebx, %edi                   #  10    0x7b083  2      
  nop                               #  11    0x7b085  1      
  nop                               #  12    0x7b086  1      
  callq .__sinit                    #  13    0x7b087  5      
.L_7b0a0:                           #        0x7b08c  0      
  movl %r12d, %r12d                 #  14    0x7b08c  3      
  movl 0x38(%r15,%r12,1), %eax      #  15    0x7b08f  5      
  testl %eax, %eax                  #  16    0x7b094  2      
  je .L_7b0e0                       #  17    0x7b096  6      
  cmpl %r12d, %ebx                  #  18    0x7b09c  3      
  je .L_7b1e0                       #  19    0x7b09f  6      
  nop                               #  20    0x7b0a5  1      
.L_7b0c0:                           #        0x7b0a6  0      
  movq 0x8(%rsp), %rbx              #  21    0x7b0a6  5      
  movq 0x10(%rsp), %r12             #  22    0x7b0ab  5      
  addl $0x18, %esp                  #  23    0x7b0b0  3      
  addq %r15, %rsp                   #  24    0x7b0b3  3      
  popq %r11                         #  25    0x7b0b6  3      
  andl $0xffffffe0, %r11d           #  26    0x7b0b9  7      
  addq %r15, %r11                   #  27    0x7b0c0  3      
  jmpq %r11                         #  28    0x7b0c3  3      
  nop                               #  29    0x7b0c6  1      
.L_7b0e0:                           #        0x7b0c7  0      
  leal 0x2f0(%rbx), %eax            #  30    0x7b0c7  6      
  movl %ebx, %ebx                   #  31    0x7b0cd  2      
  movl 0x4(%r15,%rbx,1), %edi       #  32    0x7b0cf  5      
  cmpl %r12d, %ebx                  #  33    0x7b0d4  3      
  movl %r12d, %r12d                 #  34    0x7b0d7  3      
  movl $0x7b240, 0x3c(%r15,%r12,1)  #  35    0x7b0da  9      
  nop                               #  36    0x7b0e3  1      
  movl %r12d, %r12d                 #  37    0x7b0e4  3      
  movl $0x0, 0x2e0(%r15,%r12,1)     #  38    0x7b0e7  12     
  movl %r12d, %r12d                 #  39    0x7b0f3  3      
  movl %eax, 0x2e8(%r15,%r12,1)     #  40    0x7b0f6  8      
  nop                               #  41    0x7b0fe  1      
  movl %ebx, %ebx                   #  42    0x7b0ff  2      
  movl 0x8(%r15,%rbx,1), %eax       #  43    0x7b101  5      
  movl %r12d, %r12d                 #  44    0x7b106  3      
  movl $0x3, 0x2e4(%r15,%r12,1)     #  45    0x7b109  12     
  movl %r12d, %r12d                 #  46    0x7b115  3      
  movl %edi, 0x4(%r15,%r12,1)       #  47    0x7b118  5      
  xchgw %ax, %ax                    #  48    0x7b11d  3      
  movl %r12d, %r12d                 #  49    0x7b120  3      
  movl %eax, 0x8(%r15,%r12,1)       #  50    0x7b123  5      
  movl %ebx, %ebx                   #  51    0x7b128  2      
  movl 0xc(%r15,%rbx,1), %eax       #  52    0x7b12a  5      
  movl %r12d, %r12d                 #  53    0x7b12f  3      
  movl %eax, 0xc(%r15,%r12,1)       #  54    0x7b132  5      
  jne .L_7b0c0                      #  55    0x7b137  6      
  movl %ebx, %ecx                   #  56    0x7b13d  2      
  nop                               #  57    0x7b13f  1      
  xorl %edx, %edx                   #  58    0x7b140  2      
  movl $0x4, %esi                   #  59    0x7b142  5      
  nop                               #  60    0x7b147  1      
  nop                               #  61    0x7b148  1      
  callq .std                        #  62    0x7b149  5      
  movl %ebx, %ebx                   #  63    0x7b14e  2      
  movl 0x8(%r15,%rbx,1), %edi       #  64    0x7b150  5      
  movl %ebx, %ecx                   #  65    0x7b155  2      
  movl $0x1, %edx                   #  66    0x7b157  5      
  movl $0x9, %esi                   #  67    0x7b15c  5      
  nop                               #  68    0x7b161  1      
  callq .std                        #  69    0x7b162  5      
  movl %ebx, %ebx                   #  70    0x7b167  2      
  movl 0xc(%r15,%rbx,1), %edi       #  71    0x7b169  5      
  movl %ebx, %ecx                   #  72    0x7b16e  2      
  movl $0x2, %edx                   #  73    0x7b170  5      
  movl $0x12, %esi                  #  74    0x7b175  5      
  nop                               #  75    0x7b17a  1      
  callq .std                        #  76    0x7b17b  5      
  movl %ebx, %ebx                   #  77    0x7b180  2      
  movl $0x1, 0x38(%r15,%rbx,1)      #  78    0x7b182  9      
  nop                               #  79    0x7b18b  1      
  nop                               #  80    0x7b18c  1      
.L_7b1e0:                           #        0x7b18d  0      
  movq 0x8(%rsp), %rbx              #  81    0x7b18d  5      
  movq 0x10(%rsp), %r12             #  82    0x7b192  5      
  addl $0x18, %esp                  #  83    0x7b197  3      
  addq %r15, %rsp                   #  84    0x7b19a  3      
  jmpq .__sinit_lock_release        #  85    0x7b19d  5      
  nop                               #  86    0x7b1a2  1      
.L_7b200:                           #        0x7b1a3  0      
  nop                               #  87    0x7b1a3  1      
  nop                               #  88    0x7b1a4  1      
  callq .__sinit_lock_acquire       #  89    0x7b1a5  5      
  jmpq .L_7b0a0                     #  90    0x7b1aa  5      
  nop                               #  91    0x7b1af  1      
  nop                               #  92    0x7b1b0  1      
                                                             
.size __sinit, .-__sinit

