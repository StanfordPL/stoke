  .text
  .globl _ZN2pp3VarC2ERKS0_
  .type _ZN2pp3VarC2ERKS0_, @function

#! file-offset 0x2c7c0
#! rip-offset  0x2c7c0
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKS0_:                                   #        0x2c7c0  0      
  movl %esi, %esi                                      #  1     0x2c7c0  2      
  pushq %rbx                                           #  2     0x2c7c2  2      
  movl %edi, %ebx                                      #  3     0x2c7c4  2      
  movl %esi, %esi                                      #  4     0x2c7c6  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  5     0x2c7c8  5      
  movl %ebx, %ebx                                      #  6     0x2c7cd  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c7cf  8      
  movl %ebx, %ebx                                      #  8     0x2c7d7  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c7d9  6      
  xchgw %ax, %ax                                       #  10    0x2c7df  3      
  movl %ebx, %ebx                                      #  11    0x2c7e2  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c7e4  5      
  movl %ebx, %ebx                                      #  13    0x2c7e9  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c7eb  6      
  movl %esi, %esi                                      #  15    0x2c7f1  2      
  movq 0x10(%r15,%rsi,1), %rax                         #  16    0x2c7f3  5      
  movl %ebx, %ebx                                      #  17    0x2c7f8  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c7fa  5      
  nop                                                  #  19    0x2c7ff  1      
  jg .L_2c840                                          #  20    0x2c800  6      
  nop                                                  #  21    0x2c806  1      
  nop                                                  #  22    0x2c807  1      
.L_2c820:                                              #        0x2c808  0      
  popq %rbx                                            #  23    0x2c808  2      
  popq %r11                                            #  24    0x2c80a  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c80d  7      
  addq %r15, %r11                                      #  26    0x2c814  3      
  jmpq %r11                                            #  27    0x2c817  3      
  nop                                                  #  28    0x2c81a  1      
  nop                                                  #  29    0x2c81b  1      
.L_2c840:                                              #        0x2c81c  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c81c  3      
  nop                                                  #  31    0x2c81f  1      
  nop                                                  #  32    0x2c820  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c821  5      
  testb %al, %al                                       #  34    0x2c826  2      
  jne .L_2c820                                         #  35    0x2c828  6      
  movl %ebx, %ebx                                      #  36    0x2c82e  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c830  9      
  popq %rbx                                            #  38    0x2c839  2      
  popq %r11                                            #  39    0x2c83b  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c83e  7      
  addq %r15, %r11                                      #  41    0x2c845  3      
  jmpq %r11                                            #  42    0x2c848  3      
  nop                                                  #  43    0x2c84b  1      
                                                                                
.size _ZN2pp3VarC2ERKS0_, .-_ZN2pp3VarC2ERKS0_

