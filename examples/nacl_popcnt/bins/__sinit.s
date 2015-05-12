  .text
  .globl __sinit
  .type __sinit, @function

#! file-offset 0x7b080
#! rip-offset  0x7b080
#! capacity    480 bytes

# Text                              #  Line  RIP      Bytes  
.__sinit:                           #        0x7b080  0      
  movq %rbx, -0x10(%rsp)            #  1     0x7b080  5      
  movq %r12, -0x8(%rsp)             #  2     0x7b085  5      
  subl $0x18, %esp                  #  3     0x7b08a  3      
  addq %r15, %rsp                   #  4     0x7b08d  3      
  movl 0xffa83f6(%rip), %ebx        #  5     0x7b090  6      
  movl %edi, %r12d                  #  6     0x7b096  3      
  cmpl %ebx, %r12d                  #  7     0x7b099  3      
  nop                               #  8     0x7b09c  1      
  je .L_7b220                       #  9     0x7b09d  6      
  movl %ebx, %edi                   #  10    0x7b0a3  2      
  nop                               #  11    0x7b0a5  1      
  nop                               #  12    0x7b0a6  1      
  callq .__sinit                    #  13    0x7b0a7  5      
.L_7b0c0:                           #        0x7b0ac  0      
  movl %r12d, %r12d                 #  14    0x7b0ac  3      
  movl 0x38(%r15,%r12,1), %eax      #  15    0x7b0af  5      
  testl %eax, %eax                  #  16    0x7b0b4  2      
  je .L_7b100                       #  17    0x7b0b6  6      
  cmpl %r12d, %ebx                  #  18    0x7b0bc  3      
  je .L_7b200                       #  19    0x7b0bf  6      
  nop                               #  20    0x7b0c5  1      
.L_7b0e0:                           #        0x7b0c6  0      
  movq 0x8(%rsp), %rbx              #  21    0x7b0c6  5      
  movq 0x10(%rsp), %r12             #  22    0x7b0cb  5      
  addl $0x18, %esp                  #  23    0x7b0d0  3      
  addq %r15, %rsp                   #  24    0x7b0d3  3      
  popq %r11                         #  25    0x7b0d6  3      
  andl $0xffffffe0, %r11d           #  26    0x7b0d9  7      
  addq %r15, %r11                   #  27    0x7b0e0  3      
  jmpq %r11                         #  28    0x7b0e3  3      
  nop                               #  29    0x7b0e6  1      
.L_7b100:                           #        0x7b0e7  0      
  leal 0x2f0(%rbx), %eax            #  30    0x7b0e7  6      
  movl %ebx, %ebx                   #  31    0x7b0ed  2      
  movl 0x4(%r15,%rbx,1), %edi       #  32    0x7b0ef  5      
  cmpl %r12d, %ebx                  #  33    0x7b0f4  3      
  movl %r12d, %r12d                 #  34    0x7b0f7  3      
  movl $0x7b260, 0x3c(%r15,%r12,1)  #  35    0x7b0fa  9      
  nop                               #  36    0x7b103  1      
  movl %r12d, %r12d                 #  37    0x7b104  3      
  movl $0x0, 0x2e0(%r15,%r12,1)     #  38    0x7b107  12     
  movl %r12d, %r12d                 #  39    0x7b113  3      
  movl %eax, 0x2e8(%r15,%r12,1)     #  40    0x7b116  8      
  nop                               #  41    0x7b11e  1      
  movl %ebx, %ebx                   #  42    0x7b11f  2      
  movl 0x8(%r15,%rbx,1), %eax       #  43    0x7b121  5      
  movl %r12d, %r12d                 #  44    0x7b126  3      
  movl $0x3, 0x2e4(%r15,%r12,1)     #  45    0x7b129  12     
  movl %r12d, %r12d                 #  46    0x7b135  3      
  movl %edi, 0x4(%r15,%r12,1)       #  47    0x7b138  5      
  xchgw %ax, %ax                    #  48    0x7b13d  3      
  movl %r12d, %r12d                 #  49    0x7b140  3      
  movl %eax, 0x8(%r15,%r12,1)       #  50    0x7b143  5      
  movl %ebx, %ebx                   #  51    0x7b148  2      
  movl 0xc(%r15,%rbx,1), %eax       #  52    0x7b14a  5      
  movl %r12d, %r12d                 #  53    0x7b14f  3      
  movl %eax, 0xc(%r15,%r12,1)       #  54    0x7b152  5      
  jne .L_7b0e0                      #  55    0x7b157  6      
  movl %ebx, %ecx                   #  56    0x7b15d  2      
  nop                               #  57    0x7b15f  1      
  xorl %edx, %edx                   #  58    0x7b160  2      
  movl $0x4, %esi                   #  59    0x7b162  5      
  nop                               #  60    0x7b167  1      
  nop                               #  61    0x7b168  1      
  callq .std                        #  62    0x7b169  5      
  movl %ebx, %ebx                   #  63    0x7b16e  2      
  movl 0x8(%r15,%rbx,1), %edi       #  64    0x7b170  5      
  movl %ebx, %ecx                   #  65    0x7b175  2      
  movl $0x1, %edx                   #  66    0x7b177  5      
  movl $0x9, %esi                   #  67    0x7b17c  5      
  nop                               #  68    0x7b181  1      
  callq .std                        #  69    0x7b182  5      
  movl %ebx, %ebx                   #  70    0x7b187  2      
  movl 0xc(%r15,%rbx,1), %edi       #  71    0x7b189  5      
  movl %ebx, %ecx                   #  72    0x7b18e  2      
  movl $0x2, %edx                   #  73    0x7b190  5      
  movl $0x12, %esi                  #  74    0x7b195  5      
  nop                               #  75    0x7b19a  1      
  callq .std                        #  76    0x7b19b  5      
  movl %ebx, %ebx                   #  77    0x7b1a0  2      
  movl $0x1, 0x38(%r15,%rbx,1)      #  78    0x7b1a2  9      
  nop                               #  79    0x7b1ab  1      
  nop                               #  80    0x7b1ac  1      
.L_7b200:                           #        0x7b1ad  0      
  movq 0x8(%rsp), %rbx              #  81    0x7b1ad  5      
  movq 0x10(%rsp), %r12             #  82    0x7b1b2  5      
  addl $0x18, %esp                  #  83    0x7b1b7  3      
  addq %r15, %rsp                   #  84    0x7b1ba  3      
  jmpq .__sinit_lock_release        #  85    0x7b1bd  5      
  nop                               #  86    0x7b1c2  1      
.L_7b220:                           #        0x7b1c3  0      
  nop                               #  87    0x7b1c3  1      
  nop                               #  88    0x7b1c4  1      
  callq .__sinit_lock_acquire       #  89    0x7b1c5  5      
  jmpq .L_7b0c0                     #  90    0x7b1ca  5      
  nop                               #  91    0x7b1cf  1      
  nop                               #  92    0x7b1d0  1      
                                                             
.size __sinit, .-__sinit

