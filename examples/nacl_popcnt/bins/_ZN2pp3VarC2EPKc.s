  .text
  .globl _ZN2pp3VarC2EPKc
  .type _ZN2pp3VarC2EPKc, @function

#! file-offset 0x2bde0
#! rip-offset  0x2bde0
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2EPKc:                                     #        0x2bde0  0      
  movq %r12, -0x8(%rsp)                                #  1     0x2bde0  5      
  movl %esi, %r12d                                     #  2     0x2bde5  3      
  movq %rbx, -0x10(%rsp)                               #  3     0x2bde8  5      
  xorl %esi, %esi                                      #  4     0x2bded  2      
  subl $0x18, %esp                                     #  5     0x2bdef  3      
  addq %r15, %rsp                                      #  6     0x2bdf2  3      
  movl %edi, %ebx                                      #  7     0x2bdf5  2      
  testq %r12, %r12                                     #  8     0x2bdf7  3      
  nop                                                  #  9     0x2bdfa  1      
  movl %ebx, %ebx                                      #  10    0x2bdfb  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  11    0x2bdfd  8      
  je .L_2be40                                          #  12    0x2be05  6      
  movl %r12d, %edi                                     #  13    0x2be0b  3      
  nop                                                  #  14    0x2be0e  1      
  callq .strlen                                        #  15    0x2be0f  5      
  movl %eax, %esi                                      #  16    0x2be14  2      
  nop                                                  #  17    0x2be16  1      
  nop                                                  #  18    0x2be17  1      
.L_2be40:                                              #        0x2be18  0      
  movl %r12d, %edi                                     #  19    0x2be18  3      
  nop                                                  #  20    0x2be1b  1      
  nop                                                  #  21    0x2be1c  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  22    0x2be1d  5      
  movl %ebx, %ebx                                      #  23    0x2be22  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  24    0x2be24  6      
  movl %ebx, %ebx                                      #  25    0x2be2a  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  26    0x2be2c  5      
  movl %ebx, %ebx                                      #  27    0x2be31  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  28    0x2be33  5      
  movq 0x10(%rsp), %r12                                #  29    0x2be38  5      
  movq 0x8(%rsp), %rbx                                 #  30    0x2be3d  5      
  addl $0x18, %esp                                     #  31    0x2be42  3      
  addq %r15, %rsp                                      #  32    0x2be45  3      
  popq %r11                                            #  33    0x2be48  3      
  andl $0xffffffe0, %r11d                              #  34    0x2be4b  7      
  addq %r15, %r11                                      #  35    0x2be52  3      
  jmpq %r11                                            #  36    0x2be55  3      
  nop                                                  #  37    0x2be58  1      
                                                                                
.size _ZN2pp3VarC2EPKc, .-_ZN2pp3VarC2EPKc

