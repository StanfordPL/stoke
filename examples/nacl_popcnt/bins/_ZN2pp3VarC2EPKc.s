  .text
  .globl _ZN2pp3VarC2EPKc
  .type _ZN2pp3VarC2EPKc, @function

#! file-offset 0x2be00
#! rip-offset  0x2be00
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2EPKc:                                     #        0x2be00  0      
  movq %r12, -0x8(%rsp)                                #  1     0x2be00  5      
  movl %esi, %r12d                                     #  2     0x2be05  3      
  movq %rbx, -0x10(%rsp)                               #  3     0x2be08  5      
  xorl %esi, %esi                                      #  4     0x2be0d  2      
  subl $0x18, %esp                                     #  5     0x2be0f  3      
  addq %r15, %rsp                                      #  6     0x2be12  3      
  movl %edi, %ebx                                      #  7     0x2be15  2      
  testq %r12, %r12                                     #  8     0x2be17  3      
  nop                                                  #  9     0x2be1a  1      
  movl %ebx, %ebx                                      #  10    0x2be1b  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  11    0x2be1d  8      
  je .L_2be60                                          #  12    0x2be25  6      
  movl %r12d, %edi                                     #  13    0x2be2b  3      
  nop                                                  #  14    0x2be2e  1      
  callq .strlen                                        #  15    0x2be2f  5      
  movl %eax, %esi                                      #  16    0x2be34  2      
  nop                                                  #  17    0x2be36  1      
  nop                                                  #  18    0x2be37  1      
.L_2be60:                                              #        0x2be38  0      
  movl %r12d, %edi                                     #  19    0x2be38  3      
  nop                                                  #  20    0x2be3b  1      
  nop                                                  #  21    0x2be3c  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  22    0x2be3d  5      
  movl %ebx, %ebx                                      #  23    0x2be42  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  24    0x2be44  6      
  movl %ebx, %ebx                                      #  25    0x2be4a  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  26    0x2be4c  5      
  movl %ebx, %ebx                                      #  27    0x2be51  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  28    0x2be53  5      
  movq 0x10(%rsp), %r12                                #  29    0x2be58  5      
  movq 0x8(%rsp), %rbx                                 #  30    0x2be5d  5      
  addl $0x18, %esp                                     #  31    0x2be62  3      
  addq %r15, %rsp                                      #  32    0x2be65  3      
  popq %r11                                            #  33    0x2be68  3      
  andl $0xffffffe0, %r11d                              #  34    0x2be6b  7      
  addq %r15, %r11                                      #  35    0x2be72  3      
  jmpq %r11                                            #  36    0x2be75  3      
  nop                                                  #  37    0x2be78  1      
                                                                                
.size _ZN2pp3VarC2EPKc, .-_ZN2pp3VarC2EPKc

