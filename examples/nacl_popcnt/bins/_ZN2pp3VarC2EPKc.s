  .text
  .globl _ZN2pp3VarC2EPKc
  .type _ZN2pp3VarC2EPKc, @function

#! file-offset 0x2be80
#! rip-offset  0x2be80
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2EPKc:                                     #        0x2be80  0      
  movq %r12, -0x8(%rsp)                                #  1     0x2be80  5      
  movl %esi, %r12d                                     #  2     0x2be85  3      
  movq %rbx, -0x10(%rsp)                               #  3     0x2be88  5      
  xorl %esi, %esi                                      #  4     0x2be8d  2      
  subl $0x18, %esp                                     #  5     0x2be8f  3      
  addq %r15, %rsp                                      #  6     0x2be92  3      
  movl %edi, %ebx                                      #  7     0x2be95  2      
  testq %r12, %r12                                     #  8     0x2be97  3      
  nop                                                  #  9     0x2be9a  1      
  movl %ebx, %ebx                                      #  10    0x2be9b  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  11    0x2be9d  8      
  je .L_2bee0                                          #  12    0x2bea5  6      
  movl %r12d, %edi                                     #  13    0x2beab  3      
  nop                                                  #  14    0x2beae  1      
  callq .strlen                                        #  15    0x2beaf  5      
  movl %eax, %esi                                      #  16    0x2beb4  2      
  nop                                                  #  17    0x2beb6  1      
  nop                                                  #  18    0x2beb7  1      
.L_2bee0:                                              #        0x2beb8  0      
  movl %r12d, %edi                                     #  19    0x2beb8  3      
  nop                                                  #  20    0x2bebb  1      
  nop                                                  #  21    0x2bebc  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  22    0x2bebd  5      
  movl %ebx, %ebx                                      #  23    0x2bec2  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  24    0x2bec4  6      
  movl %ebx, %ebx                                      #  25    0x2beca  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  26    0x2becc  5      
  movl %ebx, %ebx                                      #  27    0x2bed1  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  28    0x2bed3  5      
  movq 0x10(%rsp), %r12                                #  29    0x2bed8  5      
  movq 0x8(%rsp), %rbx                                 #  30    0x2bedd  5      
  addl $0x18, %esp                                     #  31    0x2bee2  3      
  addq %r15, %rsp                                      #  32    0x2bee5  3      
  popq %r11                                            #  33    0x2bee8  3      
  andl $0xffffffe0, %r11d                              #  34    0x2beeb  7      
  addq %r15, %r11                                      #  35    0x2bef2  3      
  jmpq %r11                                            #  36    0x2bef5  3      
  nop                                                  #  37    0x2bef8  1      
                                                                                
.size _ZN2pp3VarC2EPKc, .-_ZN2pp3VarC2EPKc

