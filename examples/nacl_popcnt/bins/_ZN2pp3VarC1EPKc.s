  .text
  .globl _ZN2pp3VarC1EPKc
  .type _ZN2pp3VarC1EPKc, @function

#! file-offset 0x2bdc0
#! rip-offset  0x2bdc0
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1EPKc:                                     #        0x2bdc0  0      
  movq %r12, -0x8(%rsp)                                #  1     0x2bdc0  5      
  movl %esi, %r12d                                     #  2     0x2bdc5  3      
  movq %rbx, -0x10(%rsp)                               #  3     0x2bdc8  5      
  xorl %esi, %esi                                      #  4     0x2bdcd  2      
  subl $0x18, %esp                                     #  5     0x2bdcf  3      
  addq %r15, %rsp                                      #  6     0x2bdd2  3      
  movl %edi, %ebx                                      #  7     0x2bdd5  2      
  testq %r12, %r12                                     #  8     0x2bdd7  3      
  nop                                                  #  9     0x2bdda  1      
  movl %ebx, %ebx                                      #  10    0x2bddb  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  11    0x2bddd  8      
  je .L_2be20                                          #  12    0x2bde5  6      
  movl %r12d, %edi                                     #  13    0x2bdeb  3      
  nop                                                  #  14    0x2bdee  1      
  callq .strlen                                        #  15    0x2bdef  5      
  movl %eax, %esi                                      #  16    0x2bdf4  2      
  nop                                                  #  17    0x2bdf6  1      
  nop                                                  #  18    0x2bdf7  1      
.L_2be20:                                              #        0x2bdf8  0      
  movl %r12d, %edi                                     #  19    0x2bdf8  3      
  nop                                                  #  20    0x2bdfb  1      
  nop                                                  #  21    0x2bdfc  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  22    0x2bdfd  5      
  movl %ebx, %ebx                                      #  23    0x2be02  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  24    0x2be04  6      
  movl %ebx, %ebx                                      #  25    0x2be0a  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  26    0x2be0c  5      
  movl %ebx, %ebx                                      #  27    0x2be11  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  28    0x2be13  5      
  movq 0x10(%rsp), %r12                                #  29    0x2be18  5      
  movq 0x8(%rsp), %rbx                                 #  30    0x2be1d  5      
  addl $0x18, %esp                                     #  31    0x2be22  3      
  addq %r15, %rsp                                      #  32    0x2be25  3      
  popq %r11                                            #  33    0x2be28  3      
  andl $0xffffffe0, %r11d                              #  34    0x2be2b  7      
  addq %r15, %r11                                      #  35    0x2be32  3      
  jmpq %r11                                            #  36    0x2be35  3      
  nop                                                  #  37    0x2be38  1      
                                                                                
.size _ZN2pp3VarC1EPKc, .-_ZN2pp3VarC1EPKc

