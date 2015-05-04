  .text
  .globl _ZN2pp3VarC2ERK6PP_Var
  .type _ZN2pp3VarC2ERK6PP_Var, @function

#! file-offset 0x2c940
#! rip-offset  0x2c940
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2ERK6PP_Var:                               #        0x2c940  0      
  movl %esi, %esi                                      #  1     0x2c940  2      
  pushq %rbx                                           #  2     0x2c942  2      
  movl %edi, %ebx                                      #  3     0x2c944  2      
  movl %esi, %esi                                      #  4     0x2c946  2      
  movq (%r15,%rsi,1), %rax                             #  5     0x2c948  4      
  movl %ebx, %ebx                                      #  6     0x2c94c  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c94e  8      
  movl %ebx, %ebx                                      #  8     0x2c956  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c958  6      
  nop                                                  #  10    0x2c95e  1      
  movl %ebx, %ebx                                      #  11    0x2c95f  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c961  5      
  movl %ebx, %ebx                                      #  13    0x2c966  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c968  6      
  movl %esi, %esi                                      #  15    0x2c96e  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  16    0x2c970  5      
  movl %ebx, %ebx                                      #  17    0x2c975  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c977  5      
  nop                                                  #  19    0x2c97c  1      
  jg .L_2c9c0                                          #  20    0x2c97d  6      
  nop                                                  #  21    0x2c983  1      
  nop                                                  #  22    0x2c984  1      
.L_2c9a0:                                              #        0x2c985  0      
  popq %rbx                                            #  23    0x2c985  2      
  popq %r11                                            #  24    0x2c987  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c98a  7      
  addq %r15, %r11                                      #  26    0x2c991  3      
  jmpq %r11                                            #  27    0x2c994  3      
  nop                                                  #  28    0x2c997  1      
  nop                                                  #  29    0x2c998  1      
.L_2c9c0:                                              #        0x2c999  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c999  3      
  nop                                                  #  31    0x2c99c  1      
  nop                                                  #  32    0x2c99d  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c99e  5      
  testb %al, %al                                       #  34    0x2c9a3  2      
  jne .L_2c9a0                                         #  35    0x2c9a5  6      
  movl %ebx, %ebx                                      #  36    0x2c9ab  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c9ad  9      
  popq %rbx                                            #  38    0x2c9b6  2      
  popq %r11                                            #  39    0x2c9b8  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c9bb  7      
  addq %r15, %r11                                      #  41    0x2c9c2  3      
  jmpq %r11                                            #  42    0x2c9c5  3      
  nop                                                  #  43    0x2c9c8  1      
                                                                                
.size _ZN2pp3VarC2ERK6PP_Var, .-_ZN2pp3VarC2ERK6PP_Var

