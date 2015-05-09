  .text
  .globl _ZNSs7reserveEj
  .type _ZNSs7reserveEj, @function

#! file-offset 0x46060
#! rip-offset  0x46060
#! capacity    352 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs7reserveEj:                        #        0x46060  0      
  movq %rbx, -0x10(%rsp)                 #  1     0x46060  5      
  movl %edi, %ebx                        #  2     0x46065  2      
  movq %r12, -0x8(%rsp)                  #  3     0x46067  5      
  subl $0x38, %esp                       #  4     0x4606c  3      
  addq %r15, %rsp                        #  5     0x4606f  3      
  movl %ebx, %ebx                        #  6     0x46072  2      
  movl (%r15,%rbx,1), %edi               #  7     0x46074  4      
  subl $0xc, %edi                        #  8     0x46078  3      
  nop                                    #  9     0x4607b  1      
  movl %edi, %edi                        #  10    0x4607c  2      
  cmpl 0x4(%r15,%rdi,1), %esi            #  11    0x4607e  5      
  je .L_46120                            #  12    0x46083  6      
  nop                                    #  13    0x46089  1      
  nop                                    #  14    0x4608a  1      
.L_460a0:                                #        0x4608b  0      
  movl %edi, %edi                        #  15    0x4608b  2      
  movl (%r15,%rdi,1), %eax               #  16    0x4608d  4      
  leal 0x1f(%rsp), %r12d                 #  17    0x46091  5      
  cmpl %eax, %esi                        #  18    0x46096  2      
  movl %eax, %edx                        #  19    0x46098  2      
  cmovael %esi, %edx                     #  20    0x4609a  3      
  movl %r12d, %esi                       #  21    0x4609d  3      
  subl %eax, %edx                        #  22    0x460a0  2      
  nop                                    #  23    0x460a2  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj    #  24    0x460a3  5      
  movl %ebx, %ebx                        #  25    0x460a8  2      
  movl (%r15,%rbx,1), %edi               #  26    0x460aa  4      
  movl %eax, %eax                        #  27    0x460ae  2      
  subl $0xc, %edi                        #  28    0x460b0  3      
  cmpl $0x10031da0, %edi                 #  29    0x460b3  6      
  jne .L_46140                           #  30    0x460b9  6      
  nop                                    #  31    0x460bf  1      
.L_460e0:                                #        0x460c0  0      
  movl %ebx, %ebx                        #  32    0x460c0  2      
  movl %eax, (%r15,%rbx,1)               #  33    0x460c2  4      
  nop                                    #  34    0x460c6  1      
  nop                                    #  35    0x460c7  1      
.L_46100:                                #        0x460c8  0      
  movq 0x28(%rsp), %rbx                  #  36    0x460c8  5      
  movq 0x30(%rsp), %r12                  #  37    0x460cd  5      
  addl $0x38, %esp                       #  38    0x460d2  3      
  addq %r15, %rsp                        #  39    0x460d5  3      
  popq %r11                              #  40    0x460d8  3      
  andl $0xffffffe0, %r11d                #  41    0x460db  7      
  addq %r15, %r11                        #  42    0x460e2  3      
  jmpq %r11                              #  43    0x460e5  3      
  nop                                    #  44    0x460e8  1      
.L_46120:                                #        0x460e9  0      
  movl %edi, %edi                        #  45    0x460e9  2      
  movl 0x8(%r15,%rdi,1), %r10d           #  46    0x460eb  5      
  testl %r10d, %r10d                     #  47    0x460f0  3      
  jg .L_460a0                            #  48    0x460f3  6      
  jmpq .L_46100                          #  49    0x460f9  5      
  nop                                    #  50    0x460fe  1      
.L_46140:                                #        0x460ff  0      
  movl %edi, %edi                        #  51    0x460ff  2      
  movl 0x8(%r15,%rdi,1), %edx            #  52    0x46101  5      
  leal -0x1(%rdx), %ecx                  #  53    0x46106  3      
  testl %edx, %edx                       #  54    0x46109  2      
  movl %edi, %edi                        #  55    0x4610b  2      
  movl %ecx, 0x8(%r15,%rdi,1)            #  56    0x4610d  5      
  jg .L_460e0                            #  57    0x46112  6      
  movl %r12d, %esi                       #  58    0x46118  3      
  movq %rax, 0x8(%rsp)                   #  59    0x4611b  5      
  nop                                    #  60    0x46120  1      
  nop                                    #  61    0x46121  1      
  nop                                    #  62    0x46122  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  63    0x46123  5      
  movq 0x8(%rsp), %rax                   #  64    0x46128  5      
  jmpq .L_460e0                          #  65    0x4612d  5      
  nop                                    #  66    0x46132  1      
  nop                                    #  67    0x46133  1      
  movl %eax, %edi                        #  68    0x46134  2      
  nop                                    #  69    0x46136  1      
  nop                                    #  70    0x46137  1      
  callq ._Unwind_Resume                  #  71    0x46138  5      
                                                                  
.size _ZNSs7reserveEj, .-_ZNSs7reserveEj

