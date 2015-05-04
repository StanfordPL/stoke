  .text
  .globl _ZNSs7reserveEj
  .type _ZNSs7reserveEj, @function

#! file-offset 0x46100
#! rip-offset  0x46100
#! capacity    352 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs7reserveEj:                        #        0x46100  0      
  movq %rbx, -0x10(%rsp)                 #  1     0x46100  5      
  movl %edi, %ebx                        #  2     0x46105  2      
  movq %r12, -0x8(%rsp)                  #  3     0x46107  5      
  subl $0x38, %esp                       #  4     0x4610c  3      
  addq %r15, %rsp                        #  5     0x4610f  3      
  movl %ebx, %ebx                        #  6     0x46112  2      
  movl (%r15,%rbx,1), %edi               #  7     0x46114  4      
  subl $0xc, %edi                        #  8     0x46118  3      
  nop                                    #  9     0x4611b  1      
  movl %edi, %edi                        #  10    0x4611c  2      
  cmpl 0x4(%r15,%rdi,1), %esi            #  11    0x4611e  5      
  je .L_461c0                            #  12    0x46123  6      
  nop                                    #  13    0x46129  1      
  nop                                    #  14    0x4612a  1      
.L_46140:                                #        0x4612b  0      
  movl %edi, %edi                        #  15    0x4612b  2      
  movl (%r15,%rdi,1), %eax               #  16    0x4612d  4      
  leal 0x1f(%rsp), %r12d                 #  17    0x46131  5      
  cmpl %eax, %esi                        #  18    0x46136  2      
  movl %eax, %edx                        #  19    0x46138  2      
  cmovael %esi, %edx                     #  20    0x4613a  3      
  movl %r12d, %esi                       #  21    0x4613d  3      
  subl %eax, %edx                        #  22    0x46140  2      
  nop                                    #  23    0x46142  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj    #  24    0x46143  5      
  movl %ebx, %ebx                        #  25    0x46148  2      
  movl (%r15,%rbx,1), %edi               #  26    0x4614a  4      
  movl %eax, %eax                        #  27    0x4614e  2      
  subl $0xc, %edi                        #  28    0x46150  3      
  cmpl $0x10031da0, %edi                 #  29    0x46153  6      
  jne .L_461e0                           #  30    0x46159  6      
  nop                                    #  31    0x4615f  1      
.L_46180:                                #        0x46160  0      
  movl %ebx, %ebx                        #  32    0x46160  2      
  movl %eax, (%r15,%rbx,1)               #  33    0x46162  4      
  nop                                    #  34    0x46166  1      
  nop                                    #  35    0x46167  1      
.L_461a0:                                #        0x46168  0      
  movq 0x28(%rsp), %rbx                  #  36    0x46168  5      
  movq 0x30(%rsp), %r12                  #  37    0x4616d  5      
  addl $0x38, %esp                       #  38    0x46172  3      
  addq %r15, %rsp                        #  39    0x46175  3      
  popq %r11                              #  40    0x46178  3      
  andl $0xffffffe0, %r11d                #  41    0x4617b  7      
  addq %r15, %r11                        #  42    0x46182  3      
  jmpq %r11                              #  43    0x46185  3      
  nop                                    #  44    0x46188  1      
.L_461c0:                                #        0x46189  0      
  movl %edi, %edi                        #  45    0x46189  2      
  movl 0x8(%r15,%rdi,1), %r10d           #  46    0x4618b  5      
  testl %r10d, %r10d                     #  47    0x46190  3      
  jg .L_46140                            #  48    0x46193  6      
  jmpq .L_461a0                          #  49    0x46199  5      
  nop                                    #  50    0x4619e  1      
.L_461e0:                                #        0x4619f  0      
  movl %edi, %edi                        #  51    0x4619f  2      
  movl 0x8(%r15,%rdi,1), %edx            #  52    0x461a1  5      
  leal -0x1(%rdx), %ecx                  #  53    0x461a6  3      
  testl %edx, %edx                       #  54    0x461a9  2      
  movl %edi, %edi                        #  55    0x461ab  2      
  movl %ecx, 0x8(%r15,%rdi,1)            #  56    0x461ad  5      
  jg .L_46180                            #  57    0x461b2  6      
  movl %r12d, %esi                       #  58    0x461b8  3      
  movq %rax, 0x8(%rsp)                   #  59    0x461bb  5      
  nop                                    #  60    0x461c0  1      
  nop                                    #  61    0x461c1  1      
  nop                                    #  62    0x461c2  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  63    0x461c3  5      
  movq 0x8(%rsp), %rax                   #  64    0x461c8  5      
  jmpq .L_46180                          #  65    0x461cd  5      
  nop                                    #  66    0x461d2  1      
  nop                                    #  67    0x461d3  1      
  movl %eax, %edi                        #  68    0x461d4  2      
  nop                                    #  69    0x461d6  1      
  nop                                    #  70    0x461d7  1      
  callq ._Unwind_Resume                  #  71    0x461d8  5      
                                                                  
.size _ZNSs7reserveEj, .-_ZNSs7reserveEj

