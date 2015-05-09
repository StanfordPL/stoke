  .text
  .globl _ZN2pp3VarC1ERK6PP_Var
  .type _ZN2pp3VarC1ERK6PP_Var, @function

#! file-offset 0x2c7e0
#! rip-offset  0x2c7e0
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1ERK6PP_Var:                               #        0x2c7e0  0      
  movl %esi, %esi                                      #  1     0x2c7e0  2      
  pushq %rbx                                           #  2     0x2c7e2  2      
  movl %edi, %ebx                                      #  3     0x2c7e4  2      
  movl %esi, %esi                                      #  4     0x2c7e6  2      
  movq (%r15,%rsi,1), %rax                             #  5     0x2c7e8  4      
  movl %ebx, %ebx                                      #  6     0x2c7ec  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c7ee  8      
  movl %ebx, %ebx                                      #  8     0x2c7f6  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c7f8  6      
  nop                                                  #  10    0x2c7fe  1      
  movl %ebx, %ebx                                      #  11    0x2c7ff  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c801  5      
  movl %ebx, %ebx                                      #  13    0x2c806  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c808  6      
  movl %esi, %esi                                      #  15    0x2c80e  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  16    0x2c810  5      
  movl %ebx, %ebx                                      #  17    0x2c815  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c817  5      
  nop                                                  #  19    0x2c81c  1      
  jg .L_2c860                                          #  20    0x2c81d  6      
  nop                                                  #  21    0x2c823  1      
  nop                                                  #  22    0x2c824  1      
.L_2c840:                                              #        0x2c825  0      
  popq %rbx                                            #  23    0x2c825  2      
  popq %r11                                            #  24    0x2c827  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c82a  7      
  addq %r15, %r11                                      #  26    0x2c831  3      
  jmpq %r11                                            #  27    0x2c834  3      
  nop                                                  #  28    0x2c837  1      
  nop                                                  #  29    0x2c838  1      
.L_2c860:                                              #        0x2c839  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c839  3      
  nop                                                  #  31    0x2c83c  1      
  nop                                                  #  32    0x2c83d  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c83e  5      
  testb %al, %al                                       #  34    0x2c843  2      
  jne .L_2c840                                         #  35    0x2c845  6      
  movl %ebx, %ebx                                      #  36    0x2c84b  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c84d  9      
  popq %rbx                                            #  38    0x2c856  2      
  popq %r11                                            #  39    0x2c858  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c85b  7      
  addq %r15, %r11                                      #  41    0x2c862  3      
  jmpq %r11                                            #  42    0x2c865  3      
  nop                                                  #  43    0x2c868  1      
                                                                                
.size _ZN2pp3VarC1ERK6PP_Var, .-_ZN2pp3VarC1ERK6PP_Var

