  .text
  .globl _ZNSs7reserveEj
  .type _ZNSs7reserveEj, @function

#! file-offset 0x46080
#! rip-offset  0x46080
#! capacity    352 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs7reserveEj:                        #        0x46080  0      
  movq %rbx, -0x10(%rsp)                 #  1     0x46080  5      
  movl %edi, %ebx                        #  2     0x46085  2      
  movq %r12, -0x8(%rsp)                  #  3     0x46087  5      
  subl $0x38, %esp                       #  4     0x4608c  3      
  addq %r15, %rsp                        #  5     0x4608f  3      
  movl %ebx, %ebx                        #  6     0x46092  2      
  movl (%r15,%rbx,1), %edi               #  7     0x46094  4      
  subl $0xc, %edi                        #  8     0x46098  3      
  nop                                    #  9     0x4609b  1      
  movl %edi, %edi                        #  10    0x4609c  2      
  cmpl 0x4(%r15,%rdi,1), %esi            #  11    0x4609e  5      
  je .L_46140                            #  12    0x460a3  6      
  nop                                    #  13    0x460a9  1      
  nop                                    #  14    0x460aa  1      
.L_460c0:                                #        0x460ab  0      
  movl %edi, %edi                        #  15    0x460ab  2      
  movl (%r15,%rdi,1), %eax               #  16    0x460ad  4      
  leal 0x1f(%rsp), %r12d                 #  17    0x460b1  5      
  cmpl %eax, %esi                        #  18    0x460b6  2      
  movl %eax, %edx                        #  19    0x460b8  2      
  cmovael %esi, %edx                     #  20    0x460ba  3      
  movl %r12d, %esi                       #  21    0x460bd  3      
  subl %eax, %edx                        #  22    0x460c0  2      
  nop                                    #  23    0x460c2  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj    #  24    0x460c3  5      
  movl %ebx, %ebx                        #  25    0x460c8  2      
  movl (%r15,%rbx,1), %edi               #  26    0x460ca  4      
  movl %eax, %eax                        #  27    0x460ce  2      
  subl $0xc, %edi                        #  28    0x460d0  3      
  cmpl $0x10031da0, %edi                 #  29    0x460d3  6      
  jne .L_46160                           #  30    0x460d9  6      
  nop                                    #  31    0x460df  1      
.L_46100:                                #        0x460e0  0      
  movl %ebx, %ebx                        #  32    0x460e0  2      
  movl %eax, (%r15,%rbx,1)               #  33    0x460e2  4      
  nop                                    #  34    0x460e6  1      
  nop                                    #  35    0x460e7  1      
.L_46120:                                #        0x460e8  0      
  movq 0x28(%rsp), %rbx                  #  36    0x460e8  5      
  movq 0x30(%rsp), %r12                  #  37    0x460ed  5      
  addl $0x38, %esp                       #  38    0x460f2  3      
  addq %r15, %rsp                        #  39    0x460f5  3      
  popq %r11                              #  40    0x460f8  3      
  andl $0xffffffe0, %r11d                #  41    0x460fb  7      
  addq %r15, %r11                        #  42    0x46102  3      
  jmpq %r11                              #  43    0x46105  3      
  nop                                    #  44    0x46108  1      
.L_46140:                                #        0x46109  0      
  movl %edi, %edi                        #  45    0x46109  2      
  movl 0x8(%r15,%rdi,1), %r10d           #  46    0x4610b  5      
  testl %r10d, %r10d                     #  47    0x46110  3      
  jg .L_460c0                            #  48    0x46113  6      
  jmpq .L_46120                          #  49    0x46119  5      
  nop                                    #  50    0x4611e  1      
.L_46160:                                #        0x4611f  0      
  movl %edi, %edi                        #  51    0x4611f  2      
  movl 0x8(%r15,%rdi,1), %edx            #  52    0x46121  5      
  leal -0x1(%rdx), %ecx                  #  53    0x46126  3      
  testl %edx, %edx                       #  54    0x46129  2      
  movl %edi, %edi                        #  55    0x4612b  2      
  movl %ecx, 0x8(%r15,%rdi,1)            #  56    0x4612d  5      
  jg .L_46100                            #  57    0x46132  6      
  movl %r12d, %esi                       #  58    0x46138  3      
  movq %rax, 0x8(%rsp)                   #  59    0x4613b  5      
  nop                                    #  60    0x46140  1      
  nop                                    #  61    0x46141  1      
  nop                                    #  62    0x46142  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  63    0x46143  5      
  movq 0x8(%rsp), %rax                   #  64    0x46148  5      
  jmpq .L_46100                          #  65    0x4614d  5      
  nop                                    #  66    0x46152  1      
  nop                                    #  67    0x46153  1      
  movl %eax, %edi                        #  68    0x46154  2      
  nop                                    #  69    0x46156  1      
  nop                                    #  70    0x46157  1      
  callq ._Unwind_Resume                  #  71    0x46158  5      
                                                                  
.size _ZNSs7reserveEj, .-_ZNSs7reserveEj

