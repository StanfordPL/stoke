  .text
  .globl _ZN2pp3VarC1ERK6PP_Var
  .type _ZN2pp3VarC1ERK6PP_Var, @function

#! file-offset 0x2c880
#! rip-offset  0x2c880
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1ERK6PP_Var:                               #        0x2c880  0      
  movl %esi, %esi                                      #  1     0x2c880  2      
  pushq %rbx                                           #  2     0x2c882  2      
  movl %edi, %ebx                                      #  3     0x2c884  2      
  movl %esi, %esi                                      #  4     0x2c886  2      
  movq (%r15,%rsi,1), %rax                             #  5     0x2c888  4      
  movl %ebx, %ebx                                      #  6     0x2c88c  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c88e  8      
  movl %ebx, %ebx                                      #  8     0x2c896  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c898  6      
  nop                                                  #  10    0x2c89e  1      
  movl %ebx, %ebx                                      #  11    0x2c89f  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c8a1  5      
  movl %ebx, %ebx                                      #  13    0x2c8a6  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c8a8  6      
  movl %esi, %esi                                      #  15    0x2c8ae  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  16    0x2c8b0  5      
  movl %ebx, %ebx                                      #  17    0x2c8b5  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c8b7  5      
  nop                                                  #  19    0x2c8bc  1      
  jg .L_2c900                                          #  20    0x2c8bd  6      
  nop                                                  #  21    0x2c8c3  1      
  nop                                                  #  22    0x2c8c4  1      
.L_2c8e0:                                              #        0x2c8c5  0      
  popq %rbx                                            #  23    0x2c8c5  2      
  popq %r11                                            #  24    0x2c8c7  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c8ca  7      
  addq %r15, %r11                                      #  26    0x2c8d1  3      
  jmpq %r11                                            #  27    0x2c8d4  3      
  nop                                                  #  28    0x2c8d7  1      
  nop                                                  #  29    0x2c8d8  1      
.L_2c900:                                              #        0x2c8d9  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c8d9  3      
  nop                                                  #  31    0x2c8dc  1      
  nop                                                  #  32    0x2c8dd  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c8de  5      
  testb %al, %al                                       #  34    0x2c8e3  2      
  jne .L_2c8e0                                         #  35    0x2c8e5  6      
  movl %ebx, %ebx                                      #  36    0x2c8eb  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c8ed  9      
  popq %rbx                                            #  38    0x2c8f6  2      
  popq %r11                                            #  39    0x2c8f8  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c8fb  7      
  addq %r15, %r11                                      #  41    0x2c902  3      
  jmpq %r11                                            #  42    0x2c905  3      
  nop                                                  #  43    0x2c908  1      
                                                                                
.size _ZN2pp3VarC1ERK6PP_Var, .-_ZN2pp3VarC1ERK6PP_Var

