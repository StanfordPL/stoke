  .text
  .globl _ZN2pp3VarC1ERKS0_
  .type _ZN2pp3VarC1ERKS0_, @function

#! file-offset 0x2c660
#! rip-offset  0x2c660
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1ERKS0_:                                   #        0x2c660  0      
  movl %esi, %esi                                      #  1     0x2c660  2      
  pushq %rbx                                           #  2     0x2c662  2      
  movl %edi, %ebx                                      #  3     0x2c664  2      
  movl %esi, %esi                                      #  4     0x2c666  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  5     0x2c668  5      
  movl %ebx, %ebx                                      #  6     0x2c66d  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c66f  8      
  movl %ebx, %ebx                                      #  8     0x2c677  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c679  6      
  xchgw %ax, %ax                                       #  10    0x2c67f  3      
  movl %ebx, %ebx                                      #  11    0x2c682  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c684  5      
  movl %ebx, %ebx                                      #  13    0x2c689  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c68b  6      
  movl %esi, %esi                                      #  15    0x2c691  2      
  movq 0x10(%r15,%rsi,1), %rax                         #  16    0x2c693  5      
  movl %ebx, %ebx                                      #  17    0x2c698  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c69a  5      
  nop                                                  #  19    0x2c69f  1      
  jg .L_2c6e0                                          #  20    0x2c6a0  6      
  nop                                                  #  21    0x2c6a6  1      
  nop                                                  #  22    0x2c6a7  1      
.L_2c6c0:                                              #        0x2c6a8  0      
  popq %rbx                                            #  23    0x2c6a8  2      
  popq %r11                                            #  24    0x2c6aa  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c6ad  7      
  addq %r15, %r11                                      #  26    0x2c6b4  3      
  jmpq %r11                                            #  27    0x2c6b7  3      
  nop                                                  #  28    0x2c6ba  1      
  nop                                                  #  29    0x2c6bb  1      
.L_2c6e0:                                              #        0x2c6bc  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c6bc  3      
  nop                                                  #  31    0x2c6bf  1      
  nop                                                  #  32    0x2c6c0  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c6c1  5      
  testb %al, %al                                       #  34    0x2c6c6  2      
  jne .L_2c6c0                                         #  35    0x2c6c8  6      
  movl %ebx, %ebx                                      #  36    0x2c6ce  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c6d0  9      
  popq %rbx                                            #  38    0x2c6d9  2      
  popq %r11                                            #  39    0x2c6db  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c6de  7      
  addq %r15, %r11                                      #  41    0x2c6e5  3      
  jmpq %r11                                            #  42    0x2c6e8  3      
  nop                                                  #  43    0x2c6eb  1      
                                                                                
.size _ZN2pp3VarC1ERKS0_, .-_ZN2pp3VarC1ERKS0_

