  .text
  .globl _ZN2pp3VarC1EPKc
  .type _ZN2pp3VarC1EPKc, @function

#! file-offset 0x2bd20
#! rip-offset  0x2bd20
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1EPKc:                                     #        0x2bd20  0      
  movq %r12, -0x8(%rsp)                                #  1     0x2bd20  5      
  movl %esi, %r12d                                     #  2     0x2bd25  3      
  movq %rbx, -0x10(%rsp)                               #  3     0x2bd28  5      
  xorl %esi, %esi                                      #  4     0x2bd2d  2      
  subl $0x18, %esp                                     #  5     0x2bd2f  3      
  addq %r15, %rsp                                      #  6     0x2bd32  3      
  movl %edi, %ebx                                      #  7     0x2bd35  2      
  testq %r12, %r12                                     #  8     0x2bd37  3      
  nop                                                  #  9     0x2bd3a  1      
  movl %ebx, %ebx                                      #  10    0x2bd3b  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  11    0x2bd3d  8      
  je .L_2bd80                                          #  12    0x2bd45  6      
  movl %r12d, %edi                                     #  13    0x2bd4b  3      
  nop                                                  #  14    0x2bd4e  1      
  callq .strlen                                        #  15    0x2bd4f  5      
  movl %eax, %esi                                      #  16    0x2bd54  2      
  nop                                                  #  17    0x2bd56  1      
  nop                                                  #  18    0x2bd57  1      
.L_2bd80:                                              #        0x2bd58  0      
  movl %r12d, %edi                                     #  19    0x2bd58  3      
  nop                                                  #  20    0x2bd5b  1      
  nop                                                  #  21    0x2bd5c  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  22    0x2bd5d  5      
  movl %ebx, %ebx                                      #  23    0x2bd62  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  24    0x2bd64  6      
  movl %ebx, %ebx                                      #  25    0x2bd6a  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  26    0x2bd6c  5      
  movl %ebx, %ebx                                      #  27    0x2bd71  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  28    0x2bd73  5      
  movq 0x10(%rsp), %r12                                #  29    0x2bd78  5      
  movq 0x8(%rsp), %rbx                                 #  30    0x2bd7d  5      
  addl $0x18, %esp                                     #  31    0x2bd82  3      
  addq %r15, %rsp                                      #  32    0x2bd85  3      
  popq %r11                                            #  33    0x2bd88  3      
  andl $0xffffffe0, %r11d                              #  34    0x2bd8b  7      
  addq %r15, %r11                                      #  35    0x2bd92  3      
  jmpq %r11                                            #  36    0x2bd95  3      
  nop                                                  #  37    0x2bd98  1      
                                                                                
.size _ZN2pp3VarC1EPKc, .-_ZN2pp3VarC1EPKc

