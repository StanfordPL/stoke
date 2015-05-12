  .text
  .globl _ZN2pp3VarC1EPKc
  .type _ZN2pp3VarC1EPKc, @function

#! file-offset 0x2bd40
#! rip-offset  0x2bd40
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1EPKc:                                     #        0x2bd40  0      
  movq %r12, -0x8(%rsp)                                #  1     0x2bd40  5      
  movl %esi, %r12d                                     #  2     0x2bd45  3      
  movq %rbx, -0x10(%rsp)                               #  3     0x2bd48  5      
  xorl %esi, %esi                                      #  4     0x2bd4d  2      
  subl $0x18, %esp                                     #  5     0x2bd4f  3      
  addq %r15, %rsp                                      #  6     0x2bd52  3      
  movl %edi, %ebx                                      #  7     0x2bd55  2      
  testq %r12, %r12                                     #  8     0x2bd57  3      
  nop                                                  #  9     0x2bd5a  1      
  movl %ebx, %ebx                                      #  10    0x2bd5b  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  11    0x2bd5d  8      
  je .L_2bda0                                          #  12    0x2bd65  6      
  movl %r12d, %edi                                     #  13    0x2bd6b  3      
  nop                                                  #  14    0x2bd6e  1      
  callq .strlen                                        #  15    0x2bd6f  5      
  movl %eax, %esi                                      #  16    0x2bd74  2      
  nop                                                  #  17    0x2bd76  1      
  nop                                                  #  18    0x2bd77  1      
.L_2bda0:                                              #        0x2bd78  0      
  movl %r12d, %edi                                     #  19    0x2bd78  3      
  nop                                                  #  20    0x2bd7b  1      
  nop                                                  #  21    0x2bd7c  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  22    0x2bd7d  5      
  movl %ebx, %ebx                                      #  23    0x2bd82  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  24    0x2bd84  6      
  movl %ebx, %ebx                                      #  25    0x2bd8a  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  26    0x2bd8c  5      
  movl %ebx, %ebx                                      #  27    0x2bd91  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  28    0x2bd93  5      
  movq 0x10(%rsp), %r12                                #  29    0x2bd98  5      
  movq 0x8(%rsp), %rbx                                 #  30    0x2bd9d  5      
  addl $0x18, %esp                                     #  31    0x2bda2  3      
  addq %r15, %rsp                                      #  32    0x2bda5  3      
  popq %r11                                            #  33    0x2bda8  3      
  andl $0xffffffe0, %r11d                              #  34    0x2bdab  7      
  addq %r15, %r11                                      #  35    0x2bdb2  3      
  jmpq %r11                                            #  36    0x2bdb5  3      
  nop                                                  #  37    0x2bdb8  1      
                                                                                
.size _ZN2pp3VarC1EPKc, .-_ZN2pp3VarC1EPKc

