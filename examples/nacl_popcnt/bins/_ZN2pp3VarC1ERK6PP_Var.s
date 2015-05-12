  .text
  .globl _ZN2pp3VarC1ERK6PP_Var
  .type _ZN2pp3VarC1ERK6PP_Var, @function

#! file-offset 0x2c800
#! rip-offset  0x2c800
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1ERK6PP_Var:                               #        0x2c800  0      
  movl %esi, %esi                                      #  1     0x2c800  2      
  pushq %rbx                                           #  2     0x2c802  2      
  movl %edi, %ebx                                      #  3     0x2c804  2      
  movl %esi, %esi                                      #  4     0x2c806  2      
  movq (%r15,%rsi,1), %rax                             #  5     0x2c808  4      
  movl %ebx, %ebx                                      #  6     0x2c80c  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c80e  8      
  movl %ebx, %ebx                                      #  8     0x2c816  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c818  6      
  nop                                                  #  10    0x2c81e  1      
  movl %ebx, %ebx                                      #  11    0x2c81f  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c821  5      
  movl %ebx, %ebx                                      #  13    0x2c826  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c828  6      
  movl %esi, %esi                                      #  15    0x2c82e  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  16    0x2c830  5      
  movl %ebx, %ebx                                      #  17    0x2c835  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c837  5      
  nop                                                  #  19    0x2c83c  1      
  jg .L_2c880                                          #  20    0x2c83d  6      
  nop                                                  #  21    0x2c843  1      
  nop                                                  #  22    0x2c844  1      
.L_2c860:                                              #        0x2c845  0      
  popq %rbx                                            #  23    0x2c845  2      
  popq %r11                                            #  24    0x2c847  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c84a  7      
  addq %r15, %r11                                      #  26    0x2c851  3      
  jmpq %r11                                            #  27    0x2c854  3      
  nop                                                  #  28    0x2c857  1      
  nop                                                  #  29    0x2c858  1      
.L_2c880:                                              #        0x2c859  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c859  3      
  nop                                                  #  31    0x2c85c  1      
  nop                                                  #  32    0x2c85d  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c85e  5      
  testb %al, %al                                       #  34    0x2c863  2      
  jne .L_2c860                                         #  35    0x2c865  6      
  movl %ebx, %ebx                                      #  36    0x2c86b  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c86d  9      
  popq %rbx                                            #  38    0x2c876  2      
  popq %r11                                            #  39    0x2c878  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c87b  7      
  addq %r15, %r11                                      #  41    0x2c882  3      
  jmpq %r11                                            #  42    0x2c885  3      
  nop                                                  #  43    0x2c888  1      
                                                                                
.size _ZN2pp3VarC1ERK6PP_Var, .-_ZN2pp3VarC1ERK6PP_Var

