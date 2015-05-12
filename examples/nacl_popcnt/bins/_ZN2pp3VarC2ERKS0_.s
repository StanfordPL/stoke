  .text
  .globl _ZN2pp3VarC2ERKS0_
  .type _ZN2pp3VarC2ERKS0_, @function

#! file-offset 0x2c740
#! rip-offset  0x2c740
#! capacity    192 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKS0_:                                   #        0x2c740  0      
  movl %esi, %esi                                      #  1     0x2c740  2      
  pushq %rbx                                           #  2     0x2c742  2      
  movl %edi, %ebx                                      #  3     0x2c744  2      
  movl %esi, %esi                                      #  4     0x2c746  2      
  movq 0x8(%r15,%rsi,1), %rax                          #  5     0x2c748  5      
  movl %ebx, %ebx                                      #  6     0x2c74d  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2c74f  8      
  movl %ebx, %ebx                                      #  8     0x2c757  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  9     0x2c759  6      
  xchgw %ax, %ax                                       #  10    0x2c75f  3      
  movl %ebx, %ebx                                      #  11    0x2c762  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  12    0x2c764  5      
  movl %ebx, %ebx                                      #  13    0x2c769  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                          #  14    0x2c76b  6      
  movl %esi, %esi                                      #  15    0x2c771  2      
  movq 0x10(%r15,%rsi,1), %rax                         #  16    0x2c773  5      
  movl %ebx, %ebx                                      #  17    0x2c778  2      
  movq %rax, 0x10(%r15,%rbx,1)                         #  18    0x2c77a  5      
  nop                                                  #  19    0x2c77f  1      
  jg .L_2c7c0                                          #  20    0x2c780  6      
  nop                                                  #  21    0x2c786  1      
  nop                                                  #  22    0x2c787  1      
.L_2c7a0:                                              #        0x2c788  0      
  popq %rbx                                            #  23    0x2c788  2      
  popq %r11                                            #  24    0x2c78a  3      
  andl $0xffffffe0, %r11d                              #  25    0x2c78d  7      
  addq %r15, %r11                                      #  26    0x2c794  3      
  jmpq %r11                                            #  27    0x2c797  3      
  nop                                                  #  28    0x2c79a  1      
  nop                                                  #  29    0x2c79b  1      
.L_2c7c0:                                              #        0x2c79c  0      
  leal 0x8(%rbx), %edi                                 #  30    0x2c79c  3      
  nop                                                  #  31    0x2c79f  1      
  nop                                                  #  32    0x2c7a0  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var  #  33    0x2c7a1  5      
  testb %al, %al                                       #  34    0x2c7a6  2      
  jne .L_2c7a0                                         #  35    0x2c7a8  6      
  movl %ebx, %ebx                                      #  36    0x2c7ae  2      
  movl $0x1, 0x8(%r15,%rbx,1)                          #  37    0x2c7b0  9      
  popq %rbx                                            #  38    0x2c7b9  2      
  popq %r11                                            #  39    0x2c7bb  3      
  andl $0xffffffe0, %r11d                              #  40    0x2c7be  7      
  addq %r15, %r11                                      #  41    0x2c7c5  3      
  jmpq %r11                                            #  42    0x2c7c8  3      
  nop                                                  #  43    0x2c7cb  1      
                                                                                
.size _ZN2pp3VarC2ERKS0_, .-_ZN2pp3VarC2ERKS0_

