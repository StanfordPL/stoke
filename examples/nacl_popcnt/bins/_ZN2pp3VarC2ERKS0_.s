  .text
  .globl _ZN2pp3VarC2ERKS0_
  .type _ZN2pp3VarC2ERKS0_, @function

#! file-offset 0x2c720
#! rip-offset  0x2c720
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKS0_:                                   #        0x2c720  0      
  movl %esi, %esi                                      #  1     0x2c720  2      
  pushq %rbx                                           #  2     0x2c722  2      
  movl %edi, %ebx                                      #  3     0x2c724  2      
  movl %esi, %esi                                      #  4     0x2c726  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  5     0x2c728  5      
  movl %ebx, %ebx                                      #  6     0x2c72d  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c72f  8      
  movl %ebx, %ebx                                      #  8     0x2c737  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c739  6      
  xchgw %ax, %ax                                       #  10    0x2c73f  3      
  movl %ebx, %ebx                                      #  11    0x2c742  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c744  5      
  movl %ebx, %ebx                                      #  13    0x2c749  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c74b  6      
  movl %esi, %esi                                      #  15    0x2c751  2      
  movq 0x10(%r15,%rsi,1), %rax                         #  16    0x2c753  5      
  movl %ebx, %ebx                                      #  17    0x2c758  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c75a  5      
  nop                                                  #  19    0x2c75f  1      
  jg .L_2c7a0                                          #  20    0x2c760  6      
  nop                                                  #  21    0x2c766  1      
  nop                                                  #  22    0x2c767  1      
.L_2c780:                                              #        0x2c768  0      
  popq %rbx                                            #  23    0x2c768  2      
  popq %r11                                            #  24    0x2c76a  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c76d  7      
  addq %r15, %r11                                      #  26    0x2c774  3      
  jmpq %r11                                            #  27    0x2c777  3      
  nop                                                  #  28    0x2c77a  1      
  nop                                                  #  29    0x2c77b  1      
.L_2c7a0:                                              #        0x2c77c  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c77c  3      
  nop                                                  #  31    0x2c77f  1      
  nop                                                  #  32    0x2c780  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c781  5      
  testb %al, %al                                       #  34    0x2c786  2      
  jne .L_2c780                                         #  35    0x2c788  6      
  movl %ebx, %ebx                                      #  36    0x2c78e  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c790  9      
  popq %rbx                                            #  38    0x2c799  2      
  popq %r11                                            #  39    0x2c79b  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c79e  7      
  addq %r15, %r11                                      #  41    0x2c7a5  3      
  jmpq %r11                                            #  42    0x2c7a8  3      
  nop                                                  #  43    0x2c7ab  1      
                                                                                
.size _ZN2pp3VarC2ERKS0_, .-_ZN2pp3VarC2ERKS0_

