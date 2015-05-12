  .text
  .globl _ZN2pp3VarC1ERKS0_
  .type _ZN2pp3VarC1ERKS0_, @function

#! file-offset 0x2c680
#! rip-offset  0x2c680
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1ERKS0_:                                   #        0x2c680  0      
  movl %esi, %esi                                      #  1     0x2c680  2      
  pushq %rbx                                           #  2     0x2c682  2      
  movl %edi, %ebx                                      #  3     0x2c684  2      
  movl %esi, %esi                                      #  4     0x2c686  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  5     0x2c688  5      
  movl %ebx, %ebx                                      #  6     0x2c68d  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c68f  8      
  movl %ebx, %ebx                                      #  8     0x2c697  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c699  6      
  xchgw %ax, %ax                                       #  10    0x2c69f  3      
  movl %ebx, %ebx                                      #  11    0x2c6a2  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c6a4  5      
  movl %ebx, %ebx                                      #  13    0x2c6a9  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c6ab  6      
  movl %esi, %esi                                      #  15    0x2c6b1  2      
  movq 0x10(%r15,%rsi,1), %rax                         #  16    0x2c6b3  5      
  movl %ebx, %ebx                                      #  17    0x2c6b8  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c6ba  5      
  nop                                                  #  19    0x2c6bf  1      
  jg .L_2c700                                          #  20    0x2c6c0  6      
  nop                                                  #  21    0x2c6c6  1      
  nop                                                  #  22    0x2c6c7  1      
.L_2c6e0:                                              #        0x2c6c8  0      
  popq %rbx                                            #  23    0x2c6c8  2      
  popq %r11                                            #  24    0x2c6ca  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c6cd  7      
  addq %r15, %r11                                      #  26    0x2c6d4  3      
  jmpq %r11                                            #  27    0x2c6d7  3      
  nop                                                  #  28    0x2c6da  1      
  nop                                                  #  29    0x2c6db  1      
.L_2c700:                                              #        0x2c6dc  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c6dc  3      
  nop                                                  #  31    0x2c6df  1      
  nop                                                  #  32    0x2c6e0  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c6e1  5      
  testb %al, %al                                       #  34    0x2c6e6  2      
  jne .L_2c6e0                                         #  35    0x2c6e8  6      
  movl %ebx, %ebx                                      #  36    0x2c6ee  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c6f0  9      
  popq %rbx                                            #  38    0x2c6f9  2      
  popq %r11                                            #  39    0x2c6fb  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c6fe  7      
  addq %r15, %r11                                      #  41    0x2c705  3      
  jmpq %r11                                            #  42    0x2c708  3      
  nop                                                  #  43    0x2c70b  1      
                                                                                
.size _ZN2pp3VarC1ERKS0_, .-_ZN2pp3VarC1ERKS0_

